<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Menu\MenuCreateRequest;
use App\Http\Requests\Menu\MenuEditRequest;
use App\Http\Resources\Menu\MenuResource;
use App\Http\UseCases\Menu\MenuService;
use App\Menu;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class MenuController extends Controller
{
    private $service;

    public function __construct(MenuService $service)
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
        $menus = Menu::orderBy('id', 'desc')->paginate(20);
        return MenuResource::collection($menus);

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
     * @param \Illuminate\Http\Request $request
     * @return MenuResource
     */
    public function store(MenuCreateRequest $request)
    {
        $menu = $this->service->create($request);
        return new MenuResource($menu);
    }// DO NOT REPEAT YOURSELF

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return MenuResource
     */
    public function show(Menu $menu)
    {
        return new MenuResource($menu);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return MenuResource
     */
    public function update(MenuEditRequest $request, Menu $menu): MenuResource
    {

        $this->service->edit($menu->id, $request);

        return new MenuResource(Menu::findOrFail($menu->id));


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return JsonResponse
     */
    public function destroy(Menu $menu)
    {
        $this->service->remove($menu->id);
        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
