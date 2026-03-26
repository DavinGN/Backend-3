<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kondisi extends Model
{
    protected $table = 'kondisi'; 

    protected $fillable = [
        'name'
    ];

    public function tools()
    {
        return $this->hasMany(Tool::class);
    }
}