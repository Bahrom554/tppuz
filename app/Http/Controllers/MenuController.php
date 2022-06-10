<?php

namespace App\Http\Controllers;

use App\Http\Resources\Menu\MenuResource;
use App\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function index()
    {
        $menus = Menu::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return MenuResource::collection($menus);
    }


}
