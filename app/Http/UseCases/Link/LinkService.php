<?php

namespace App\Http\UseCases\Link;

use App\Http\Requests\Links\LinkRequest;
use App\Useful_link;

class LinkService
{
    public function create(LinkRequest $request)
    {
        $link = Useful_link::make([
            'name_uz' => $request['name_uz'],
            'name_ru' => $request['name_ru'],
            'name_en' => $request['name_en'],
            'name_oz' => $request['name_oz'],
            'status'=>$request['status'],
            'link' => $request['link'],
            'file_id' => $request['file_id']
        ]);
        $link->saveOrFail();

        return $link;
    }
    public function edit($id, LinkRequest $request)
    {
        $link = $this->getLink($id);

        $link->update($request->only([
            'name_uz',
            'name_ru',
            'name_en',
            'name_oz',
            'status',
            'link',
            'file_id'



        ]));

    }

    public function remove($id)
    {
        $link = $this->getLink($id);

        $link->delete();
    }

    private function getLink($id)
    {
        return Useful_link::findOrFail($id);
    }


}
