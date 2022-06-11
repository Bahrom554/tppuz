<?php

namespace App\Http\Requests\Setting;

use Illuminate\Foundation\Http\FormRequest;

class SettingCreateRequest extends FormRequest
{
    /**
     * @var mixed
     */


    public function rules()
    {
        return [
            'name' => 'required|string|max:1024',
            'slug' => 'required|string|max:64',
            'link' => 'required|string',
            'alies'=>'required|string',
            'lang'=>'required',
            'lang_hash'=>'required',
        ];
    }
}
