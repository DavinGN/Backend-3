<?php

namespace App\Services;

use Kreait\Firebase\Factory;
use App\Models\FcmToken;
use Illuminate\Support\Facades\Log;

class FcmService
{
    public static function sendPush($tokens, $title, $body)
    {
        if (count($tokens) == 0) return;

        try {

            $factory = (new Factory)
                ->withServiceAccount(
                    base_path(config('firebase.projects.app.credentials'))
                );

            $messaging = $factory->createMessaging();

            foreach ($tokens as $token) {

                try {

                    $messaging->send([
                        'token' => $token,
                        'notification' => [
                            'title' => $title,
                            'body' => $body
                        ]
                    ]);

                } catch (\Exception $e) {
                    Log::error("FCM Send Error: " . $e->getMessage());
                }

            }

        } catch (\Exception $e) {

            Log::error("FCM Init Error: " . $e->getMessage());

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

    // UNTUK TEST
    public static function sendToTokens($tokens, $title, $body)
    {
        self::sendPush($tokens, $title, $body);
    }
}