<?php

namespace App\Http\UseCases\History;

use App\History;
use App\Http\Requests\History\HistoryRequest;

class HistoryService
{
    public function create(HistoryRequest $request)
    {
        $history =History::make([
            'title' => $request['title'],
            'slug' => $request['slug'],
            'description'=>$request['description'],
            'type'=>$request['type'],
            'file_id'=>$request['file_id'],
            'documents'=>$request['documents'],
            'anons'=>$request['anons'],
            'content' => $request['content'],
            'lang' => $request['lang'],
            'lang_hash' => $request['lang_hash'],
            'status' => $request['status'],
        ]);
        $history->saveOrFail();

        return $history;
    }
    public function edit($id, HistoryRequest $request)
    {
        $history = $this->getHistory($id);

        $history->update($request->only([
            'title',
            'slug',
            'description',
            'type',
            'documents',
            'anons',
            'content',
            'lang',
            'file_id'


        ]));

    }

    public function remove($id)
    {
        $history = $this->getHistory($id);

        $history->delete();
    }

    private function getHistory($id)
    {
        return History::findOrFail($id);
    }


}
