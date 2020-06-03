<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Ranking_usuario extends Model
{
    //vacio
    protected $table = 'ranking_usuario';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'idpersona');
    }
    
    // Relación
    public function personacalificador(){
    	return $this->belongsTo('App\Model\Persona', 'idcalificador');
    }

}
