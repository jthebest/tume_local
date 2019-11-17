<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    protected $table = 'cars';

    // Relación
    public function user(){
    	return $this->belongsTo('App\User', 'user_id');
    }
}
