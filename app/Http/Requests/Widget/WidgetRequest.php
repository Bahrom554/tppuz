<?php

namespace App\Http\Requests\Widget;

use Illuminate\Foundation\Http\FormRequest;

class WidgetRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title' => 'required',
            'alias' => 'required',
            'lang' => 'required'


        ];


    }


}
