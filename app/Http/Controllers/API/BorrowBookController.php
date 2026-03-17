<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\BorrowBook;
use App\Models\User;
use App\Models\Notification;
use Illuminate\Http\Request;
use App\Services\FcmService;

class BorrowBookController extends Controller
{
    public function index()
    {
        return BorrowBook::with(['user','book'])
            ->orderBy('created_at','desc')
            ->get();
    }

    public function store(Request $request)
    {
        $request->validate([
            'book_id' => 'required|exists:books,id',
            'borrow_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
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

        $book->update(['status' => 'pending']);

        $admins = User::whereHas('role', fn($q) => $q->where('name','admin'))->get();

        foreach ($admins as $admin) {
            Notification::create([
                'user_id' => $admin->id,
                'message' => 'Peminjaman buku baru dari ' . auth()->user()->username,
                'is_read' => false
            ]);
        }

        try {
            FcmService::sendToAdmins(
                'Peminjaman Buku Baru',
                'Ada peminjaman buku baru dari ' . auth()->user()->username
            );
        } catch (\Exception $e) {
            \Log::error("FCM: ".$e->getMessage());
        }

        return response()->json($borrow, 201);
    }

    public function approve($id)
    {
        $borrow = BorrowBook::findOrFail($id);

        if ($borrow->status !== 'pending') {
            return response()->json(['message' => 'Already processed'], 400);
        }

        $borrow->update([
            'status' => 'approved',
            'verified_by' => auth()->id()
        ]);

        $borrow->book->update(['status' => 'dipinjam']);

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman buku disetujui',
            'is_read' => false
        ]);

        try {
            FcmService::sendToUser(
                $borrow->user_id,
                'Peminjaman Buku Disetujui',
                'Peminjaman buku Anda disetujui oleh admin'
            );
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
        }

        return response()->json(['message' => 'Approved successfully']);
    }

    public function reject($id)
    {
        $borrow = BorrowBook::findOrFail($id);

        if ($borrow->status !== 'pending') {
            return response()->json(['message' => 'Already processed'], 400);
        }

        $borrow->update([
            'status' => 'rejected',
            'verified_by' => auth()->id()
        ]);

        $borrow->book->update(['status' => 'tersedia']);

        Notification::create([
            'user_id' => $borrow->user_id,
            'message' => 'Peminjaman buku ditolak',
            'is_read' => false
        ]);

        try {
            FcmService::sendToUser(
                $borrow->user_id,
                'Peminjaman Buku Ditolak',
                'Peminjaman buku Anda ditolak oleh admin'
            );
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
        }

        return response()->json(['message' => 'Rejected successfully']);
    }

    public function returnBook($id)
    {
        $borrow = BorrowBook::findOrFail($id);

        if ($borrow->status !== 'approved') {
            return response()->json(['message' => 'Not approved yet'], 400);
        }

        $borrow->update(['status' => 'returned']);
        $borrow->book->update(['status' => 'tersedia']);

        return response()->json(['message' => 'Book returned']);
    }
}