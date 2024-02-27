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
        Schema::create('doctors', function (Blueprint $table) {
            $table->id();
            $table->string('image')->nullable();
            $table->string('visiting_charge')->nullable();
            $table->string('name')->nullable();
            $table->string('degree')->nullable();
            $table->string('institution')->nullable();
            $table->string('available_time')->nullable();
            $table->string('contact')->nullable();
            $table->string('location')->nullable();
            $table->longText('biography')->nullable();
            $table->longText('education')->nullable();
            $table->string('slug');
            $table->tinyInteger('status')->default(0)->comment("0=>Inactive; 1=>Active");
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
        Schema::dropIfExists('doctors');
    }
};
