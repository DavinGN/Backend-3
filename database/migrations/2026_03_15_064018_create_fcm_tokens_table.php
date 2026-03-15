<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('fcm_tokens', function (Blueprint $table) {

            $table->id();

            $table->unsignedBigInteger('siswa_id')->nullable();
            $table->unsignedBigInteger('guru_id')->nullable();
            $table->unsignedBigInteger('admin_id')->nullable();

            $table->text('fcm_token');

            $table->string('device_type')->nullable();

            $table->boolean('is_active')->default(true);

            $table->timestamp('last_used_at')->nullable();

            $table->json('preference')->nullable();

            $table->timestamps();

        });
    }

    public function down(): void
    {
        Schema::dropIfExists('fcm_tokens');
    }
};