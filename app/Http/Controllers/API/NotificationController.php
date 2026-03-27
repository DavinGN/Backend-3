<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Notification;

class NotificationController extends Controller
{
    // LIST NOTIFIKASI USER LOGIN
    public function index()
    {
        return Notification::where('user_id', auth()->id())
            ->orderBy('created_at','desc')
            ->get();
    }

    // MARK AS READ
    public function markAsRead($id)
    {
        $notif = Notification::where('user_id', auth()->id())
            ->findOrFail($id);

        $notif->update([
            'is_read' => true
        ]);

        return response()->json(['message' => 'Notification read']);
    }

    // COUNT UNREAD
    public function countUnread()
    {
        return response()->json([
            'total' => Notification::where('user_id', auth()->id())
                        ->where('is_read', false)
                        ->count()
        ]);
    }

    public function unreadCount()
    {
        return response()->json([
            'count' => Notification::where('user_id', auth()->id())
                ->where('is_read', false)
                ->count()
        ]);
    }

    public function sendToUser(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'message' => 'required|string'
        ]);

        // simpan ke database
        Notification::create([
            'user_id' => $request->user_id,
            'message' => $request->message,
            'is_read' => false
        ]);

        // kirim FCM
        try {
            \App\Services\FcmService::sendToUser(
                $request->user_id,
                '📢 Pesan dari Admin',
                $request->message
            );
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
        }

        return response()->json([
            'message' => 'Notification sent'
        ]);
    }
}