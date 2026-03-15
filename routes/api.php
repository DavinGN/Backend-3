<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\BookController;
use App\Http\Controllers\API\ToolController;
use App\Http\Controllers\API\BorrowBookController;
use App\Http\Controllers\API\BorrowToolController;
use App\Http\Controllers\API\ConsumableController;
use App\Http\Controllers\API\ConsumableRequestController;
use App\Http\Controllers\API\DigitalBookController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\NotificationController;
use App\Http\Controllers\API\DashboardController;
use App\Http\Controllers\API\FcmTokenController;

/*
|--------------------------------------------------------------------------
| PUBLIC
|--------------------------------------------------------------------------
*/

Route::post('/login', [AuthController::class, 'login']);


/*
|--------------------------------------------------------------------------
| AUTHENTICATED USERS (ALL ROLES)
|--------------------------------------------------------------------------
*/

Route::middleware('auth:sanctum')->group(function () {

    /*
    |--------------------------------------------------------------------------
    | GENERAL DATA (ALL LOGGED USERS)
    |--------------------------------------------------------------------------
    */

    Route::get('/books', [BookController::class, 'index']);
    Route::get('/books/{id}', [BookController::class, 'show']);

    Route::get('/tools', [ToolController::class, 'index']);
    Route::get('/tools/{id}', [ToolController::class, 'show']);

    Route::get('/consumables', [ConsumableController::class, 'index']);
    Route::get('/digital-books', [DigitalBookController::class, 'index']);

    Route::get('/categories', function () {
        return \App\Models\Category::select('id','name')->get();
    });

    Route::get('/roles', function () {
        return \App\Models\Role::select('id','name')->get();
    });

    Route::get('/my-history', [BorrowBookController::class, 'myHistory']);
    
    /*
    |--------------------------------------------------------------------------
    | DASHBOARD (ALL LOGGED USERS)
    |--------------------------------------------------------------------------
    */

    Route::get('/stats', [DashboardController::class, 'stats']);
    Route::get('/dashboard/top-books', [DashboardController::class, 'topBooks']);
    Route::get('/dashboard/top-tools', [DashboardController::class, 'topTools']);
    Route::get('/dashboard/top-users', [DashboardController::class, 'topUsers']);
    Route::get('/dashboard/top-digital', [DashboardController::class, 'topDigital']);


    /*
    |--------------------------------------------------------------------------
    | USER ACTION (GURU / MURID)
    |--------------------------------------------------------------------------
    */

    Route::middleware('role:guru,murid')->group(function () {

        Route::post('/borrow/book', [BorrowBookController::class, 'store']);
        Route::post('/borrow/tool', [BorrowToolController::class, 'store']);

        Route::post('/request-consumable', [ConsumableRequestController::class, 'store']);
    });


    /*
    |--------------------------------------------------------------------------
    | ADMIN ONLY
    |--------------------------------------------------------------------------
    */

    Route::middleware('role:admin')->group(function () {

        // ================= CRUD =================
        Route::apiResource('books', BookController::class)->except(['index','show']);
        Route::apiResource('tools', ToolController::class)->except(['index','show']);
        Route::apiResource('consumables', ConsumableController::class)->except(['index']);
        Route::apiResource('digital-books', DigitalBookController::class)->except(['index']);
        Route::apiResource('users', UserController::class);

        // ================= BOOK APPROVAL =================
        Route::get('/borrow-books', [BorrowBookController::class, 'index']);
        Route::post('/borrow-books/{id}/approve', [BorrowBookController::class, 'approve']);
        Route::post('/borrow-books/{id}/reject', [BorrowBookController::class, 'reject']);
        Route::post('/borrow-books/{id}/return', [BorrowBookController::class, 'returnBook']);

        // ================= TOOL APPROVAL =================
        Route::get('/borrow-tools', [BorrowToolController::class, 'index']);
        Route::post('/borrow-tools/{id}/approve', [BorrowToolController::class, 'approve']);
        Route::post('/borrow-tools/{id}/reject', [BorrowToolController::class, 'reject']);
        Route::post('/borrow-tools/{id}/return', [BorrowToolController::class, 'returnTool']);

        // ================= CONSUMABLE APPROVAL =================
        Route::get('/consumable-requests', [ConsumableRequestController::class, 'index']);
        Route::post('/consumable-requests/{id}/approve', [ConsumableRequestController::class, 'approve']);
        Route::post('/consumable-requests/{id}/reject', [ConsumableRequestController::class, 'reject']);

        // ================= NOTIFICATIONS =================
        Route::get('/notifications', [NotificationController::class, 'index']);
        Route::post('/notifications/{id}/read', [NotificationController::class, 'markAsRead']);
        Route::get('/notifications/unread-count', [NotificationController::class, 'unreadCount']);
    });

    Route::get('/test-fcm', function(){

        \App\Services\FcmService::sendToTokens(
            ['FCM_DEVICE_TOKEN'],
            'Test Notification',
            'Hello from Railway'
        );

    });
    
    Route::post('/fcm-token', [FcmTokenController::class,'store']);
    Route::post('/fcm-token/deactivate', [FcmTokenController::class,'deactivate']);
});