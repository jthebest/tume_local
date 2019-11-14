<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Solicitud_servicio_personalizado extends Model
{
    protected $table = 'solicitud_servicio_personalizado';


    // Relación
    public function soliciutd_servicio(){
    	return $this->belongsTo('App\Solicitud_servicio', 'id_solicitud_servicio');
    }





}
