<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cuestionario_respuesta extends Model
{
    //vacio
    protected $table = 'Cuestionario_respuesta';

    // Relación
    public function item(){
        return $this->belongsTo('App\Cuestionario_item', 'iditem');
    }
        
    // Relación
    public function persona(){
    	return $this->belongsTo('App\persona', 'idpersona');
    }

    // Relación
        public function servicio(){
            return $this->belongsTo('App\Servicio', 'idservicio');
        }

}
