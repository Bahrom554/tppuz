<?php

namespace App\Http\Controllers;

use App\Http\Resources\Link\LinkResource;
use App\Useful_link;
use Illuminate\Http\Request;

class UsefulLinkController extends Controller
{
    public function index(){

        $links  = Useful_link::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return LinkResource::collection($links);
    }
}
