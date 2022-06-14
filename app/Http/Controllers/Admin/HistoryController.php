<?php

namespace App\Http\Controllers\Admin;

use App\History;
use App\Http\Requests\History\HistoryRequest;
use App\Http\Resources\History\HistoryResource;
use App\Http\Resources\post\PostResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\History\HistoryService;
use App\Image;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class HistoryController extends Controller
{
    private $service;
    private $fileservice;
    public function __construct(HistoryService  $service, FileService $fileservice)
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
        $histories =History::orderBy('id','desc')->paginate(20);
        return HistoryResource::collection($histories);
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
    public function store(HistoryRequest $request)
    {    $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $post =$this->service->create($request);
        return new PostResource($post);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return HistoryResource
     */
    public function show(History $history)
    {
        return new HistoryResource($history);
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
     * @return HistoryResource
     */
    public function update(HistoryRequest $request, History $history)
    {    if($request->hasFile('image')){
        if($history->file_id){
            $this->fileservice->update($request,$history->file_id);
        }
        else{
            $file_id=$this->fileservice->create($request);
            $request['file_id']= $file_id;
        }
    }
        $this->service->edit($history->id, $request);
        return  new HistoryResource(History::findOrFail($history->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(History $history)
    {
        $this->service->remove($history->id);
        if($history->file_id){
           $file= $this->fileservice->deleteStorage($history->file_id);
            $file->delete();
        }
        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
