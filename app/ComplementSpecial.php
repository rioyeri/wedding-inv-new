<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ComplementSpecial extends Model
{
    protected $table ='complement_specialname';
    protected $fillable = [
        'invitation_id','name','creator',
    ];

    public function creator_name(){
        return $this->belongsTo('App\User','creator','id');
    }
}
