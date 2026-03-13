<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Consumable extends Model
{
    public $timestamps = false;
    protected $fillable = ['name','stock'];
}
