<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FcmToken;

class FcmTokenController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'fcm_token' => 'required|string'
        ]);

        $user = auth()->user();

        FcmToken::updateOrCreate(
            ['fcm_token' => $request->fcm_token],
            [
                'admin_id' => $user->isAdmin() ? $user->id : null,
                'guru_id'  => $user->isGuru() ? $user->id : null,
                'siswa_id' => $user->isMurid() ? $user->id : null,
                'device_type' => 'android',
                'is_active' => true
            ]
        );

        return response()->json([
            'message' => 'Token saved'
        ]);
    }

    public function deactivate(Request $request)
    {
        $request->validate([
            'fcm_token' => 'required'
        ]);

        FcmToken::where('fcm_token', $request->fcm_token)
            ->update(['is_active' => false]);

        return response()->json([
            'message' => 'Token deactivated'
        ]);
    }
}