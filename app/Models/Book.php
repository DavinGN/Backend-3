<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
        'title',
        'author',
        'publisher',
        'pages',
        'category_id',
        'location',
        'status'
    ];

    public function category(){
        return $this->belongsTo(Category::class);
    }
}
