<?php

namespace App\Http\Controllers\Api\V1;

use App\User;
use App\Http\Controllers\Controller;
use App\Services\Asaas\Clientes\ClienteAsaas;
use App\Services\V1\UsuarioServices;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';


    public function registrarUsuario(Request $request)
    {
        try {
            $dataUser = [
                'name' => $request->name,
                'email' => $request->email,
                'password' => $request->password,
            ];
            
            $this->criarUsuario($dataUser);

            return response()->json(['mensagem' => 'Usuário criado com sucesso'], 200);
        } catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Erro no servidor'], 500);        }
    }

    /**
     * Validando informações enviadas.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function criarUsuario(array $data)
    {
        $data = UsuarioServices::criarUsuario($data);
        
        if($data != null){
            return $data;
        }
        return false;
    }
}
