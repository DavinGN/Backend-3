<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConsumableRequest extends Model
{
    protected $fillable = [
        'user_id',
        'consumable_id',
        'quantity',
        'status',
        'verified_by'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function consumable()
    {
        return $this->belongsTo(Consumable::class);
    }
}