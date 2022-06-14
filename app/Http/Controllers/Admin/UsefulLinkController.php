<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Links\LinkRequest;
use App\Http\Resources\Link\LinkResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\Link\LinkService;
use App\Image;
use App\Useful_link;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class UsefulLinkController extends Controller
{
    private $service;
    private $fileservice;
    public function __construct(LinkService  $service, FileService $fileservice)
    {
        $this->service = $service;
        $this->fileservice =$fileservice;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $links = Useful_link::orderBy('id', 'desc')->paginate(20);
        return LinkResource::collection($links);
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
     * @return LinkResource
     */
    public function store(Request $request)
    {
        $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $link =$this->service->create($request);
        return new LinkResource($link);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return LinkResource
     */
    public function show(Useful_link $link)
    {
        return new LinkResource($link);
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
     * @return LinkResource
     */
    public function update(LinkRequest $request, Useful_link $link)
    {   if($request->hasFile('image')){
        if($link->file_id){
            $this->fileservice->update($request,$link->file_id);
        }
        else{
            $file_id=$this->fileservice->create($request);
            $request['file_id']= $file_id;
        }
    }
        $this->service->edit($link->id, $request);
        return  new LinkResource(Banner::findOrFail($link->id));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Useful_link $link)
    {
        $this->service->remove($link->id);
        if($link->file_id){
            $file=$this->fileservice->deleteStorage($link->file_id);
         $file->delete();
        }
        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
