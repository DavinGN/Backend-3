<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Consumable;
use Illuminate\Http\Request;

class ConsumableController extends Controller
{
    public function index(Request $request)
    {
        $q = Consumable::query();

        if ($request->search) {
            $search = $request->search;
            $q->where('name', 'like', "%$search%");
        }

        return $q->paginate(10);
    }

    public function store(Request $request){
        return Consumable::create($request->all());
    }

    public function update(Request $request,$id){
        $item = Consumable::findOrFail($id);
        $item->update($request->all());
        return $item;
    }

    public function destroy($id){
        Consumable::destroy($id);
        return response()->json(['message'=>'Deleted']);
    }
}
