<?php

namespace Database\Factories;

use App\Models\Cake;
use App\Models\CakeNotification;
use Faker\Generator as Faker;
use Illuminate\Database\Eloquent\Factories\Factory;

$factory->define(CakeNotification::class, function(Faker $faker){
    $this->definition();
});

class CakeNotificationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'email' => $this->faker->email,
            'cake_id' => rand(1, 10)
        ];
    }
}

