<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tool extends Model
{
    protected $fillable = [
        'name',
        'location',
        'status',
        'kondisi_id'
    ];

    public function kondisi()
    {
        return $this->belongsTo(Kondisi::class);
    }
}