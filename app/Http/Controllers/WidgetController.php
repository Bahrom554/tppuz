<?php

namespace App\Http\Controllers;

use App\Http\Resources\Widget\WidgetResource;
use App\Widget;
use Illuminate\Http\Request;

class WidgetController extends Controller
{
    public function index()
    {
        $widgets = Widget::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return WidgetResource::collection($widgets);
    }

}
