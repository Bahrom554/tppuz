<?php

namespace App\Http\Controllers;

use App\Region;
use Illuminate\Http\Request;

class RegionController extends Controller
{
    public function index()
    {

        return Region::all();

    }


    public function store(Request $request)
    {
        request()->validate([
            'name'=>'required',
        ]);
        $region =Region::create($request->all());
        return $region;
    }

    public function update(Request $request, $id)
    {
        $region =Region::findorfail($id);
        $region->update($request->all());
    }

    public function destroy($id)
    {
        Region::find($id)->delete();

        return 204;
    }
}
