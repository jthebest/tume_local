<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio_profesional_personalizado extends Model
{
    protected $table = 'servicio_profesional_personalizado';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }


        // Relación
        public function servicio_profesional(){
            return $this->belongsTo('App\Model\Servicio_profesional', 'id_servicio_profesional');
        }

}
