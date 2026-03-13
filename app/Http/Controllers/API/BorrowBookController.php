<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\BorrowBook;
use App\Models\User;
use App\Models\Notification;
use Illuminate\Http\Request;

class BorrowBookController extends Controller
{
    // ================= LIST ALL BORROW =================
    public function index()
    {
        return BorrowBook::with(['user','book'])
            ->orderBy('created_at','desc')
            ->get();
    }

    // ================= USER REQUEST =================
    public function store(Request $request)
    {
        $request->validate([
            'book_id' => 'required|exists:books,id',
            'borrow_date' => 'required|date',
            'return_date' => 'required|date|after:borrow_date'
        ]);

        $book = Book::findOrFail($request->book_id);

        if ($book->status !== 'tersedia') {
            return response()->json([
                'message' => 'Buku tidak tersedia'
            ], 400);
        }

        $borrow = BorrowBook::create([
            'user_id' => auth()->id(),
            'book_id' => $book->id,
            'borrow_date' => $request->borrow_date,
            'return_date' => $request->return_date,
            'status' => 'pending'
        ]);

        $book->update([
            'status' => 'pending'
        ]);

        // NOTIFIKASI KE SEMUA ADMIN
        $admins = User::whereHas('role', function($q){
            $q->where('name','admin');
        })->get();

        foreach ($admins as $admin) {
            Notification::create([
                'user_id' => $admin->id,
                'message' => 'Peminjaman buku baru dari ' . auth()->user()->username,
                'is_read' => false
            ]);
        }

        return response()->json($borrow, 201);
    }

    // ================= APPROVE =================
    public function approve($id)
    {
        $borrow = BorrowBook::findOrFail($id);

        if ($borrow->status !== 'pending') {
            return response()->json([
                'message' => 'Already processed'
            ], 400);
        }

        $borrow->update([
            'status' => 'approved',
            'verified_by' => auth()->id()
        ]);

        $borrow->book->update([
            'status' => 'dipinjam'
        ]);

        return response()->json([
            'message' => 'Approved successfully'
        ]);

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman buku disetujui',
            'is_read' => false
        ]);
    }

    // ================= REJECT =================
    public function reject($id)
    {
        $borrow = BorrowBook::findOrFail($id);

        if ($borrow->status !== 'pending') {
            return response()->json([
                'message' => 'Already processed'
            ], 400);
        }

        $borrow->update([
            'status' => 'rejected',
            'verified_by' => auth()->id()
        ]);

        $borrow->book->update([
            'status' => 'tersedia'
        ]);

        return response()->json([
            'message' => 'Rejected successfully'
        ]);

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman buku ditolak',
            'is_read' => false
        ]);
    }

    // ================= RETURN =================
    public function returnBook($id)
    {
        $borrow = BorrowBook::findOrFail($id);

        if ($borrow->status !== 'approved') {
            return response()->json([
                'message' => 'Not approved yet'
            ], 400);
        }

        $borrow->update([
            'status' => 'returned'
        ]);

        $borrow->book->update([
            'status' => 'tersedia'
        ]);

        return response()->json([
            'message' => 'Book returned'
        ]);
    }

    // ================= MY HISTORY =================
    public function myHistory()
    {
        $userId = auth()->id();

        $books = \App\Models\BorrowBook::with('book')
            ->where('user_id', $userId)
            ->get()
            ->map(function ($item) {
                return [
                    'type' => 'book',
                    'title' => $item->book->title ?? '-',
                    'status' => $item->status,
                    'borrow_date' => $item->borrow_date,
                    'return_date' => $item->return_date,
                ];
            });

        $tools = \App\Models\BorrowTool::with('tool')
            ->where('user_id', $userId)
            ->get()
            ->map(function ($item) {
                return [
                    'type' => 'tool',
                    'title' => $item->tool->name ?? '-',
                    'status' => $item->status,
                    'borrow_date' => $item->borrow_date,
                    'return_date' => $item->return_date,
                ];
            });

        $consumables = \App\Models\ConsumableRequest::with('consumable')
            ->where('user_id', $userId)
            ->get()
            ->map(function ($item) {
                return [
                    'type' => 'consumable',
                    'title' => $item->consumable->name ?? '-',
                    'status' => $item->status,
                    'quantity' => $item->quantity,
                    'borrow_date' => null,
                    'return_date' => null,
                ];
            });

        $history = $books
            ->concat($tools)
            ->concat($consumables)
            ->sortByDesc('borrow_date')
            ->values();

        return response()->json($history);
    }
}