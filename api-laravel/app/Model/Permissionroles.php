<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Permissionroles extends Model
{
    protected $table = 'permissionroles';

    // Relación
    public function roles(){
        return $this->belongsTo('App\Model\Roles', 'idRole');
    }

}
