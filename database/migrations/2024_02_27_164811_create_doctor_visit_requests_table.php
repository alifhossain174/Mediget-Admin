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
        Schema::create('doctor_visit_requests', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('doctor_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('serial_no')->nullable();
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('age')->nullable();
            $table->string('weight')->nullable();
            $table->string('visit_date_time')->nullable();
            $table->string('slug');
            $table->tinyInteger('status')->default(0)->comment("0=>Pending; 1=>Approved; 2=>Cancelled");
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
        Schema::dropIfExists('doctor_visit_requests');
    }
};
