<?php

namespace App\Http\Controllers\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class Transaction_history extends Model
{
    protected $table = 'dms_transaction_history';

    public static function getTableHistory(){
    	
        $dms_transaction_history = DB::table('dms_transaction_history')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction_history.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction_history.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->select('dms_transaction_history.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_purpose.purpose')
            ->orderBy('created_at', 'desc')

        ->get();

     return $dms_transaction_history;
    }
}
