<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Post\PostRequest;
use App\Http\Resources\post\PostResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\Post\PostService;
use App\Image;
use App\Post;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class PostController extends Controller
{
    private $service;
    private $fileservice;
    public function __construct(PostService  $service, FileService $fileservice)
    {
        $this->service = $service;
        $this->fileservice =$fileservice;
        $this->middleware("can:redactor");
        $this->middleware("can:moderator")->except(["store","index"]); //You get the idea

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $posts = Post::orderBy('id', 'desc')->paginate(20);
        return PostResource::collection($posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return PostResource
     */
    public function store(PostRequest $request)
    {    $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $post =$this->service->create($request);
        return new PostResource($post);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return PostResource
     */
    public function show(Post $post)
    {
        return new PostResource($post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return PostResource
     */
    public function update(PostRequest $request, Post $post)
    {
         if($request->hasFile('image')){
            if($post->file_id){
                $this->fileservice->update($request,$post->file_id);
            }
            else{
                $file_id=$this->fileservice->create($request);
                $request['file_id']= $file_id;
            }
         }
         $this->service->edit($post->id, $request);
        return  new PostResource(Post::findOrFail($post->id));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Post $post)
    {

        $this->service->remove($post->id);
     if($post->file_id){
        $file=$this->fileservice->deleteStorage($post->file_id);
         $file->delete();
     }
        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
