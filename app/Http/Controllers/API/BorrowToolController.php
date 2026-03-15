<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\BorrowTool;
use App\Models\Tool;
use App\Models\User;
use App\Models\Notification;
use Illuminate\Http\Request;
use App\Services\FcmService;

class BorrowToolController extends Controller
{
    // ================= LIST ALL =================
    public function index()
    {
        return BorrowTool::with(['user','tool'])
            ->orderBy('created_at','desc')
            ->get();
    }

    // ================= STORE =================
    public function store(Request $request)
    {
        $request->validate([
            'tool_id' => 'required|exists:tools,id',
            'borrow_date' => 'required|date',
            'return_date' => 'required|date|after:borrow_date'
        ]);

        $tool = Tool::findOrFail($request->tool_id);

        if ($tool->status !== 'tersedia') {
            return response()->json([
                'message' => 'Alat tidak tersedia'
            ], 400);
        }

        $borrow = BorrowTool::create([
            'user_id' => auth()->id(),
            'tool_id' => $tool->id,
            'borrow_date' => $request->borrow_date,
            'return_date' => $request->return_date,
            'status' => 'pending'
        ]);

        $tool->update([
            'status' => 'pending'
        ]);

        // NOTIFIKASI KE SEMUA ADMIN
        $admins = User::whereHas('role', function($q){
            $q->where('name','admin');
        })->get();

        foreach ($admins as $admin) {
            Notification::create([
                'user_id' => $admin->id,
                'message' => 'Peminjaman alat baru dari ' . auth()->user()->username,
                'is_read' => false
            ]);
        }

        FcmService::sendToAdmins(
            'Peminjaman Alat Baru',
            'Ada peminjaman alat baru dari ' . auth()->user()->username
        );

        return response()->json($borrow, 201);
    }

    // ================= APPROVE =================
    public function approve($id)
    {
        $borrow = BorrowTool::with('tool')->findOrFail($id);

        if ($borrow->status !== 'pending') {
            return response()->json([
                'message' => 'Sudah diproses'
            ], 400);
        }

        $borrow->update([
            'status' => 'approved',
            'verified_by' => auth()->id()
        ]);

        if ($borrow->tool) {
            $borrow->tool->update([
                'status' => 'dipinjam'
            ]);
        }

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman alat disetujui',
            'is_read' => false
        ]);

        FcmService::sendToUser(
            $borrow->user_id,
            'Peminjaman Alat Disetujui',
            'Peminjaman alat Anda disetujui oleh admin'
        );

        return response()->json([
            'message' => 'Tool approved successfully'
        ]);
    }
    // ================= REJECT =================
    public function reject($id)
    {
        $borrow = BorrowTool::with('tool')->findOrFail($id);

        if ($borrow->status !== 'pending') {
            return response()->json([
                'message' => 'Sudah diproses'
            ], 400);
        }

        $borrow->update([
            'status' => 'rejected',
            'verified_by' => auth()->id()
        ]);

        if ($borrow->tool) {
            $borrow->tool->update([
                'status' => 'tersedia'
            ]);
        }

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman alat ditolak',
            'is_read' => false
        ]);

        FcmService::sendToUser(
            $borrow->user_id,
            'Peminjaman Alat Ditolak',
            'Peminjaman alat Anda ditolak oleh admin'
        );

        return response()->json([
            'message' => 'Tool rejected successfully'
        ]);
    }

    // ================= RETURN =================
    public function returnTool($id)
    {
        $borrow = BorrowTool::with('tool')->findOrFail($id);

        if ($borrow->status !== 'approved') {
            return response()->json([
                'message' => 'Belum disetujui'
            ], 400);
        }

        $borrow->update([
            'status' => 'returned'
        ]);

        if ($borrow->tool) {
            $borrow->tool->update([
                'status' => 'tersedia'
            ]);
        }

        return response()->json([
            'message' => 'Tool returned successfully'
        ]);
    }
}