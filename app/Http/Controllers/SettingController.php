<?php

namespace App\Http\Controllers;

use App\Http\Resources\Setting\SettingsResource;
use App\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function index(){

        $settings = Setting::where('status', 1)->orderBy('id', 'asc')->paginate(15);

        return SettingsResource::collection($settings);
    }

}
