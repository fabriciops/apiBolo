<?php

/**
 * @name migrations Cakes
 * @tutorial migration responsável por criar a tabela cake_notification 
 * Teste técnico da empresa Checklist Fácil.
 * fabriciopps19@gmail.com
 * @since 2023/01/14
*/

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CakeNotification extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cake_notification', function (Blueprint $table) {
            $table->id();
            $table->string('email');
            $table->unsignedBigInteger('cake_id');
            $table->timestampsTz();
            $table->foreign('cake_id')->references('id')->on('cakes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cake_notification');

    }
}
