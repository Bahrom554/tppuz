<?php

namespace App\Http\Requests\Widget;

use Illuminate\Foundation\Http\FormRequest;

class WidgetItemRequest extends FormRequest
{ public function rule(){
    return [
        'title'=>'required',
        'description'=>'required',
    ];

}

}
