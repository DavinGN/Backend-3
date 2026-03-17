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
        $today = Carbon::today()->toDateString();
        $tomorrow = Carbon::tomorrow()->toDateString();

        $admins = User::whereHas('role', fn($q) => $q->where('name','admin'))->get();

        /*
        ============================================
        📚 BOOK REMINDER
        ============================================
        */

        $books = BorrowBook::with(['user','book'])
            ->where('status','approved')
            ->get();

        foreach ($books as $b) {

            $username = $b->user->username ?? 'User';
            $title = $b->book->title ?? 'Buku';

            // ================= H-1 =================
            if ($b->return_date == $tomorrow) {

                $exists = Notification::where('user_id',$b->user_id)
                    ->where('message',"Besok pengembalian buku \"$title\"")
                    ->whereDate('created_at',$today)
                    ->exists();

                if (!$exists) {

                    Notification::create([
                        'user_id'=>$b->user_id,
                        'message'=>"Besok pengembalian buku \"$title\"",
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
            if ($b->return_date == $today) {

                $exists = Notification::where('user_id',$b->user_id)
                    ->where('message',"Hari ini batas pengembalian buku \"$title\"")
                    ->whereDate('created_at',$today)
                    ->exists();

                if (!$exists) {

                    Notification::create([
                        'user_id'=>$b->user_id,
                        'message'=>"Hari ini batas pengembalian buku \"$title\"",
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
            if ($b->return_date < $today) {

                // USER
                $existsUser = Notification::where('user_id',$b->user_id)
                    ->where('message',"Buku \"$title\" terlambat dikembalikan")
                    ->whereDate('created_at',$today)
                    ->exists();

                if (!$existsUser) {

                    Notification::create([
                        'user_id'=>$b->user_id,
                        'message'=>"Buku \"$title\" terlambat dikembalikan",
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $b->user_id,
                        'Terlambat!',
                        "Buku \"$title\" sudah melewati batas pengembalian"
                    );
                }

                // ADMIN
                foreach ($admins as $admin) {

                    $existsAdmin = Notification::where('user_id',$admin->id)
                        ->where('message',"Buku \"$title\" milik $username terlambat")
                        ->whereDate('created_at',$today)
                        ->exists();

                    if (!$existsAdmin) {

                        Notification::create([
                            'user_id'=>$admin->id,
                            'message'=>"Buku \"$title\" milik $username terlambat",
                            'is_read'=>false
                        ]);

                        FcmService::sendToUser(
                            $admin->id,
                            'Peringatan!',
                            "$username terlambat mengembalikan buku \"$title\""
                        );
                    }
                }
            }
        }

        /*
        ============================================
        🔧 TOOL REMINDER
        ============================================
        */

        $tools = BorrowTool::with(['user','tool'])
            ->where('status','approved')
            ->get();

        foreach ($tools as $t) {

            $username = $t->user->username ?? 'User';
            $name = $t->tool->name ?? 'Alat';

            // ================= H-1 =================
            if ($t->return_date == $tomorrow) {

                $exists = Notification::where('user_id',$t->user_id)
                    ->where('message',"Besok pengembalian alat \"$name\"")
                    ->whereDate('created_at',$today)
                    ->exists();

                if (!$exists) {

                    Notification::create([
                        'user_id'=>$t->user_id,
                        'message'=>"Besok pengembalian alat \"$name\"",
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
            if ($t->return_date == $today) {

                $exists = Notification::where('user_id',$t->user_id)
                    ->where('message',"Hari ini batas pengembalian alat \"$name\"")
                    ->whereDate('created_at',$today)
                    ->exists();

                if (!$exists) {

                    Notification::create([
                        'user_id'=>$t->user_id,
                        'message'=>"Hari ini batas pengembalian alat \"$name\"",
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
            if ($t->return_date < $today) {

                // USER
                $existsUser = Notification::where('user_id',$t->user_id)
                    ->where('message',"Alat \"$name\" terlambat dikembalikan")
                    ->whereDate('created_at',$today)
                    ->exists();

                if (!$existsUser) {

                    Notification::create([
                        'user_id'=>$t->user_id,
                        'message'=>"Alat \"$name\" terlambat dikembalikan",
                        'is_read'=>false
                    ]);

                    FcmService::sendToUser(
                        $t->user_id,
                        'Terlambat!',
                        "Alat \"$name\" sudah melewati batas pengembalian"
                    );
                }

                // ADMIN
                foreach ($admins as $admin) {

                    $existsAdmin = Notification::where('user_id',$admin->id)
                        ->where('message',"Alat \"$name\" milik $username terlambat")
                        ->whereDate('created_at',$today)
                        ->exists();

                    if (!$existsAdmin) {

                        Notification::create([
                            'user_id'=>$admin->id,
                            'message'=>"Alat \"$name\" milik $username terlambat",
                            'is_read'=>false
                        ]);

                        FcmService::sendToUser(
                            $admin->id,
                            'Peringatan!',
                            "$username terlambat mengembalikan alat \"$name\""
                        );
                    }
                }
            }
        }

        $this->info('Reminder checked successfully');
    }
}