<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use App\Models\FcmToken;

class FcmService
{
    public static function sendPush($tokens, $title, $body)
    {
        if (count($tokens) == 0) return;

        Http::withHeaders([
            'Authorization' => 'key=' . env("FCM_SERVER_KEY"),
            'Content-Type' => 'application/json'
        ])->post("https://fcm.googleapis.com/fcm/send", [
            "registration_ids" => $tokens,
            "notification" => [
                "title" => $title,
                "body" => $body
            ],
            "priority" => "high"
        ]);
    }

    public static function sendToAdmins($title, $body)
    {
        $tokens = FcmToken::whereNotNull("admin_id")
            ->where("is_active", true)
            ->pluck("fcm_token")
            ->toArray();

        self::sendPush($tokens, $title, $body);
    }

    public static function sendToUser($userId, $title, $body)
    {
        $tokens = FcmToken::where(function ($q) use ($userId) {
            $q->where("siswa_id", $userId)
                ->orWhere("guru_id", $userId);
        })
            ->where("is_active", true)
            ->pluck("fcm_token")
            ->toArray();

        self::sendPush($tokens, $title, $body);
    }
}