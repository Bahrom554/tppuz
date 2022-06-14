<?php

namespace App\Http\Controllers;

use App\History;
use App\Http\Resources\History\HistoryResource;
use Illuminate\Http\Request;

class HistoryController extends Controller
{
    public function index(Request $request){

        $banners = History::where('status', 1)->where('lang',$request->lang)->orderBy('id', 'asc')->paginate(15);

        return HistoryResource::collection($banners);
    }
}
