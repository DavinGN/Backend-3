<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'username',
        'password',
        'role_id'
    ];

    protected $hidden = [
        'password'
    ];

    public $timestamps = false;

    public function role(){
        return $this->belongsTo(Role::class);
    }

    public function isAdmin(){
        return $this->role->name === 'admin';
    }

    public function isGuru(){
        return $this->role->name === 'guru';
    }

    public function isMurid(){
        return $this->role->name === 'murid';
    }
}
