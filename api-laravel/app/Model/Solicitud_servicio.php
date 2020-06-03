<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Solicitud_servicio extends Model
{
    protected $table = 'solicitud_servicio';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }



}
