<?php

namespace App;

use App\Http\Controllers\WidgetController;
use Illuminate\Database\Eloquent\Model;

class Widget extends Model
{
    protected $guarded = ['id'];
    public function widgetItem():\Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(WidgetItem::class,'parent_id','id');
    }
}
