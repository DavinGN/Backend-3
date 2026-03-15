<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\ConsumableRequest;
use App\Models\Consumable;
use Illuminate\Http\Request;
use App\Services\FcmService;

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

        FcmService::sendToAdmins(
            'Permintaan Barang Baru',
            'Ada permintaan barang baru dari ' . auth()->user()->username
        );

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

        if ($consumable->stock < $requestData->quantity) {
            return response()->json([
                'message' => 'Stock tidak cukup'
            ], 400);
        }

        $consumable->decrement('stock', $requestData->quantity);

        $requestData->update([
            'status' => 'approved',
            'verified_by' => auth()->id()
        ]);

        Notification::create([
            'user_id' => $requestData->user_id,
            'message' => 'Permintaan barang disetujui',
            'is_read' => false
        ]);

        FcmService::sendToUser(
            $requestData->user_id,
            'Permintaan Barang Disetujui',
            'Permintaan barang Anda disetujui oleh admin'
        );

        return response()->json([
            'message' => 'Request approved'
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

        Notification::create([
            'user_id' => $requestData->user_id,
            'message' => 'Permintaan barang ditolak',
            'is_read' => false
        ]);

        FcmService::sendToUser(
            $requestData->user_id,
            'Permintaan Barang Ditolak',
            'Permintaan barang Anda ditolak oleh admin'
        );

        return response()->json([
            'message' => 'Request rejected'
        ]);
    }
}