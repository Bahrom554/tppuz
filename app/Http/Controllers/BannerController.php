<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Http\Resources\Banner\BannerResource;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    public function index(){

        $banners = Banner::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return BannerResource::collection($banners);
    }
}
