<?php

namespace App\Http\UseCases\Post;

use App\Http\Requests\Post\PostRequest;
use App\Post;

class PostService
{
    public function create(PostRequest $request)
    {
        $post = Post::make([
            'title' => $request['title'],
            'description'=>$request['description'],
            'content' => $request['content'],
            'slug' => $request['slug'],
            'top'=>$request['top'],
            'lang_hash' => $request['lang_hash'],
            'file_id'=>$request['file_id'],
            'lang' => $request['lang'],
            'status' => $request['status'],
            'popular'=>$request['popular'],
            'type'=>$request['type']


        ]);
        $post->saveOrFail();

        return $post;
    }
    public function edit($id, PostRequest $request)
    {
        $post = $this->getPost($id);

        $post->update($request->only([
            'title',
            'description',
            'content',
            'slug',
            'top',
            'sort',
            'lang',
            'lang_hash',
            'file_id'
        ]));
    }

    public function remove($id)
    {
        $post = $this->getPost($id);

        $post->delete();
    }

    private function getPost($id)
    {
        return Post::findOrFail($id);
    }

}
