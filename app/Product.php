<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function presentPrice()
    {
        return '$'.number_format($this->price / 100);
    }
    public function scopeMightAlsoLike($query)
    {
        return $query->inRandomOrder()->take(4);
    }
}