<?php

namespace App\Services;

use Kreait\Firebase\Factory;
use App\Models\FcmToken;
use Illuminate\Support\Facades\Log;

class FcmService
{
    protected static function getMessaging()
    {
        try {
            $factory = (new Factory)
                ->withServiceAccount(
                    json_decode(env('FIREBASE_CREDENTIALS_JSON'), true)
                );

            return $factory->createMessaging();

        } catch (\Exception $e) {
            Log::error("FCM INIT ERROR: " . $e->getMessage());
            return null;
        }
    }

    public static function sendPush($tokens, $title, $body)
    {
        if (empty($tokens)) {
            Log::warning("FCM: No tokens found");
            return;
        }

        $messaging = self::getMessaging();

        if (!$messaging) return;

        foreach ($tokens as $token) {
            try {
                $messaging->send([
                    'token' => $token,
                    'notification' => [
                        'title' => $title,
                        'body' => $body
                    ],
                ]);

                Log::info("FCM SENT TO: " . $token);

            } catch (\Exception $e) {
                Log::error("FCM SEND ERROR: " . $e->getMessage());
            }
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

    // 🔥 TEST DIRECT TOKEN
    public static function sendToTokens($tokens, $title, $body)
    {
        self::sendPush($tokens, $title, $body);
    }
}