<?php

namespace Database\Factories;

use App\Models\Cake;
use Faker\Generator as Faker;
use Illuminate\Database\Eloquent\Factories\Factory;


// $factory->define(Cake::class, function(Faker $faker){
//     $this->definition();
// });

class CakeFactory extends Factory
{
    protected $model = Cake::class;
    public $definition;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'id' => $this->faker->randomNumber(1, true),
            'name' => "Bolo".$this->faker->word,
            'price' => $this->faker->randomFloat(2, 90, 200),
            'quantity' => $this->faker->randomNumber(2, true),
            'weight' => $this->faker->randomNumber(4, true),
        ];
    }
    
}
