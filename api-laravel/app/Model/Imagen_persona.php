<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Imagen_persona extends Model
{
    protected $table = 'imagen_persona';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }

}
