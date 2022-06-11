<?php

namespace App\Http\UseCases\Menu;

use App\Http\Requests\Menu\MenuCreateRequest;
use App\Http\Requests\Menu\MenuEditRequest;
use App\Menu;

class MenuService
{
    public function create(MenuCreateRequest $request): Menu
    {
        $menu = Menu::make([
            'title' => $request['title'],
            'alias' => $request['alias'],
            'status' => $request['status'],
            'lang_hash' => $request['lang_hash'],
            'lang' => $request['lang'],
            'type'=>$request['type']
        ]);

        $menu->saveOrFail();

        return $menu;
    }

    public function edit($id, MenuEditRequest $request)
    {
        $menu = $this->getMenu($id);

        $menu->update($request->only([
            'title',
            'alias',
            'status'
        ]));

    }

    public function remove($id)
    {
        $menu = $this->getMenu($id);

        $menu->delete();
    }

    private function getMenu($id): Menu
    {
        return Menu::findOrFail($id);
    }
}
