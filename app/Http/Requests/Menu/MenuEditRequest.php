<?php

namespace App\Http\Requests\Menu;

use Illuminate\Foundation\Http\FormRequest;

class MenuEditRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title' => 'required|string|max:1024',
            'alias'=>'required|string'
        ];
    }
}
