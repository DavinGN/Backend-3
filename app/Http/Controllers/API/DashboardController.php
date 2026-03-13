<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\User;
use App\Models\BorrowBook;
use App\Models\BorrowTool;
use App\Models\Tool;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    // ================= STATS =================
    public function stats()
    {
        return response()->json([
            'books' => Book::count(),
            'tools' => Tool::count(),
            'users' => User::count(),
            'pending' =>
                BorrowBook::where('status','pending')->count()
                + BorrowTool::where('status','pending')->count(),
        ]);
    }

    // ================= TOP BOOKS (BERDASARKAN RETURNED) =================
    public function topBooks(Request $request)
    {
        $limit = $request->limit ?? 10;

        return BorrowBook::select('books.title')
            ->selectRaw('COUNT(borrow_books.id) as total')
            ->join('books', 'borrow_books.book_id', '=', 'books.id')
            ->where('borrow_books.status', 'returned')
            ->groupBy('books.title')
            ->orderByDesc('total')
            ->limit($limit)
            ->get();
    }

    // ================= TOP TOOLS (BERDASARKAN RETURNED) =================
    public function topTools(Request $request)
    {
        $limit = $request->limit ?? 10;

        return BorrowTool::select('tools.name')
            ->selectRaw('COUNT(borrow_tools.id) as total')
            ->join('tools', 'borrow_tools.tool_id', '=', 'tools.id')
            ->where('borrow_tools.status', 'returned')
            ->groupBy('tools.name')
            ->orderByDesc('total')
            ->limit($limit)
            ->get();
    }

    // ================= TOP USERS (BOOK + TOOL RETURNED) =================
    public function topUsers(Request $request)
    {
        $limit = $request->limit ?? 10;

        return User::select('users.username')
            ->selectRaw('
                (
                    (SELECT COUNT(*) FROM borrow_books 
                     WHERE borrow_books.user_id = users.id 
                     AND borrow_books.status = "returned")
                    +
                    (SELECT COUNT(*) FROM borrow_tools 
                     WHERE borrow_tools.user_id = users.id 
                     AND borrow_tools.status = "returned")
                ) as total
            ')
            ->having('total', '>', 0)
            ->orderByDesc('total')
            ->limit($limit)
            ->get();
    }

    // ================= TOP DIGITAL BOOK (JIKA ADA TABEL BORROW DIGITAL) =================
    public function topDigital(Request $request)
    {
        $limit = $request->limit ?? 10;

        return DB::table('borrow_digital_books')
            ->join('digital_books', 'borrow_digital_books.digital_book_id', '=', 'digital_books.id')
            ->select('digital_books.title')
            ->selectRaw('COUNT(borrow_digital_books.id) as total')
            ->groupBy('digital_books.title')
            ->orderByDesc('total')
            ->limit($limit)
            ->get();
    }
}