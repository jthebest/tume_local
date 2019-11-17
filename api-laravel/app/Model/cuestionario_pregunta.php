<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cuestionario_pregunta extends Model
{
    //vacio
    protected $table = 'Cuestionario_pregunta';

    // Relación
    public function cuestionario(){
    	return $this->belongsTo('App\Model\Cuestionario_pregunta', 'idcuestionario');
    }



}
