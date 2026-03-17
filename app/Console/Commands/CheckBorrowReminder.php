<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\BorrowBook;
use App\Models\BorrowTool;
use App\Models\Notification;
use App\Models\User;
use App\Services\FcmService;
use Carbon\Carbon;

class CheckBorrowReminder extends Command
{
    protected $signature = 'borrow:reminder';
    protected $description = 'Check borrow reminder';

    public function handle()
    {
        $today = Carbon::today();
        $tomorrow = Carbon::tomorrow();

        // ambil admin
        $admins = User::whereHas('role', fn($q) => $q->where('name','admin'))->get();

        /*
        ============================================
        📚 BOOK REMINDER
        ============================================
        */

        $books = BorrowBook::with(['user','book'])
            ->whereIn('status',['approved','dipinjam'])
            ->get();

        foreach ($books as $b) {

            $returnDate = Carbon::parse($b->return_date);
            $username = $b->user->username ?? 'User';
            $title = $b->book->title ?? 'Buku';

            // ================= H-1 =================
            if ($returnDate->isSameDay($tomorrow)) {

                $message = "Besok pengembalian buku \"$title\"";

                if (!$this->alreadyNotified($b->user_id, $message)) {

                    Notification::create([
                        'user_id'=>$b->user_id,
                        'message'=>$message,
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $b->user_id,
                        'Reminder H-1',
                        "Besok batas pengembalian buku \"$title\""
                    );
                }
            }

            // ================= HARI INI =================
            if ($returnDate->isSameDay($today)) {

                $message = "Hari ini batas pengembalian buku \"$title\"";

                if (!$this->alreadyNotified($b->user_id, $message)) {

                    Notification::create([
                        'user_id'=>$b->user_id,
                        'message'=>$message,
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $b->user_id,
                        'Reminder Hari Ini',
                        "Hari ini batas pengembalian buku \"$title\""
                    );
                }
            }

            // ================= TERLAMBAT =================
            if ($returnDate->lt($today)) {

                // ===== USER =====
                $messageUser = "Buku \"$title\" terlambat dikembalikan";

                if (!$this->alreadyNotified($b->user_id, $messageUser)) {

                    Notification::create([
                        'user_id'=>$b->user_id,
                        'message'=>$messageUser,
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $b->user_id,
                        'Terlambat!',
                        "Buku \"$title\" sudah melewati batas pengembalian"
                    );
                }

                // ===== ADMIN =====
                $messageAdmin = "Buku \"$title\" milik $username terlambat";

                foreach ($admins as $admin) {

                    if (!$this->alreadyNotified($admin->id, $messageAdmin)) {

                        Notification::create([
                            'user_id'=>$admin->id,
                            'message'=>$messageAdmin,
                            'is_read'=>false
                        ]);
                    }
                }

                // 🔥 kirim ke semua admin SEKALI
                FcmService::sendToAdmins(
                    'Peringatan!',
                    "$username terlambat mengembalikan buku \"$title\""
                );
            }
        }

        /*
        ============================================
        🔧 TOOL REMINDER
        ============================================
        */

        $tools = BorrowTool::with(['user','tool'])
            ->whereIn('status',['approved','dipinjam'])
            ->get();

        foreach ($tools as $t) {

            $returnDate = Carbon::parse($t->return_date);
            $username = $t->user->username ?? 'User';
            $name = $t->tool->name ?? 'Alat';

            // ================= H-1 =================
            if ($returnDate->isSameDay($tomorrow)) {

                $message = "Besok pengembalian alat \"$name\"";

                if (!$this->alreadyNotified($t->user_id, $message)) {

                    Notification::create([
                        'user_id'=>$t->user_id,
                        'message'=>$message,
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $t->user_id,
                        'Reminder H-1',
                        "Besok batas pengembalian alat \"$name\""
                    );
                }
            }

            // ================= HARI INI =================
            if ($returnDate->isSameDay($today)) {

                $message = "Hari ini batas pengembalian alat \"$name\"";

                if (!$this->alreadyNotified($t->user_id, $message)) {

                    Notification::create([
                        'user_id'=>$t->user_id,
                        'message'=>$message,
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $t->user_id,
                        'Reminder Hari Ini',
                        "Hari ini batas pengembalian alat \"$name\""
                    );
                }
            }

            // ================= TERLAMBAT =================
            if ($returnDate->lt($today)) {

                // ===== USER =====
                $messageUser = "Alat \"$name\" terlambat dikembalikan";

                if (!$this->alreadyNotified($t->user_id, $messageUser)) {

                    Notification::create([
                        'user_id'=>$t->user_id,
                        'message'=>$messageUser,
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $t->user_id,
                        'Terlambat!',
                        "Alat \"$name\" sudah melewati batas pengembalian"
                    );
                }

                // ===== ADMIN =====
                $messageAdmin = "Alat \"$name\" milik $username terlambat";

                foreach ($admins as $admin) {

                    if (!$this->alreadyNotified($admin->id, $messageAdmin)) {

                        Notification::create([
                            'user_id'=>$admin->id,
                            'message'=>$messageAdmin,
                            'is_read'=>false
                        ]);
                    }
                }

                FcmService::sendToAdmins(
                    'Peringatan!',
                    "$username terlambat mengembalikan alat \"$name\""
                );
            }
        }

        $this->info('Reminder checked successfully');
    }

    // ================= HELPER =================
    private function alreadyNotified($userId, $message)
    {
        return Notification::where('user_id',$userId)
            ->where('message',$message)
            ->whereDate('created_at', Carbon::today())
            ->exists();
    }
}