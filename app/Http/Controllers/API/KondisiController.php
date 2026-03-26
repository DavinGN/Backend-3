<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Kondisi;
use Illuminate\Http\Request;

class KondisiController extends Controller
{
    public function index()
    {
        return response()->json(
            Kondisi::select('id','name')->get()
        );
    }

    public function show($id)
    {
        return response()->json(
            Kondisi::findOrFail($id)
        );
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string|max:100'
        ]);

        return Kondisi::create($data);
    }

    public function update(Request $request, $id)
    {
        $kondisi = Kondisi::findOrFail($id);

        $data = $request->validate([
            'name' => 'required|string|max:100'
        ]);

        $kondisi->update($data);

        return $kondisi;
    }

    public function destroy($id)
    {
        Kondisi::destroy($id);

        return response()->json([
            'message' => 'Deleted'
        ]);
    }
}