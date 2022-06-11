<?php

namespace App\Http\Requests\MenuItem;

use Illuminate\Foundation\Http\FormRequest;

class MenuItemCreateRequest extends FormRequest
{
    public function rules()
    {
        return [
            'menu_id' => 'required',
            'title' => 'required|string|max:1024',
            'url' => 'required',
            'sort' => 'required'


        ];
    }

}
