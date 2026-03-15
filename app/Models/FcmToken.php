<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FcmToken extends Model
{
    protected $table = "fcm_tokens";

    protected $fillable = [
        'siswa_id',
        'guru_id',
        'admin_id',
        'fcm_token',
        'device_type',
        'is_active',
        'last_used_at',
        'preference'
    ];

    protected $casts = [
        'preference' => 'array',
        'is_active' => 'boolean',
        'last_used_at' => 'datetime'
    ];
}