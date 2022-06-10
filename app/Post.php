<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function file(){
        return $this->belongsTo(File::class,'file_id','id');
    }
}
