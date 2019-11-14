<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio_profesional extends Model
{

    protected $table = 'servicio_profesional';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Persona', 'idpersona');
    }

    
    // Relación
    public function servicio(){
    	return $this->belongsTo('App\Servicio', 'idservicio');
    }



}
