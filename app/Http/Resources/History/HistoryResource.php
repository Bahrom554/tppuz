<?php

namespace App\Http\Resources\History;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;


class HistoryResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'slug'=>$this->slug,
            'description'=>$this->description,
            'type'=>$this->type,
            'documents'=>$this->documents,
            'anons'=>$this->anons,
            'content'=>$this->content,
            'status'=>$this->status,
            'lang'=>$this->lang,
            'file_id'=>$this->file_id,
            'lang_hash'=>$this->lag_hash,
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d'),
            'file'=> new FileResource($this->file)
        ];
    }

}
