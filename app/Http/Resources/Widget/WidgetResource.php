<?php

namespace App\Http\Resources\Widget;

use Illuminate\Http\Resources\Json\JsonResource;

class WidgetResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'alias' => $this->alias,
            'lang' => $this->lang,
            'lang_hash' => $this->lang_hash,
            'type' => $this->type,
            'status' => $this->status,
            'created_at' => $this->created_at->format('Y-m-d'),
            'updated_at' => $this->updated_at->format('Y-m-d'),
            'items' => WidgetItemResource::collection($this->widgetItem)


        ];
    }

}
