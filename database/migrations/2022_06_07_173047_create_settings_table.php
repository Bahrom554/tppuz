<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->unsignedInteger('file_id')->nullable();
            $table->string('slug');
            $table->string('link');
            $table->string('alies');
            $table->string('lang_hash')->nullable();
            $table->unsignedInteger('lang');
            $table->integer('sort')->nullable();
            $table->boolean('status')->default(0);
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
        Schema::dropIfExists('settings');
    }
}
