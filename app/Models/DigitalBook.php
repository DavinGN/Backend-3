<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DigitalBook extends Model
{

    protected $fillable = [
        'title',
        'author',
        'category_id',
        'description',
        'file_path',
        'file_type'
    ];


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

}