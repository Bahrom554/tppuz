<?php

namespace App\Http\Controllers;

use App\History;
use App\Http\Resources\History\HistoryResource;
use Illuminate\Http\Request;

class HistoryController extends Controller
{
    public function index(){

        $banners = History::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return HistoryResource::collection($banners);
    }
}
