<?php

namespace App\Http\Resources\post;

use App\Http\Resources\File\FileResource;
use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
{
 public function  toArray($request){

     return [
         'id'=>$this->id,
         'title'=>$this->title,
         'description'=>$this->description,
         'content'=>$this->content,
         'slug'=>$this->slug,
         'top'=>$this->top,
         'file_id'=>$this->file_id,
         'popular'=>$this->popular,
         'type'=>$this->type,
         'lang'=>$this->lang,
         'lang_hash'=>$this->lang_hash,
         'status'=>$this->status,
         'created_at'=>$this->created_at->format('Y-m-d'),
         'updated_at'=>$this->updated_at->format('Y-m-d'),
         'file'=> new FileResource($this->file)
     ];
 }


}
