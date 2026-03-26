<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Kondisi;
use Illuminate\Http\Request;

class KondisiController extends Controller
{

    // LIST KONDISI
    public function index()
    {
        $kondisi = Kondisi::all();

        return response()->json($kondisi);
    }


    // CREATE KONDISI
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string'
        ]);

        $kondisi = Kondisi::create($data);

        return response()->json($kondisi);
    }


    // DETAIL
    public function show($id)
    {
        $kondisi = Kondisi::findOrFail($id);

        return response()->json($kondisi);
    }


    // UPDATE
    public function update(Request $request, $id)
    {
        $kondisi = Kondisi::findOrFail($id);

        $data = $request->validate([
            'name' => 'required|string'
        ]);

        $kondisi->update($data);

        return response()->json($kondisi);
    }


    // DELETE
    public function destroy($id)
    {
        Kondisi::destroy($id);

        return response()->json([
            'message' => 'Deleted'
        ]);
    }

}