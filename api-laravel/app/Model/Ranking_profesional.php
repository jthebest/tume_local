<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ranking_profesional extends Model
{
    //vacio
    protected $table = 'ranking_profesional';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }
    
    // Relación
    public function personacalificador(){
    	return $this->belongsTo('App\Model\Persona', 'idcalificador');
    }

    // Relación
    public function solicitud_servicio(){
        return $this->belongsTo('App\Model\Solicitud_servicio', 'id_solicitud');
    }

}
