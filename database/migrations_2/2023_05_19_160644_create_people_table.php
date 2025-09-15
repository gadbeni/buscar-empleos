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
        Schema::create('people', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('city_id')->nullable()->index('people_city_id_foreign');
            $table->unsignedBigInteger('job_id')->nullable()->index('people_job_id_foreign');
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('dni')->unique();
            $table->string('gender')->nullable();
            $table->date('birthday')->nullable();
            $table->string('phone')->nullable();
            $table->string('address')->nullable();
            $table->string('photo')->nullable();
            $table->string('video')->nullable();
            $table->text('short_description')->nullable();
            $table->text('long_description')->nullable();
            $table->smallInteger('type')->nullable()->default(1);
            $table->smallInteger('status')->nullable()->default(1);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('people');
    }
};
