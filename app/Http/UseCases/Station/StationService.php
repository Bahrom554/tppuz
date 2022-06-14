<?php

namespace App\Http\UseCases\Station;

use App\Http\Requests\Station\StationRequest;
use App\Station;

class StationService
{
    public function create(StationRequest $request)
    {
        $station = Station::make([
            'title' => $request['title'],
            'file_id' => $request['file_id'],
            'phone' => $request['phone'],
            'address' => $request['address'],
            'fax' => $request['fax'],
            'email' => $request['email'],
            'region_id' => $request['region_id'],
            'lang' => $request['lang'],
            'lang_hash' => $request['lang_hash'],
            'status' => $request['status'],
            'lat' => $request['lat'],
            'long' => $request['long']


        ]);
        $station->saveOrFail();

        return $station;
    }

    public function edit($id, StationRequest $request)
    {
        $station = $this->getStation($id);

        $station->update($request->only([
            'title',
            'phone',
            'address',
            'fax',
            'email',
            'region_id',
            'lang',
            'lang_hash',
            'lat',
            'long',
            'file_id'


        ]));

    }
    public function remove($id)
    {
        $station = $this->getStation($id);

        $station->delete();
    }

    private function getStation($id)
    {
        return Station::findOrFail($id);
    }


}
