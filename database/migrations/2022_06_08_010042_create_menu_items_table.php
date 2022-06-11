<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenuItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menu_items', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('menu_id');
            $table->string('title');
            $table->string('url');
            $table->unsignedInteger('file_id')->nullable();
           $table->integer('sort');
           $table->unsignedInteger('menu_item_parent_id')->nullable();
           $table->foreign('menu_id')->references('id')->on('menus')->onDelete('cascade');
           $table->foreign('menu_item_parent_id')->references('id')->on('menu_items')->onDelete('cascade');
            $table->foreign('file_id')->references('id')->on('files');
//            $table->timestamps('deleted_at');
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
        Schema::dropIfExists('menu_items');
    }
}
