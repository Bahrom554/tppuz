<?php

namespace App\Http\Resources\Banner;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class BannerResource extends JsonResource
{
    public function toArray($request)
    {
        return [
             'id'=>$this->id,
            'title'=>$this->title,
            'link'=>$this->link,
            'sort'=>$this->sort,
            'status'=>$this->status,
            'target'=>$this->target,
            'lang'=>$this->lang,
            'lang_hash'=>$this->lag_hash,
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d'),
            'file'=> new FileResource($this->file)
        ];
    }

}
