<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Creditos_historico extends Model
{
    protected $table = 'creditos_historicos';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Persona', 'id_solicitud');
    }

    // Relación
    public function propuesta(){
    	return $this->belongsTo('App\Propusta_servicio', 'idpropuesta');
    }


}
