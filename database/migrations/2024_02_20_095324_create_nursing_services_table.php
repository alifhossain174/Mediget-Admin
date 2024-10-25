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
        Schema::create('nursing_services', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('price')->nullable();
            $table->string('slug');
            $table->tinyInteger('status')->default(1)->comment("0=>Inactive; 1=>Active");
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
        Schema::dropIfExists('nursing_services');
    }
};
