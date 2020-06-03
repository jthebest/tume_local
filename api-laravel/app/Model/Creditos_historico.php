<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Creditos_historico extends Model
{
    protected $table = 'creditos_historicos';

    // Relación
    public function persona(){
    	return $this->belongsTo('App\Model\Persona', 'id_solicitud');
    }

    // Relación
    public function propuesta(){
    	return $this->belongsTo('App\Model\Propusta_servicio', 'idpropuesta');
    }


}
