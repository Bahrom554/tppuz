<?php

namespace App\Http\Resources\Station;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class StationResource extends jsonResource
{

    public function  toArray($request){

        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'file_id'=>$this->file_id,
            'phone'=>$this->phone,
            'address'=>$this->address,
            'fax'=>$this->fax,
            'email'=>$this->email,
            'region_id'=>$this->region_id,
            'lang'=>$this->lang,
            'lang_hash'=>$this->lang_hash,
            'status'=>$this->status,
            'lat'=>$this->lat,
            'long'=>$this->long,
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d'),
            'file'=> new FileResource($this->file)
        ];
    }


}
