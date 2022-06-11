<?php

namespace App\Http\Controllers;

use App\Http\Resources\Station\StationResource;
use App\Station;
use Illuminate\Http\Request;

class StationController extends Controller
{
    public function index(){

        $stations = Station::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return StationResource::collection($stations);
    }
}
