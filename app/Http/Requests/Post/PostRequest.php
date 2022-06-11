<?php

namespace App\Http\Requests\Post;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title'=>'required',
            'description'=>'required',
            'content'=>'required',
            'slug'=>'required',
            'top'=>'required',
            'lang'=>'required',
            'lang_hash'=>'required'


        ];
    }


}
