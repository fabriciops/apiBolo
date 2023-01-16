<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UsuarioController extends Controller{

    /**
     * @OA\Get(
     *     tags={"User"},
     *     summary="Returns a list of User",
     *     description="Returns a object of User",
     *     path="/V1/User",
     *     @OA\Response(response="200", description="A list with User"),
     * ),
     * 
    */
    public function index()
    {
        return User::all();
    }
}