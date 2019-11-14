<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{

    protected $table = 'servicio';


    // Relación
    public function persona(){
    	return $this->belongsTo('App\Persona', 'idpersona');
    }


}
