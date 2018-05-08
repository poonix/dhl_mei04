<?php

namespace App\Http\Controllers\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class Master_location extends Model
{
    protected $table = 'dms_master_location';

    public static function getTableLocation(){
    	
        $dms_master_location = DB::table('dms_master_location')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_master_location.id_project')
            ->select('dms_master_location.*', 'dms_master_project.master_project_name')
            ->get();

     return $dms_master_location;
 	}
}
