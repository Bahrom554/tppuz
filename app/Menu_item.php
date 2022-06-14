<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu_item extends Model
{
    protected $guarded = ['id'];
  protected $dates =['created_at'];
    public function children()
    {
        return $this->hasMany(self::class, 'menu_item_parent_id', 'id');
    }
    public function file(){
        return $this->belongsTo(Image::class,'file_id','id');
    }

    public function parent()
    {
        return $this->belongsTo(self::class, 'menu_item_parent_id', 'id');
    }

    public function menu()
    {
        return $this->belongsTo(Menu::class, 'menu_id', 'id');
    }
}
