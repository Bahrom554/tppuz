<?php

namespace App\Http\UseCases\Widget;

use App\Http\Requests\Widget\WidgetRequest;
use App\Widget;

class WidgetService
{
    public function create(WidgetRequest $request)
    {

        $widget = Widget::make([
            'title' => $request['title'],
            'alias' => $request['alias'],
            'lang' => $request['lang'],
            'lang_hash' => $request['lang_hash'],
            'type' => $request['type'],
            'status' => $request['status']
        ]);
        $widget->saveOrFail();
        return $widget;

    }

    public function edit($id, WidgetRequest $request)
    {
        $widget = $this->getWidget($id);
        $widget->update($request->only([
            'title',
            'alias',
            'lang',
            'tpye',
            'status'


        ]));

    }
    public function remove($id)
    {
        $widget =$this->getWidget($id);
        $widget->delete();

    }




    private function getWidget($id)
    {
        return Widget::findOrFail($id);

    }



}
