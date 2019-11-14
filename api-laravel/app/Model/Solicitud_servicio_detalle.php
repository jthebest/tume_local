<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Solicitud_servicio_detalle extends Model
{
    protected $table = 'solicitud_servicio_detalle';


    // Relación
    public function soliciutd_servicio(){
    	return $this->belongsTo('App\Solicitud_servicio', 'idsolicitud');
    }

    // Relación
    public function servicio(){
    	return $this->belongsTo('App\Servicio', 'idservicio');
    }



}
