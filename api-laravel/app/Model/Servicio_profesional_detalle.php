<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Servicio_profesional_detalle extends Model
{

    protected $table = 'servicio_profesional_detalle';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }

    
    // Relación
    public function servicio(){
    	return $this->belongsTo('App\Model\Servicio', 'idservicio');
    }

        // Relación
        public function servicio_profesional(){
            return $this->belongsTo('App\Model\Servicio_profesional', 'id_servicio_profesional');
        }

}
