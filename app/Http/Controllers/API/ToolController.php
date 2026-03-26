<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Tool;
use Illuminate\Http\Request;

class ToolController extends Controller
{

    // ================= LIST TOOLS =================
    public function index(Request $request)
    {
        $query = Tool::with('kondisi');

        // SEARCH
        if ($request->search) {

            $search = $request->search;

            $query->where(function ($q) use ($search) {

                $q->where('name', 'like', "%$search%")
                  ->orWhere('location', 'like', "%$search%");

            });

        }

        // FILTER STATUS
        if ($request->status && $request->status !== 'all') {
            $query->where('status', $request->status);
        }

        $tools = $query->paginate(10);

        return response()->json($tools);
    }


    // ================= CREATE TOOL =================
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string',
            'location' => 'nullable|string',
            'status' => 'nullable|in:tersedia,pending,dipinjam',
            'kondisi_id' => 'nullable|exists:kondisis,id'
        ]);

        $data['location'] = $data['location'] ?? '-';
        $data['status'] = $data['status'] ?? 'tersedia';

        $tool = Tool::create($data);

        return response()->json($tool);
    }


    // ================= DETAIL TOOL =================
    public function show($id)
    {
        $tool = Tool::with('kondisi')->findOrFail($id);

        return response()->json($tool);
    }


    // ================= UPDATE TOOL =================
    public function update(Request $request, $id)
    {
        $tool = Tool::findOrFail($id);

        $data = $request->validate([
            'name' => 'nullable|string',
            'location' => 'nullable|string',
            'status' => 'nullable|in:tersedia,pending,dipinjam',
            'kondisi_id' => 'nullable|exists:kondisis,id'
        ]);

        $tool->update($data);

        return response()->json($tool);
    }


    // ================= DELETE TOOL =================
    public function destroy($id)
    {
        $tool = Tool::findOrFail($id);

        $tool->delete();

        return response()->json([
            'message' => 'Tool deleted'
        ]);
    }

}