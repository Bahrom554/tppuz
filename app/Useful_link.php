<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Useful_link extends Model
{
    public function file(){
        return $this->belongsTo(File::class,'file_id','id');
    }
}
