<?php

namespace App\Http\Requests\Menu;

use Illuminate\Foundation\Http\FormRequest;

class MenuCreateRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title' => 'required|string|max:1024',
            'alias' => 'required|string|max:64',
            'lang' => 'required'
        ];
    }
}
