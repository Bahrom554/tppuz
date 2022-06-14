<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('histories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('slug');
            $table->string('description');
            $table->integer('type');
            $table->unsignedInteger('file_id')->nullable();
            $table->string('documents')->nullable();
            $table->string('anons')->nullable();
            $table->string('content')->nullable();
            $table->unsignedInteger('lang');
            $table->string('lang_hash');
            $table->boolean('status');
            $table->foreign('file_id')->references('id')->on('files');
            $table->foreign('lang')->references('id')->on('lenguages');
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
        Schema::dropIfExists('histories');
    }
}
