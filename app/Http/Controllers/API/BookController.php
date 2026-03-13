<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    // ================= INDEX =================
    public function index(Request $request)
    {
        $search = $request->search;
        $status = $request->status;

        $books = Book::with('category')
            ->when($search, function ($q) use ($search) {
                $q->where(function ($query) use ($search) {
                    $query->where('title', 'like', "%$search%")
                          ->orWhere('author', 'like', "%$search%")
                          ->orWhere('publisher', 'like', "%$search%")
                          ->orWhereHas('category', function ($c) use ($search) {
                              $c->where('name', 'like', "%$search%");
                          });
                });
            })
            ->when($status, function ($q) use ($status) {
                $q->where('status', $status);
            })
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        return response()->json($books);
    }

    // ================= STORE =================
    public function store(Request $request)
    {
        $data = $request->validate([
            'title' => 'required',
            'author' => 'nullable',
            'publisher' => 'nullable',
            'pages' => 'nullable',
            'category_id' => 'nullable',
            'location' => 'nullable',
            'status' => 'nullable|in:tersedia,pending,dipinjam'
        ]);

        $data['location'] = $data['location'] ?? '-';
        $data['status'] = $data['status'] ?? 'tersedia';

        return response()->json(Book::create($data), 201);
    }

    // ================= SHOW =================
    public function show($id)
    {
        return response()->json(
            Book::with('category')->findOrFail($id)
        );
    }

    // ================= UPDATE =================
    public function update(Request $request, $id)
    {
        $book = Book::findOrFail($id);

        $data = $request->validate([
            'title' => 'nullable',
            'author' => 'nullable',
            'publisher' => 'nullable',
            'pages' => 'nullable',
            'category_id' => 'nullable',
            'location' => 'nullable',
            'status' => 'nullable|in:tersedia,pending,dipinjam'
        ]);

        $book->update($data);

        return response()->json($book);
    }

    // ================= DELETE =================
    public function destroy($id)
    {
        Book::destroy($id);
        return response()->json(['message' => 'Deleted']);
    }
}