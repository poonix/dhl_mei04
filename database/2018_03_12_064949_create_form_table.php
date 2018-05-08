<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFormTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dms_form', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_dms_form');
            $table->string('driver_name');
            $table->string('driver_phone');
            $table->string('type_of_vehicle');
            $table->string('plat_no');
            $table->string('transporter_company');
            $table->string('shipment')->nullable();
            $table->string('cust_proj_name');
            $table->integer('id_purpose');
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
        Schema::dropIfExists('dms_form');
    }
}
