<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $guarded = ['id'];
    public function file(){
        return $this->belongsTo(Image::class,'file_id','id');
    }
}
