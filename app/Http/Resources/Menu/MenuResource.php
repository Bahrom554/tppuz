<?php

namespace App\Http\Resources\Menu;

use Illuminate\Http\Resources\Json\JsonResource;

class MenuResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'alias' => $this->alias,
            'type' => $this->type,
            'lang' => $this->lang,
            'lang_hash'=>$this->lang_hash,
            'status' => $this->status,
            'deleted_at'=>$this->deleted_at,
            'created_at'=>$this->created_at->format('Y-m-d'),
            'updated_at'=>$this->updated_at->format('Y-m-d'),
            'menu_items' => MenuItemResource::collection($this->menuItems)
        ];
    }
}
