<?php

namespace App\Http\Controllers\Admin;

use App\Lenguage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class LenguageController extends Controller
{
    public function index()
    {
        $lengs = Lenguage::all();

        return $lengs;
    }
    public function store(Request $request) {

        $request->validate([
            'name' => 'required',

        ]);

        $leng =Lenguage::create($request->all());

        return $leng;
    }
    public function update(Request $request, Lenguage $leng) {

        $request->validate([
            'name' => 'required',

        ]);

        $leng->update($request->all());

        return $leng;
    }
    public function destroy(Lenguage $leng) {

        $leng->delete();

        return 204;
    }

}
