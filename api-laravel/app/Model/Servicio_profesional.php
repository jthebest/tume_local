<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Servicio_profesional extends Model
{

    protected $table = 'servicio_profesional';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }

    
    // Relación
    public function servicio(){
    	return $this->belongsTo('App\Model\Servicio', 'idservicio');
    }



}
