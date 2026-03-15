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
            'fcm_token' => 'required|string',
            'device_type' => 'required|string'
        ]);

        $user = auth()->user();

        $token = FcmToken::updateOrCreate(
            [
                'fcm_token' => $request->fcm_token
            ],
            [
                'siswa_id' => $user->role == 'murid' ? $user->id : null,
                'guru_id' => $user->role == 'guru' ? $user->id : null,
                'admin_id' => $user->role == 'admin' ? $user->id : null,
                'device_type' => $request->device_type,
                'is_active' => true,
                'last_used_at' => now()
            ]
        );

        return response()->json([
            "message" => "Token saved",
            "data" => $token
        ]);
    }


    public function deactivate(Request $request)
    {

        FcmToken::where("fcm_token",$request->fcm_token)
            ->update([
                "is_active"=>false
            ]);

        return response()->json([
            "message"=>"Token deactivated"
        ]);
    }

}