<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ranking_profesional extends Model
{
    //vacio
    protected $table = 'ranking_profesional';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Persona', 'idpersona');
    }
    
    // Relación
    public function personacalificador(){
    	return $this->belongsTo('App\Persona', 'idcalificador');
    }

    // Relación
    public function solicitud_servicio(){
        return $this->belongsTo('App\Solicitud_servicio', 'id_solicitud');
    }

}
