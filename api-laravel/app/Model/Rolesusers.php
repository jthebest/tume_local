<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Rolesusers extends Model
{

    protected $table = 'rolesusers';


    // Relación
    public function personacalificador(){
    	return $this->belongsTo('App\Model\Roles', 'idrole');
    }


}
