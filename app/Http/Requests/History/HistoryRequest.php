<?php

namespace App\Http\Requests\History;

use Illuminate\Foundation\Http\FormRequest;

class HistoryRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title'=>'required',
            'description'=>'required',
            'document'=>'required',
            'slug'=>'required',
            'content'=>'required',
            'lang'=>'required',
            'lang_hash'=>'required'


        ];
    }

}
