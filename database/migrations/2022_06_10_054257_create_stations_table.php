<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->unsignedInteger('file_id')->nullable();
            $table->string('phone');
            $table->string('address');
            $table->string('fax');
            $table->string('email');
            $table->unsignedInteger('region_id');
            $table->unsignedInteger('lang');
            $table->string('lang_hash');
            $table->boolean('status');
            $table->string('lat');
            $table->string('long');
            $table->foreign('region_id')->references('id')->on('regions');
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
        Schema::dropIfExists('stations');
    }
}
