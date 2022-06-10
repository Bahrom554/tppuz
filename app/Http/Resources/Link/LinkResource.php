<?php

namespace App\Http\Resources\Link;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class LinkResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name_uz' => $this->name_uz,
            'name_ru' => $this->name_ru,
            'name_oz' => $this->name_oz,
            'name_en' => $this->name_en,
            'link'=>$this->link,
            'status'=>$this->status,
            'file'=> new FileResource($this->file),
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d')

        ];
    }

}
