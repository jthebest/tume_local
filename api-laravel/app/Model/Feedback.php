<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedback';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }

}
