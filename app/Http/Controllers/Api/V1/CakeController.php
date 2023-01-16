<?php
/**
 * @name Controller CakeController
 * Teste técnico da empresa Checklist Fácil.
 * fabricio@psdesigneweb.com.br
 * @since 2023/01/14
*/


namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Api\V1\CakesController\CakeStoreRequest;
use App\Http\Resources\CakeResource;
use App\Models\Cake;
use Illuminate\Http\JsonResponse;

class CakeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return CakeResource::collection(Cake::with('subscriptionsNotification')->paginate(20));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CakeStoreRequest $request): JsonResponse
    {
        try {
            $cake = Cake::create($request->validated());
            return CakeResource::make($cake)
                ->response()
                ->setStatusCode(201);
        } catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Você deixou de enviar alguma informação, favor verifique os dados enviados'],400);

        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id):JsonResponse
    {
        try {
            $data = Cake::find($id);
            $data->load('subscriptionsNotification');
            return CakeResource::make($data)->response();
        } catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Você deixou de enviar alguma informação, favor verifique os dados enviados'],400);

        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CakeStoreRequest $request, $id)
    {
        try {
            $cake = Cake::find($id);
            $cake->update($request->validated());
            $cake->load('subscriptionsNotification');
            return (new CakeResource($cake))->response();
        }catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Você deixou de enviar alguma informação, favor verifique os dados enviados'],400);

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cake $cake)
    {
        try {
            $cake->subscriptionsNotification()->delete();
            $cake->delete();
            return response()->json();
        }catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Você deixou de enviar alguma informação, favor verifique os dados enviados'],400);
        }
    }
}
