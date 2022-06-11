<?php

namespace App\Http\Resources\Widget;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class WidgetItemResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'file_id' => $this->file_id,
            'description' => $this->description,
            'sort' => $this->sort,
            'status' => $this->status,
            'parent_id' => $this->parent_id,
            'created_at' => $this->created_at->format('Y-m-d'),
            'updated_at' => $this->updated_at->format('Y-m-d'),
            'file' => new FileResource($this->file),


        ];
    }

}
