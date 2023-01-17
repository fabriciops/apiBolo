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
use App\Http\Requests\Api\V1\CakesController\CakeUpdateRequest;
use App\Http\Resources\CakeResource;
use App\Jobs\NotificationEmail;
use App\Models\Cake;
use Illuminate\Http\JsonResponse;


class CakeController extends Controller
{
    /**
     * @OA\Get(
     *      path="/api/v1/cake",
     *      operationId="getCakesList",
     *      tags={"Cake"},
     *      summary="Get list of Cake",
     *      description="Returns list of Cake",
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *          @OA\JsonContent(ref="#/components/schemas/CakeResource")
     *       ),
     *      @OA\Response(
     *          response=401,
     *          description="Unauthenticated",
     *      ),
     *      @OA\Response(
     *          response=403,
     *          description="Forbidden"
     *      )
     *     )
     */
    public function index()
    {
        try {
            return CakeResource::collection(Cake::with('subscriptionsNotification')->paginate(20))->response()
            ->setStatusCode(200);
            
        } catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Você deixou de enviar alguma informação, favor verifique os dados enviados'],403);
        }
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
    public function show(Cake $cake):JsonResponse
    {
        try {
            if (!empty($cake)) {
                $cake->load('subscriptionsNotification');
                return CakeResource::make($cake)->response()->setStatusCode(201);
            }
            return response()->json(['mensagem' => 'Não foi possível encontrar esse item'],404);

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
    public function update(CakeUpdateRequest $request, $id)
    {
        try {
            $cake = Cake::find($id);
            
            if (!empty($cake)) {
                $cake->update($request->validated());
                $cake->load('subscriptionsNotification');
                $emails = $cake->subscriptionsNotification->toArray();
                
                foreach ($emails as $key) {
                    
                    NotificationEmail::dispatch($key['email'], $cake);
                }
                return (new CakeResource($cake))->response();
            }
            return response()->json(['mensagem' => 'Não foi possível encontrar esse item'],401);
            
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
            return response()->json('Item deletado com sucesso',200);
        }catch (\Throwable $th) {
            return response()->json(['mensagem' => 'Você deixou de enviar alguma informação, favor verifique os dados enviados'],400);
        }
    }
}
