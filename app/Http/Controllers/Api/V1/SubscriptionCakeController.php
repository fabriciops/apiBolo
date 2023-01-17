<?php

namespace App\Http\Controllers\Api\V1;

use App\Events\CakeEvents;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\V1\CakesController\EmailStoreRequest;
use App\Jobs\JobcakeSubscription;
use App\Models\Cake;
use App\Models\CakeNotification;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;


class SubscriptionCakeController extends Controller
{

    /**
     * Store a newly created resource in storage.
     *
     * @param \App\Http\Requests\Api\V1\CakesController\SubscriptionCakeController $request
     * @param \App\Models\CakeNotification $cake
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(EmailStoreRequest $request): JsonResponse
    {
        if(CakeNotification::verificaSeInscrito($request->email, $request->bolo_id)){
            return response()->json(
                ['mensagem' => 'Você já possui inscrição para esse bolo e será notificado sempre esse produto'],401
            );
        }

        $cake = Cake::find($request->bolo_id);

        if(JobcakeSubscription::dispatch($request->email, $cake->id)){
            event(new CakeEvents($cake));
            return response()->json(
                ['mensagem' => 'Solicitação realizada com sucesso. Sempre lhe deixaremos informado sobre esse item'],200
            )
            ->setStatusCode(201);
        };
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($cakeNotification): JsonResponse
    {   
        $notification = CakeNotification::find($cakeNotification);

        if ($notification == null) {
            return response()->json(
                ['mensagem' => 'Inscrição não encontrada'],404
            );
        }

        $notification->delete();

        return response()->json([
            'message' => 'A inscrição foi removida com sucesso.',
        ])->setStatusCode(200);
    }
}
