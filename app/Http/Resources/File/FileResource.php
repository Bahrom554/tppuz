<?php

namespace App\Http\Resources\File;

use Illuminate\Http\Resources\Json\JsonResource;

class FileResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'description'=>$this->description,
            'file'=>$this->file,
            'ext'=>$this->ext,
            'slug'=>$this->slug,
            'folder'=>$this->folder,
            'domain'=>$this->domain,
            'user_id'=>$this->user_id,
            'path'=>$this->path,
            'size'=>$this->size,
            'created_at'=>$this->created_at->format('Y-m-d-h-s'),
            'updated_at'=>$this->updated_at->format('Y-m-d-h-s')

        ];
    }

}
