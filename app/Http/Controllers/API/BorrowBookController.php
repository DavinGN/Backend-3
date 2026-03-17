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
            'end_date' => 'required|date|after_or_equal:borrow_date',
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
            'return_date' => $request->end_date, // ✅ FIX
            'status' => 'pending'
        ]);

        $book->update(['status' => 'pending']);

        // 🔔 Notif ke admin
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
        $borrow = BorrowBook::with('book')->findOrFail($id);

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
        $borrow = BorrowBook::with('book')->findOrFail($id);

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
        $borrow = BorrowBook::with('book')->findOrFail($id);

        if ($borrow->status !== 'approved') {
            return response()->json(['message' => 'Not approved yet'], 400);
        }

        $borrow->update(['status' => 'returned']);
        $borrow->book->update(['status' => 'tersedia']);

        return response()->json(['message' => 'Book returned']);
    }
    public function myHistory()
    {
        $userId = auth()->id();

        // ================= BOOK =================
        $books = \App\Models\BorrowBook::with('book')
            ->where('user_id', $userId)
            ->get()
            ->map(function ($b) {
                return [
                    'id' => $b->id,
                    'type' => 'book',
                    'title' => $b->book->title ?? '-',
                    'status' => $b->status,
                    'borrow_date' => $b->borrow_date,
                    'return_date' => $b->return_date,
                    'created_at' => $b->created_at,
                ];
            });

        // ================= TOOL =================
        $tools = \App\Models\BorrowTool::with('tool')
            ->where('user_id', $userId)
            ->get()
            ->map(function ($t) {
                return [
                    'id' => $t->id,
                    'type' => 'tool',
                    'title' => $t->tool->name ?? '-',
                    'status' => $t->status,
                    'borrow_date' => $t->borrow_date,
                    'return_date' => $t->return_date,
                    'created_at' => $t->created_at,
                ];
            });

        // ================= CONSUMABLE =================
        $consumables = \App\Models\ConsumableRequest::with('consumable')
            ->where('user_id', $userId)
            ->get()
            ->map(function ($c) {
                return [
                    'id' => $c->id,
                    'type' => 'consumable',
                    'title' => $c->consumable->name ?? '-',
                    'status' => $c->status,
                    'quantity' => $c->quantity,
                    'created_at' => $c->created_at,
                ];
            });

        // ================= MERGE =================
        $data = $books
            ->concat($tools)
            ->concat($consumables)
            ->values();

        return response()->json($data);
    }
}