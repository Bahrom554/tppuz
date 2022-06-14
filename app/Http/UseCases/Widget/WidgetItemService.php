<?php

namespace App\Http\UseCases\Widget;

use App\Http\Requests\Widget\WidgetItemRequest;
use App\WidgetItem;

class WidgetItemService
{
    public function create(WidgetItemRequest $request)
    {
        $widget = WidgetItem::make([
            'title' => $request['title'],
            'file_id' => $request['file_id'],
            'description' => $request['description'],
            'sort' => $request['sort'],
            'status' => $request['status'],
            'parent_id' => $request['parent_id']


        ]);
        $widget->saveOrFail();
        return $widget;
    }
    public function edit($id, WidgetItemRequest $request){

        $widget =$this->getWidget($id);
        $widget->update($request->only([
            'title',
            'description',
            'sort',
            'status',
            'file_id'

        ]));

    }

    public function remove($id)
    {
        $widget =$this->getWidget($id);
        $widget->delete();

    }


    private function getWidget($id)
    {
        return WidgetItem::findOrFail($id);
    }


}
