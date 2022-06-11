<?php

namespace App\Http\Requests\Banner;

use Illuminate\Foundation\Http\FormRequest;

class BannerCreateRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title' => 'required|string|max:1024',
            'link' => 'required|string|max:1024',
            'sort' => 'required',
            'target' => 'required',
            'lang' => 'required'


        ];
    }

}
