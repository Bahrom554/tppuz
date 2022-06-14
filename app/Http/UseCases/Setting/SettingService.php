<?php

namespace App\Http\UseCases\Setting;

use App\Http\Requests\Setting\SettingCreateRequest;
use App\Http\Requests\Setting\SettingEditRequest;
use App\Setting;
use Illuminate\Http\Request;

class SettingService
{
    public function create(SettingCreateRequest $request)
    {

        $setting = Setting::make([
            'name' => $request['name'],
            'file_id' => $request['file_id'],
            'slug' => $request['slug'],
            'link' => $request['link'],
            'alies' => $request['alies'],
            'lang_hash' => $request['lang_hash'],
            'lang' => $request['lang'],
            'sort' => $request['sort'],
            'status' => $request['status'] ? 1 : '',
        ]);
        $setting->saveOrFail();
        return $setting;

    }

    public function edit($id, SettingEditRequest $request)
    {
        $setting = $this->getSetting($id);

        $setting->update($request->only([
            'name',
            'slug',
            'link',
            'alies',
            'lang',
            'file_id'


        ]));

    }

    public function remove($id)
    {
        $setting = $this->getSetting($id);

        $setting->delete();
    }

    private function getSetting($id): Setting
    {
        return Setting::findOrFail($id);
    }

}
