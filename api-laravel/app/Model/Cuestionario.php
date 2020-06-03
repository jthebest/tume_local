<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Cuestionario extends Model
{
    //vacio
    protected $table = 'Cuestionario';

    // Relación
    public function servicio(){
    	return $this->belongsTo('App\Model\Servicio', 'idservicio');
    }



}
