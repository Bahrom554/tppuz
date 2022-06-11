<?php

namespace App\Http\Controllers;

use App\Http\Requests\Widget\WidgetItemRequest;
use App\Http\Resources\Widget\WidgetItemResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\Widget\WidgetItemService;
use App\WidgetItem;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class WidgetItemController extends Controller
{

    private $service;
    private $fileservice;

    public function __construct(WidgetItemService  $service, FileService $fileservice)
    {
        $this->service = $service;
        $this->fileservice=$fileservice;
    }
    public function index()
    {
        $widget = WidgetItem::orderBy('id', 'desc')->paginate(20);
        return WidgetItemResource::collection($widget);
    }
    public function store(WidgetItemRequest $request)
    {
        $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        return new WidgetItemResource($this->service->create($request));

    }
    public function show(WidgetItem $widget)
    {
        return new WidgetItemResource($widget);
    }

    public function update(WidgetItemRequest $request, WidgetItem $widget)
    {

        $this->service->edit($widget->id,$request);

        return new WidgetItemResource(WidgetItem::findOrFail($widget->id));
    }

    public function destroy(WidgetItem $widget){
        $this->service->remove($widget->id);
        return response()->json([], Response::HTTP_NO_CONTENT);
    }


}
