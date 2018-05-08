<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dms_transaction', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_dms_form');
            $table->string('gate_number')->nullable();
            $table->string('status');
            $table->string('waiting_time')->nullable();
            $table->dateTime('arrival_time');
            $table->dateTime('exit_time')->nullable();
            $table->string('created_by');
            $table->string('updated_by')->nullable();
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
        Schema::dropIfExists('dms_transaction');
    }
}
