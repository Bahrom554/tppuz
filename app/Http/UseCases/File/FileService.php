<?php

namespace App\Http\UseCases\File;

use App\File;
use App\Http\Resources\File\FileResource;
use Illuminate\Support\Facades\Request;


class FileService
{
    public function create($request)
    {
        if(!$request->hasFile('image')) return Null;
        request()->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        $image = $request->file('image');
        $fname = date("Y/m/d/H/i");
        $slug = rand();
        $new_name = $slug . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('/uploads/image/' . $fname), $new_name);
        $file = File::make([
            'title' => $image->getClientOriginalName(),
            'description' => $image->getClientOriginalName(),
            'file' => $new_name,
            'ext' => $image->getClientOriginalExtension(),
            'slug' => $slug,
            'folder' => $fname,
            'domain' => $request->getSchemeAndHttpHost(),
            'path' => public_path('/uploads/image/' . $fname),
//                'size' =>$request->file('image')->getSize()
        ]);
        $file->saveorfail();
        return $file->id;


    }
//    public function edit($id, $request){
//        if(!$request->hasFile('image')) return ;
//        $file =File::findOrFail($id);
//        File::delete($file->file);
//
//
//
//    }


}
