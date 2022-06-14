<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\MenuItem\MenuItemCreateRequest;
use App\Http\Requests\MenuItem\MenuItemEditRequest;
use App\Http\Resources\Menu\MenuItemResource;
use App\Http\UseCases\File\FileService;
use App\Http\UseCases\MenuItem\MenuItemService;
use App\Image;
use App\Menu;
use App\Menu_item;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class MenuItemController extends Controller
{
    private $service;
    private $fileservice;

    public function __construct(MenuItemService  $service, FileService $fileservice)
    {
        $this->service = $service;
        $this->fileservice=$fileservice;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $childmenus = Menu_item::where('menu_item_parent_id',Null)->orderBy('id', 'desc')->paginate(20);
        return MenuItemResource::collection($childmenus);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function create()
    {

        $menus=Menu::all();
        $childmenus=Menu_item::all();

        return response()->json(['menus'=>$menus,'childmenus'=>$childmenus]);


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return MenuItemResource
     */
    public function store(MenuItemCreateRequest $request)
    {
        $file_id= $this->fileservice->create($request);
        $request['file_id']= $file_id;
        $childmenu=$this->service->create($request);
        return new MenuItemResource($childmenu);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return MenuItemResource
     */
    public function show(Menu_item $childmenu)
    {
        return new MenuItemResource($childmenu);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function edit($id)
    {



    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return MenuItemResource
     */
    public function update(MenuItemEditRequest $request, Menu_item $childmenu)
    {
        if($request->hasFile('image')){
            if($childmenu->file_id){
                $this->fileservice->update($request,$childmenu->file_id);
            }
            else{
                $file_id=$this->fileservice->create($request);
                $request['file_id']= $file_id;
            }
        }
        $this->service->edit($childmenu->id,$request);

         return new MenuItemResource(Menu_item::findOrFail($childmenu->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Menu_item $childmenu)
    {
        $this->service->remove($childmenu->id);
        if($childmenu->file_id){
            $file=$this->fileservice->deleteStorage($childmenu->file_id);
           $file->delete();
        }
        return response()->json([], Response::HTTP_NO_CONTENT);
    }
}
