<?php

namespace App\Http\UseCases\MenuItem;

use App\Http\Requests\MenuItem\MenuItemCreateRequest;
use App\Http\Requests\MenuItem\MenuItemEditRequest;
use App\Menu_item;

class MenuItemService
{
    public function create(MenuItemCreateRequest $request): Menu_item
    {
        $childmenu = Menu_item::make([
            'menu_id' => $request['menu_id'],
            'title' => $request['title'],
            'url' => $request['url'],
            'file_id' => $request['file_id'],
            'sort' => $request['sort'],
            'menu_item_parent_id'=>$request['menu_item_parent_id']
        ]);

        $childmenu->saveOrFail();

        return $childmenu;
    }

    public function edit($id, MenuItemEditRequest $request)
    {
        $menu = $this->getMenu($id);

        $menu->update($request->only([
            'menu_id',
            'title',
            'url',
            'sort',
            'file_id'
        ]));

    }

    public function remove($id)
    {
        $menu = $this->getMenu($id);

        $menu->delete();
    }

    private function getMenu($id): Menu_item
    {
        return Menu_item::findOrFail($id);
    }

}
