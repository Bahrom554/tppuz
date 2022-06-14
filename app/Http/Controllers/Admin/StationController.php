<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Station\StationRequest;
use App\Http\Resources\Station\StationResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\Station\StationService;
use App\Image;
use App\Station;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class StationController extends Controller
{
    private $service;
    private $fileservice;
    public function __construct(StationService  $service, FileService $fileservice)
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
        $stations=Station::orderBy('id','desc')->paginate(20);
        return StationResource::collection($stations);

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
     * @return StationResource
     */
    public function store(StationRequest $request)
    {
        $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $station =$this->service->create($request);
        return new StationResource($station);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return StationResource
     */
    public function show(Station $station)
    {
        return new StationResource($station);
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
     * @return StationResource
     */
    public function update(StationRequest $request, Station $station)
    {
        if($request->hasFile('image')){
            if($station->file_id){
                $this->fileservice->update($request,$station->file_id);
            }
            else{
                $file_id=$this->fileservice->create($request);
                $request['file_id']= $file_id;
            }
        }
        $this->service->edit($station->id, $request);
        return new StationResource(Station::findOrFail($station->id));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Station $station)
    {
        $this->service->remove($station->id);
        if($station->file_id){
            $file=$this->fileservice->deleteStorage($station->file_id);
           $file->delete();
        }
        return response()->json([], Response::HTTP_NO_CONTENT);

    }
}
