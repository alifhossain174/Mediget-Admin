<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('image')->nullable();
            $table->string('banner')->nullable();
            $table->string('title')->nullable();
            $table->string('description')->nullable();
            $table->string('button_text')->nullable();
            $table->string('slug');
            $table->tinyInteger('status')->default(1)->comment("1=>Active; 0=>Inactive");
            $table->double('serial')->default(1);
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
        Schema::dropIfExists('services');
    }
};
