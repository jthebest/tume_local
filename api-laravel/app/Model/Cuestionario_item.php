<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Cuestionario_item extends Model
{
    //vacio
    protected $table = 'Cuestionario_item';

    // Relación
    public function pregunta(){
    	return $this->belongsTo('App\Model\Cuestionario_pregunta', 'idpregunta');
    }



}
