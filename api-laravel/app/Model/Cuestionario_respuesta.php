<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Cuestionario_respuesta extends Model
{
    //vacio
    protected $table = 'Cuestionario_respuesta';

    // Relación
    public function item(){
        return $this->belongsTo('App\Model\Cuestionario_item', 'iditem');
    }
        
    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\persona', 'idpersona');
    }

    // Relación
        public function servicio(){
            return $this->belongsTo('App\Model\Servicio', 'idservicio');
        }

}
