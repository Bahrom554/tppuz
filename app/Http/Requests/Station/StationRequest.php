<?php

namespace App\Http\Requests\Station;

use Illuminate\Foundation\Http\FormRequest;

class StationRequest extends FormRequest
{
    public function rules()
    {
        return [
            'title' => 'required|string',
            'phone' => 'required',
            'address' => 'required',
            'fax' => 'required',
            'email' => 'required',
            'lang' => 'required',


        ];


    }


}
