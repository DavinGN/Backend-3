<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\ConsumableRequest;
use App\Models\Consumable;
use Illuminate\Http\Request;

class ConsumableRequestController extends Controller
{
    // ================= LIST ALL (ADMIN) =================
    public function index()
    {
        return ConsumableRequest::with(['user','consumable'])
            ->orderBy('created_at','desc')
            ->get();
    }

    // ================= USER REQUEST (GURU ONLY) =================
    public function store(Request $request)
    {
        $request->validate([
            'consumable_id' => 'required|exists:consumables,id',
            'quantity' => 'required|integer|min:1'
        ]);

        $consumable = Consumable::findOrFail($request->consumable_id);

        // CEK STOCK
        if ($consumable->stock < $request->quantity) {
            return response()->json([
                'message' => 'Stock tidak cukup'
            ], 400);
        }

        $requestData = ConsumableRequest::create([
            'user_id' => auth()->id(),
            'consumable_id' => $consumable->id,
            'quantity' => $request->quantity,
            'status' => 'pending'
        ]);

        // NOTIFIKASI KE SEMUA ADMIN
        $admins = User::whereHas('role', function($q){
            $q->where('name','admin');
        })->get();

        foreach ($admins as $admin) {
            Notification::create([
                'user_id' => $admin->id,
                'message' => 'Permintaan barang dari ' . auth()->user()->username,
                'is_read' => false
            ]);
        }

        return response()->json($requestData, 201);
    }

    // ================= APPROVE =================
    public function approve($id)
    {
        $requestData = ConsumableRequest::with('consumable')->findOrFail($id);

        if ($requestData->status !== 'pending') {
            return response()->json([
                'message' => 'Request sudah diproses'
            ], 400);
        }

        $consumable = $requestData->consumable;

        // CEK LAGI STOCK
        if ($consumable->stock < $requestData->quantity) {
            return response()->json([
                'message' => 'Stock tidak cukup'
            ], 400);
        }

        // KURANGI STOCK
        $consumable->decrement('stock', $requestData->quantity);

        // UPDATE STATUS
        $requestData->update([
            'status' => 'approved',
            'verified_by' => auth()->id()
        ]);

        return response()->json([
            'message' => 'Request approved'
        ]);

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Permintaan barang disetujui',
            'is_read' => false
        ]);
    }

    // ================= REJECT =================
    public function reject($id)
    {
        $requestData = ConsumableRequest::findOrFail($id);

        if ($requestData->status !== 'pending') {
            return response()->json([
                'message' => 'Request sudah diproses'
            ], 400);
        }

        $requestData->update([
            'status' => 'rejected',
            'verified_by' => auth()->id()
        ]);

        return response()->json([
            'message' => 'Request rejected'
        ]);

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman buku ditolak',
            'is_read' => false
        ]);
    }
}