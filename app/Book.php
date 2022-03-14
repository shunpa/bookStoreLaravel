<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    public function booktype()
    {
        return $this->belongsTo('App\Booktype');
    }
}
