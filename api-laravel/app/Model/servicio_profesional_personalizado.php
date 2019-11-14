<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio_profesional_personalizado extends Model
{
    protected $table = 'servicio_profesional_personalizado';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Persona', 'idpersona');
    }


        // Relación
        public function servicio_profesional(){
            return $this->belongsTo('App\Servicio_profesional', 'id_servicio_profesional');
        }

}
