<?php

namespace App\Http\UseCases\Banner;

use App\Banner;
use App\Http\Requests\Banner\BannerCreateRequest;
use App\Http\Requests\Banner\BannerEditRequest;
use App\Http\Resources\Banner\BannerResource;

class BannerService
{
    public function create(BannerCreateRequest $request)
    {
        $banner = Banner::make([
            'title' => $request['title'],
            'link' => $request['link'],
            'sort' => $request['sort'],
            'status'=>$request['status'],
            'lang_hash' => 'dsdsdsdds',
            'lang' => $request['lang'],
            'target' => $request['target'],
            'file_id' => $request['file_id']
        ]);
        $banner->saveOrFail();

        return $banner;
    }
    public function edit($id, BannerEditRequest $request)
    {
        $banner = $this->getBanner($id);

        $banner->update($request->only([
            'title',
            'sort',
            'link',
            'target',
            'lang',
            'lang_hash',
            'file_id'


        ]));

    }

    public function remove($id)
    {
        $banner = $this->getBanner($id);

        $banner->delete();
    }

    private function getBanner($id): Banner
    {
        return Banner::findOrFail($id);
    }

}
