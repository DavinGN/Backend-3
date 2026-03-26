<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Tool;
use Illuminate\Http\Request;

class ToolController extends Controller
{
    public function index(Request $request)
    {
        $query = Tool::with('kondisi');

        if ($request->search) {
            $query->where(function ($q) use ($request) {
                $q->where('name', 'like', "%{$request->search}%")
                  ->orWhere('location', 'like', "%{$request->search}%");
            });
        }

        if ($request->status && $request->status !== 'all') {
            $query->where('status', $request->status);
        }

        // 🔥 TAMBAHAN: HANDLE EXPORT ALL
        if ($request->has('all')) {
            return response()->json($query->get());
        }

        return response()->json($query->paginate(10));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string',
            'location' => 'nullable|string',
            'status' => 'nullable|in:tersedia,pending,dipinjam',
            'kondisi_id' => 'nullable|exists:kondisi,id'
        ]);

        $data['location'] = $data['location'] ?? '-';
        $data['status'] = $data['status'] ?? 'tersedia';

        return Tool::create($data);
    }

    public function show($id)
    {
        return Tool::with('kondisi')->findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $tool = Tool::findOrFail($id);

        $data = $request->validate([
            'name' => 'nullable|string',
            'location' => 'nullable|string',
            'status' => 'nullable|in:tersedia,pending,dipinjam',
            'kondisi_id' => 'nullable|exists:kondisi,id'
        ]);

        $tool->update($data);

        return $tool;
    }

    public function destroy($id)
    {
        Tool::destroy($id);

        return response()->json([
            'message' => 'Deleted'
        ]);
    }
}