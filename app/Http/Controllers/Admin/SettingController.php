<?php

namespace App\Http\Controllers\Admin;

use App\Image;
use App\Http\Requests\Setting\SettingCreateRequest;
use App\Http\Requests\Setting\SettingEditRequest;
use App\Http\Resources\Setting\SettingsResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\Setting\SettingService;
use App\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class SettingController extends Controller
{
    private $service;
    private $fileservice;

    public function __construct(SettingService $service, FileService $fileservice)
    {
        $this->service = $service;
        $this->fileservice = $fileservice;


    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $settings = Setting::orderBy('id', 'desc')->paginate(20);
        return SettingsResource::collection($settings);
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
     * @param \Illuminate\Http\Request $request
     * @return SettingsResource
     */
    public function store(SettingCreateRequest  $request)
    {
        $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $setting = $this->service->create($request);
        return new SettingsResource($setting);

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return SettingsResource
     */
    public function show(Setting $setting)
    {

        return new SettingsResource($setting);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param SettingEditRequest $request
     * @param Setting $setting
     * @return SettingsResource
     */
    public function update(SettingEditRequest $request, Setting $setting):SettingsResource
    {
        if($request->hasFile('image')){
            if($setting->file_id){
                $this->fileservice->update($request,$setting->file_id);
            }
            else{
                $file_id=$this->fileservice->create($request);
                $request['file_id']= $file_id;
            }
        }
        $this->service->edit($setting->id, $request);
        return new SettingsResource(Setting::findOrFail($setting->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Setting $setting)
    {
        $this->service->remove($setting->id);
        if($setting->file_id){
            $file=$this->fileservice->deleteStorage($setting->file_id);
            $file->delete();
        }
        return response()->json([], Response::HTTP_NO_CONTENT);

    }
}
