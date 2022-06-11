<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Station extends Model
{
    protected $guarded = ['id'];
    public function file(){
        return $this->belongsTo(File::class,'file_id','id');
    }
}
