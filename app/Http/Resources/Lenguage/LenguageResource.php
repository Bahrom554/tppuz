<?php

namespace App\Http\Resources\Lenguage;

use Illuminate\Http\Resources\Json\JsonResource;

class LenguageResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
        ];
    }

}
