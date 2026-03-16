<?php

namespace App\Services;

use Kreait\Firebase\Factory;
use App\Models\FcmToken;

class FcmService
{
    public static function sendPush($tokens, $title, $body)
    {
        if (count($tokens) == 0) return;

        $factory = (new Factory)
            ->withServiceAccount(storage_path('app/firebase/service-account.json'));

        $messaging = $factory->createMessaging();

        foreach ($tokens as $token) {

            $message = [
                'token' => $token,
                'notification' => [
                    'title' => $title,
                    'body' => $body
                ]
            ];

            $messaging->send($message);

        }
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