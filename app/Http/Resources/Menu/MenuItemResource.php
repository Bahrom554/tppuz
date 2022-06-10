<?php

namespace App\Http\Resources\Menu;


use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class MenuItemResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'menu_id' => $this->menu_id,
            'title' => $this->title,
             'url' => $this->url,
            'file_id'=>$this->file_id,
            'sort'=>$this->sort,
            'menu_item_parent_id'=>$this->menu_item_parent_id,
            'status'=>$this->status,
            'deleted_at'=>$this->deleted_at,
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d'),
            'file'=> new FileResource($this->file),
            'menu_items' => self::collection($this->children)
        ];
    }
}
