<?php

namespace App\Http\UseCases\Banner;

use App\Banner;
use App\Http\Requests\Banner\BannerCreateRequest;
use App\Http\Resources\Banner\BannerResource;

class BannerService
{
    public function create(BannerCreateRequest $request, File $file): Banner
    {
        $banner = Banner::make([
            'title' => $request['title'],
            'link' => $request['link'],
            'sort' => $request['sort'],
            'lang_hash' => 'default',
            'lang' => $request['lang'],
            'target' => $request['target'],
            'file_id' => $file->id
        ]);
        $banner->saveOrFail();

        return $banner;
    }

}
