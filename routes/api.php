<?php

use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\RegisterController;
use App\Http\Controllers\Api\V1\SwaggerController;
use App\Http\Controllers\Api\V1\UsuarioController;
use App\Http\Controllers\Api\V1\CakeController;
use App\Http\Controllers\Api\V1\SubscriptionCakeController;
use App\Http\Resources\CakeResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('/swagger', [SwaggerController::class]);

Route::get('/unauthenticated', function(){
    return ['error' => 'Usuario não está logado'];
})->name('login');

Route::prefix('v1')->group(function () {
    Route::post('/register', [RegisterController::class,'registrarUsuario']);
    Route::post('/login', [AuthController::class,'login']);
    Route::get('/users', [UsuarioController::class, 'index']);

    Route::apiResource('subscriptionCake', SubscriptionCakeController::class)->only(['store', 'destroy']);;

    Route::middleware('auth:api')->group(function(){
        Route::post('/auth/token', [AuthController::class,'token']);
        Route::post('/logout', [AuthController::class,'logout']);
        Route::apiResource('cake', CakeController::class);
        
    });
});

