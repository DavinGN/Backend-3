<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\BorrowBook;
use App\Models\Notification;
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
        $borrowTomorrow = BorrowBook::whereDate('return_date',$tomorrow)
            ->where('status','approved')
            ->get();

        foreach($borrowTomorrow as $b){

            Notification::create([
                'user_id'=>$b->user_id,
                'message'=>'Pengembalian buku besok',
                'is_read'=>false
            ]);
        }

        // ================= HARI PENGEMBALIAN =================
        $borrowToday = BorrowBook::whereDate('return_date',$today)
            ->where('status','approved')
            ->get();

        foreach($borrowToday as $b){

            Notification::create([
                'user_id'=>$b->user_id,
                'message'=>'Hari ini batas pengembalian buku',
                'is_read'=>false
            ]);
        }

        // ================= BUKU TERLAMBAT =================
        $late = BorrowBook::whereDate('return_date','<',$today)
            ->where('status','approved')
            ->get();

        foreach($late as $b){

            Notification::create([
                'user_id'=>1, // admin id
                'message'=>'Ada buku yang melewati tanggal pengembalian',
                'is_read'=>false
            ]);
        }

        $this->info('Reminder checked successfully');
    }
}