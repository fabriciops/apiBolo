<?php

namespace Tests\Unit;

use App\Jobs\NotificationEmail;
use App\Models\Cake;
use App\Models\CakeNotification;
use App\Models\User;
use Database\Factories\CakeFactory;
use Database\Factories\CakeNotificationFactory;
use Database\Factories\UserFactory;
use Illuminate\Support\Facades\Bus;
use Illuminate\Support\Facades\Event;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class SubscriptionCakeControllerTest extends TestCase
{
    use WithFaker;
    use DatabaseTransactions;


    protected function setUp(): void
    {
        parent::setUp();
        Event::fake();
        Bus::fake();
    }

    /** @test */
    public function inserir_a_inscricao_do_email_a_um_bolo()
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        $this->actingAs($user);

        $cakeArray = new CakeFactory;
        $cake = Cake::create($cakeArray->definition());

        $data = [
            'email'=>$user->email,
            'bolo_id'=>$cake->id
        ];
        
        $response = $this->postJson(route('subscriptionCake.store', $data));

        $response->assertStatus(201);

    }

    /** @test */
    public function retirar_a_inscricao_do_email_a_um_bolo()
    {
        $userArray = new UserFactory;
        $user = User::create($userArray->definition());
        $this->actingAs($user);

        $notificacao = CakeNotification::all()->toArray();

        $response = $this->deleteJson(route('subscriptionCake.destroy', $notificacao[0]['id']));

        $response->assertStatus(200);
    
    }
}
