<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWidgetItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('widget_items', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->unsignedInteger('file_id')->nullable();
            $table->string('description');
            $table->integer('sort');
            $table->boolean('status');
            $table->unsignedInteger('parent_id')->nullable();
            $table->foreign('file_id')->references('id')->on('files');
            $table->foreign('parent_id')->references('id')->on('widgets')->onDelete('cascade');
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
        Schema::dropIfExists('widget_items');
    }
}
