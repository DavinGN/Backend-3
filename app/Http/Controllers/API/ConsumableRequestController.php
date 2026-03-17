<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\ConsumableRequest;
use App\Models\Consumable;
use App\Models\User;
use App\Models\Notification;
use Illuminate\Http\Request;
use App\Services\FcmService;

class ConsumableRequestController extends Controller
{
    public function index()
    {
        return ConsumableRequest::with(['user','consumable'])
            ->orderBy('created_at','desc')
            ->get();
    }

    public function store(Request $request)
    {
        $request->validate([
            'consumable_id' => 'required|exists:consumables,id',
            'quantity' => 'required|integer|min:1'
        ]);

        $consumable = Consumable::findOrFail($request->consumable_id);

        if ($consumable->stock < $request->quantity) {
            return response()->json(['message' => 'Stock tidak cukup'], 400);
        }

        $requestData = ConsumableRequest::create([
            'user_id' => auth()->id(),
            'consumable_id' => $consumable->id,
            'quantity' => $request->quantity,
            'status' => 'pending'
        ]);

        $admins = User::whereHas('role', fn($q) => $q->where('name','admin'))->get();

        foreach ($admins as $admin) {
            Notification::create([
                'user_id' => $admin->id,
                'message' => 'Permintaan barang dari ' . auth()->user()->username,
                'is_read' => false
            ]);
        }

        try {
            FcmService::sendToAdmins(
                'Permintaan Barang Baru',
                'Ada permintaan barang baru dari ' . auth()->user()->username
            );
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
        }

        return response()->json($requestData, 201);
    }

    public function approve($id)
    {
        $requestData = ConsumableRequest::with('consumable')->findOrFail($id);

        if ($requestData->status !== 'pending') {
            return response()->json(['message' => 'Request sudah diproses'], 400);
        }

        if ($requestData->consumable->stock < $requestData->quantity) {
            return response()->json(['message' => 'Stock tidak cukup'], 400);
        }

        $requestData->consumable->decrement('stock', $requestData->quantity);

        $requestData->update([
            'status' => 'approved',
            'verified_by' => auth()->id()
        ]);

        Notification::create([
            'user_id' => $requestData->user_id,
            'message' => 'Permintaan barang disetujui',
            'is_read' => false
        ]);

        try {
            FcmService::sendToUser(
                $requestData->user_id,
                'Permintaan Barang Disetujui',
                'Permintaan barang Anda disetujui oleh admin'
            );
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
        }

        return response()->json(['message' => 'Request approved']);
    }

    public function reject($id)
    {
        $requestData = ConsumableRequest::findOrFail($id);

        if ($requestData->status !== 'pending') {
            return response()->json(['message' => 'Request sudah diproses'], 400);
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

        try {
            FcmService::sendToUser(
                $requestData->user_id,
                'Permintaan Barang Ditolak',
                'Permintaan barang Anda ditolak oleh admin'
            );
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
        }

        return response()->json(['message' => 'Request rejected']);
    }
}