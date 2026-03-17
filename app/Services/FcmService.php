<?php

namespace App\Services;

use Kreait\Firebase\Factory;
use Kreait\Firebase\Messaging\CloudMessage;
use Kreait\Firebase\Messaging\Notification;
use App\Models\FcmToken;
use Illuminate\Support\Facades\Log;

class FcmService
{
    protected static function getMessaging()
    {
        try {
            $credentials = env('FIREBASE_CREDENTIALS_JSON');

            if (!$credentials) {
                Log::error("FCM: Credentials not found");
                return null;
            }

            $factory = (new Factory)
                ->withServiceAccount(json_decode($credentials, true));

            return $factory->createMessaging();

        } catch (\Exception $e) {
            Log::error("FCM INIT ERROR: " . $e->getMessage());
            return null;
        }
    }

    // ================= MULTICAST (BEST) =================
    public static function sendPush($tokens, $title, $body)
    {
        if (empty($tokens)) {
            Log::warning("FCM: No tokens found");
            return;
        }

        $messaging = self::getMessaging();
        if (!$messaging) return;

        try {

            $message = CloudMessage::new()
                ->withNotification(Notification::create($title, $body));

            $report = $messaging->sendMulticast($message, $tokens);

            Log::info("FCM SUCCESS: " . $report->successes()->count());
            Log::info("FCM FAIL: " . $report->failures()->count());

            // 🔥 OPTIONAL: hapus token invalid
            foreach ($report->failures()->getItems() as $failure) {
                $invalidToken = $failure->target()->value();
                FcmToken::where('fcm_token', $invalidToken)->update([
                    'is_active' => false
                ]);
            }

        } catch (\Exception $e) {
            Log::error("FCM SEND ERROR: " . $e->getMessage());
        }
    }

    // ================= ADMIN =================
    public static function sendToAdmins($title, $body)
    {
        $tokens = FcmToken::whereNotNull("admin_id")
            ->where("is_active", true)
            ->pluck("fcm_token")
            ->toArray();

        self::sendPush($tokens, $title, $body);
    }

    // ================= USER =================
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

    // ================= DIRECT =================
    public static function sendToTokens($tokens, $title, $body)
    {
        self::sendPush($tokens, $title, $body);
    }
}