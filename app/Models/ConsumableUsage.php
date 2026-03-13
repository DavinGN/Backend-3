<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConsumableUsage extends Model
{
    protected $table = 'consumable_usages';

    protected $fillable = [
        'consumable_id',
        'user_id',
        'quantity',
        'note'
    ];

    public $timestamps = false; 
    // karena di tabel hanya ada created_at
    // dan tidak ada updated_at

    /*
    |--------------------------------------------------------------------------
    | RELATIONSHIPS
    |--------------------------------------------------------------------------
    */

    public function consumable()
    {
        return $this->belongsTo(Consumable::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
