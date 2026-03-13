<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Tool;
use Illuminate\Http\Request;

class ToolController extends Controller
{
    // ================= INDEX =================
    public function index(Request $request)
    {
        $query = Tool::with('category');

        // 🔍 SEARCH
        if ($request->search) {
            $search = $request->search;

            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%$search%")
                  ->orWhere('location', 'like', "%$search%");
            });
        }

        // 🔥 FILTER STATUS
        if ($request->status && $request->status !== 'all') {
            $query->where('status', $request->status);
        }

        $tools = $query->paginate(10);

        return response()->json($tools);
    }

    // ================= STORE =================
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'location' => 'nullable',
            'status' => 'nullable|in:tersedia,pending,dipinjam'
        ]);

        // DEFAULT VALUE
        $data['location'] = $data['location'] ?? '-';
        $data['status'] = $data['status'] ?? 'tersedia';

        return Tool::create($data);
    }

    // ================= SHOW =================
    public function show($id)
    {
        return Tool::with('category')->findOrFail($id);
    }

    // ================= UPDATE =================
    public function update(Request $request, $id)
    {
        $tool = Tool::findOrFail($id);

        $data = $request->validate([
            'name' => 'nullable',
            'location' => 'nullable',
            'status' => 'nullable|in:tersedia,pending,dipinjam'
        ]);

        $tool->update($data);

        return response()->json($tool);
    }

    // ================= DELETE =================
    public function destroy($id)
    {
        Tool::destroy($id);
        return response()->json(['message' => 'Deleted']);
    }
}