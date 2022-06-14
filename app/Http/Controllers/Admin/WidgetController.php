<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Widget\WidgetRequest;
use App\Http\Resources\Widget\WidgetResource;
use App\Http\UseCases\Widget\WidgetService;

use App\Widget;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class WidgetController extends Controller
{
    private $service;

    public function __construct(WidgetService $service)
    {
        $this->service = $service;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $widgets =Widget::orderBy('id','desc')->paginate(20);
        return WidgetResource::collection($widgets);
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
     * @return WidgetResource
     */
    public function store(WidgetRequest $request)
    {
        $widget =$this->service->create($request);
        return new WidgetResource($widget);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return WidgetResource
     */
    public function show(Widget $widget)
    {
        return new WidgetResource($widget);

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
     * @return WidgetResource
     */
    public function update(WidgetRequest $request, Widget $widget)
    {
        $this->service->edit($widget->id,$request);
        return new WidgetResource(Widget::findOrFail($widget->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Widget $widget)
    {
        $this->service->remove($widget->id);

        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
