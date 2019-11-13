<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permissionroles extends Model
{
    protected $table = 'permissionroles';

    // Relación
    public function roles(){
        return $this->belongsTo('App\Roles', 'idRole');
    }

}
