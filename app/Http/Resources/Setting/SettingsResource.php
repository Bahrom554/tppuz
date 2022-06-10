<?php

namespace App\Http\Resources\Setting;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class SettingsResource  extends JsonResource
{
    public function  toArray($request){

        return [
            'id'=>$this->id,
            'name'=>$this->name,
            'file_id'=>$this->file_id,
            'slug'=>$this->slug,
            'link'=>$this->link,
            'alies'=>$this->alies,
            'lang_hash'=>$this->lang_hash,
            'lang'=>$this->lang,
            'sort'=>$this->sort,
            'status'=>$this->status,
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d'),
            'file'=> new FileResource($this->file)



        ];}

}
