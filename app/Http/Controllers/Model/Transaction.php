<?php

namespace App\Http\Controllers\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class Transaction extends Model 
{
    protected $table = 'dms_transaction';

    public static function getTableTransaction(){
    	
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_master_status.id as id_status','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->orderBy('updated_at', 'DESC')
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->get();

     return $dms_transaction;
    }

    public static function getTableTransactionForScript(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_master_status.id as id_status','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->orderBy('updated_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getWaitingGate(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name','dms_form.driver_phone', 'dms_form.plat_no', 'dms_form.cust_proj_name', 'dms_master_project.master_project_name','dms_form.id_purpose','dms_purpose.purpose','dms_master_status.status_name', 'dms_master_vehicle.vehicle_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('status','=',2)
            ->where('status','!=',9)
            ->get();

     return $dms_transaction;
    }

    public static function getStatusLeave(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name','dms_form.driver_phone', 'dms_form.plat_no', 'dms_form.cust_proj_name', 'dms_master_project.master_project_name','dms_form.id_purpose','dms_purpose.purpose','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('status','=',7)
            ->where('status','!=',9)
            ->get();

     return $dms_transaction;
    }


    public static function getTableTransactionLim(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
           ->where('if_notif','=',1)
           ->where('cust_proj_name','=',session()->get('session_project'))
            ->where('status','!=',9)
           ->get();

     return $dms_transaction;
    }

    public static function getTableSuperInbound(){
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',1)
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableSuperInboundForScript(){
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',1)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableSuperOutbound(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',2)
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableSuperOutboundForScript(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_purpose', 'dms_purpose.id', '=', 'dms_form.id_purpose')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name','dms_purpose.purpose', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',2)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

     public static function getTableInbound(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('dms_form.id_purpose','=',1)
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableInboundForScript(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('dms_form.id_purpose','=',1)
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableOutbound(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',2)
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableOutboundForScript(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',2)
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }


     public static function getTableInboundAdmin(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',1)
            ->where('cust_proj_name','=',session()->get('session_project'))
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableInboundAdminForScript(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',1)
            ->where('cust_proj_name','=',session()->get('session_project'))
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

     public static function getTableOutboundAdmin(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',2)
            ->where('cust_proj_name','=',session()->get('session_project'))
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->where('status','!=',8)
            ->where('status','!=',9)
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }

    public static function getTableOutboundAdminForScript(){
        
        $dms_transaction = DB::table('dms_transaction')
            ->join('dms_form', 'dms_form.id_dms_form', '=', 'dms_transaction.id_dms_form')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_form.cust_proj_name')
            ->join('dms_master_status', 'dms_master_status.id', '=', 'dms_transaction.status')
            ->join('dms_master_vehicle', 'dms_master_vehicle.id', '=', 'dms_form.type_of_vehicle')
            ->select('dms_transaction.*', 'dms_form.driver_name', 'dms_form.type_of_vehicle', 'dms_form.plat_no', 'dms_form.transporter_company', 'dms_form.shipment', 'dms_form.cust_proj_name', 'dms_form.id_purpose','dms_form.asal','dms_form.tujuan', 'dms_form.driver_phone', 'dms_form.id_location', 'dms_master_project.master_project_name','dms_master_status.status_name', 'dms_master_vehicle.master_vehicle_name as vehicle_name')
            ->where('id_purpose','=',2)
            ->where('cust_proj_name','=',session()->get('session_project'))
            ->where('dms_form.id_location','=',session()->get('session_id_loc'))
            ->orderBy('created_at', 'DESC')
            ->get();

     return $dms_transaction;
    }
}
