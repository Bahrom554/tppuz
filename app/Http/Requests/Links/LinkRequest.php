<?php

namespace App\Http\Requests\Links;

use Illuminate\Foundation\Http\FormRequest;

class LinkRequest extends FormRequest
{

    public function rules()
    {
        return [
            'name_uz' => 'required|string|max:1024',
            'name_ru' => 'required|string|max:1024',
            'name_en' => 'required',
            'name_oz' => 'required',
            'link' => 'required'


        ];
    }


}
