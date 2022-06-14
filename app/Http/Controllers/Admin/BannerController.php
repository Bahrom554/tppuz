<?php

namespace App\Http\Controllers\Admin;

use App\Banner;
use App\Http\Requests\Banner\BannerCreateRequest;
use App\Http\Requests\Banner\BannerEditRequest;
use App\Http\Resources\Banner\BannerResource;
use App\Http\UseCases\Banner\BannerService;
use App\Http\UseCases\File\FileService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;


class BannerController extends Controller
{
    private $service;
    private $fileservice;
    public function __construct(BannerService  $service, FileService $fileservice)
    {
        $this->service = $service;
        $this->fileservice =$fileservice;

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banners = Banner::orderBy('id', 'desc')->paginate(20);
        return BannerResource::collection($banners);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return BannerResource
     */
    public function store(BannerCreateRequest $request)
    {    $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $banner =$this->service->create($request);
        return new BannerResource($banner);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return BannerResource
     */
    public function show(Banner $banner)
    {
        return new BannerResource($banner);
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
     * @return BannerResource
     */
    public function update(BannerEditRequest $request, Banner $banner)
    {
        if($request->hasFile('image')){
            if($banner->file_id){
                $this->fileservice->update($request,$banner->file_id);
            }
            else{
                $file_id=$this->fileservice->create($request);
                $request['file_id']= $file_id;
            }
        }
        $this->service->edit($banner->id, $request);
        return  new BannerResource(Banner::findOrFail($banner->id));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Banner $banner)
    {
        $this->service->remove($banner->id);
        if($banner->file_id){
            $file= $this->fileservice->deleteStorage($banner->file_id);
            $file->delete();
        }
        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
