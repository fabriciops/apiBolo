<?php

/**
 * @name migrations Cakes
 * @tutorial migration responsável por criar a tabela cake 
 * Teste técnico da empresa Checklist Fácil.
 * fabriciopps19@gmail.com
 * @since 2023/01/14
*/

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Cakes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cakes', function (Blueprint $table) {
            $table->id();
            $table->string('name')->comment('Nome');
            $table->integer('weight')->comment('Peso em gramas.');
            $table->integer('price')->comment('Preço do bolo.');
            $table->integer('quantity')->comment('Quantidade em estoque.');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cakes');

    }
}
