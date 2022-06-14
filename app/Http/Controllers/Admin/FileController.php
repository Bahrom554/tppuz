<?php

namespace App\Http\Controllers\Admin;
use App\Image;
use App\Http\Resources\File\FileResource;
use App\Http\UseCases\File\FileService;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class FileController extends Controller
{
    private $service;

    public function __construct(FileService $service)
    {
        $this->service = $service;
    }

    /**
     * Display a listing of the resource.
     *
     * @return FileResource
     */
    public function upload(Request $request)
    {

        $file_id= $this->service->create($request);
        $file=Image::findOrFail($file_id);
        return new FileResource($file);


    }

    public function index()
    {

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
     * @return FileResource
     */
    public function store(Request $request)
    {
        $file_id= $this->service->create($request);
        $file=Image::findOrFail($file_id);
        return new FileResource($file);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

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
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $file =Image::findOrFail($id);
        $path = public_path() . "/uploads/image/" . $file->folder.'/'.$file->file;
//        File::delete($path);
        unlink($path);
//        Storage::delete($path);
//       Storage::delete(public_path('uploads/image/'.$file->folder.$file->file));

        return 204;
    }



}
