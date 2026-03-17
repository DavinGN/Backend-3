<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\BorrowBook;
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
        $tomorrow = Carbon::tomorrow()->toDateString();
        $today = Carbon::today()->toDateString();

        // ================= H-1 REMINDER =================
        $borrowTomorrow = BorrowBook::whereDate('return_date', $tomorrow)
            ->where('status', 'approved')
            ->get();

        foreach ($borrowTomorrow as $b) {

            // ❗ ANTI DUPLIKAT
            $exists = Notification::where('user_id', $b->user_id)
                ->where('message', 'Pengembalian buku besok')
                ->whereDate('created_at', today())
                ->exists();

            if (!$exists) {

                Notification::create([
                    'user_id' => $b->user_id,
                    'message' => 'Pengembalian buku besok',
                    'is_read' => false
                ]);

                // 🔥 FCM
                FcmService::sendToUser(
                    $b->user_id,
                    'Reminder Pengembalian',
                    'Besok adalah batas pengembalian buku'
                );
            }
        }

        // ================= HARI INI =================
        $borrowToday = BorrowBook::whereDate('return_date', $today)
            ->where('status', 'approved')
            ->get();

        foreach ($borrowToday as $b) {

            $exists = Notification::where('user_id', $b->user_id)
                ->where('message', 'Hari ini batas pengembalian buku')
                ->whereDate('created_at', today())
                ->exists();

            if (!$exists) {

                Notification::create([
                    'user_id' => $b->user_id,
                    'message' => 'Hari ini batas pengembalian buku',
                    'is_read' => false
                ]);

                FcmService::sendToUser(
                    $b->user_id,
                    'Reminder Pengembalian',
                    'Hari ini batas pengembalian buku'
                );
            }
        }

        // ================= TERLAMBAT =================
        $late = BorrowBook::whereDate('return_date', '<', $today)
            ->where('status', 'approved')
            ->get();

        $admins = User::whereHas('role', fn($q) => $q->where('name', 'admin'))->get();

        foreach ($late as $b) {

            foreach ($admins as $admin) {

                $exists = Notification::where('user_id', $admin->id)
                    ->where('message', 'Ada buku yang melewati tanggal pengembalian')
                    ->whereDate('created_at', today())
                    ->exists();

                if (!$exists) {

                    Notification::create([
                        'user_id' => $admin->id,
                        'message' => 'Ada buku yang melewati tanggal pengembalian',
                        'is_read' => false
                    ]);

                    FcmService::sendToUser(
                        $admin->id,
                        'Peringatan Keterlambatan',
                        'Ada buku yang melewati tanggal pengembalian'
                    );
                }
            }
        }

        $this->info('Reminder checked successfully');
    }
}