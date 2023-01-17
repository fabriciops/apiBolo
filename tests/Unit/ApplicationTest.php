<?php

namespace Tests\Unit;

use App\Models\Cake;
use App\Models\User;
use Database\Factories\CakeFactory;
use Database\Factories\UserFactory;
use Illuminate\Support\Facades\Event;
use Tests\TestCase;


class ApplicationTest extends TestCase
{   

    protected function setUp(): void{
        parent::setUp();
        Event::fake();
    }

    
    /** @test */
    public function retorna_uma_lista_de_bolo(): void
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        
        $this->actingAs($user);

        $response = $this->get(url('api/v1/cake/'));
        $response->assertStatus(200);
       
        
    }

    /** @test */
    public function inseri_bolo_retorna_200_com_sucesso(): void
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        
        $this->actingAs($user);
        
        $cakeArray = new CakeFactory;
        
        $response = $this->postJson(route('cake.store', $cakeArray->definition()));

        $response->assertStatus(201);

        $response->assertJsonStructure(
            [
                "data"=> [
                    "name",
                    "price",
                    "weight",
                    "quantity",
                    "updated_at",
                    "created_at",
                    "id",
                ]
            ]);

    }

    /** @test */
    public function mostrar_um_elemento_retorna_200_quando_requisitado_com_sucesso(): void
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        
        $this->actingAs($user);
        
        $cake = Cake::all()->toArray();
        
        $response = $this->json('GET', 'api/v1/cake/', ['id' => $cake[0]['id']]);

        $response->assertStatus(200);

    }

    /** @test */
    public function atualiza_um_elemento_retorna_200_quando_atualizado_com_sucesso()
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        
        $this->actingAs($user);
        
        $cakeArray = new CakeFactory;
        $cake = Cake::create($cakeArray->definition());
        
        $response = $this->patchJson(route('cake.update', $cake->id),[
            [
                $cakeArray->definition()
            ]
        ]);
        
        $response->assertStatus(200);

        $response->assertJsonStructure(
            [
                'data' =>["id",
                "name",
                "weight",
                "price",
                "quantity",
                "created_at",
                "updated_at",
                "subscriptions_notification"]
            ]);
    
    }

    /** @test */
    public function retirar_um_item_retorno_200_quando_deletado_com_sucesso()
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        
        $this->actingAs($user);
        
        $cakeArray = new CakeFactory;
        $cake = Cake::create($cakeArray->definition());
        
        $response = $this->deleteJson(route('cake.destroy', $cake->id));
        $response->assertStatus(200);
    
    }

    /** @test */
    public function retorna_404_quando_o_bolo_nao_existe(): void
    {
        $response = $this->get(url('api/v1/cake/', [
            'id' => 9999,
        ]));

        $response->assertStatus(404);
    }

    /** @test */
    public function JsonResponse()
    {
        $response = $this->get(route('/'));
        $response->assertStatus(200);
        $response->assertJson(['key' => 'value']);
    }
}
