<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBannersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('banners', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('link');
            $table->integer('sort');
            $table->boolean('status');
            $table->unsignedInteger('file_id')->nullable();
            $table->integer('target');
            $table->unsignedInteger('lang');
            $table->string('lang_hash');
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
        Schema::dropIfExists('banners');
    }
}
