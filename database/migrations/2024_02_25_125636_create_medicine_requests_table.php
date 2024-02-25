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
        Schema::create('medicine_requests', function (Blueprint $table) {
            $table->id();
            $table->string('serial_no')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();

            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('address')->nullable();

            $table->string('slug');
            $table->tinyInteger('status')->default(0)->comment("0=>Just Uploaded; 1=>Checking; 2=>In Transit; 3=>Delivered; 4=>Cancelled");
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
        Schema::dropIfExists('medicine_requests');
    }
};
