<?php

namespace App\Http\Controllers;

use App\Http\Resources\Menu\MenuResource;
use App\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function index(Request $request)
    {

        $menus = Menu::where('status', 1)->where('lang',$request->lang)->orderBy('id', 'asc')->paginate(15);

        return MenuResource::collection($menus);
    }


}
