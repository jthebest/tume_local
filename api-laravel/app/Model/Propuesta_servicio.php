<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Propuesta_servicio extends Model
{
    protected $table = 'propuesta_servicio';

    // Relación
    public function solicitu_servicio(){
    	return $this->belongsTo('App\Solicitud_servicio', 'id_solicitud');
    }

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Persona', 'id_profesional');
    }
}
