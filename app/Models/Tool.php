<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tool extends Model
{
    protected $fillable = [
        'name','location', 'status'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
