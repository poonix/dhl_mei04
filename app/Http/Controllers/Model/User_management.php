<?php

namespace App\Http\Controllers\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class User_management extends Model
{
    protected $table = 'dms_user_management';

    public static function getTableUser(){
    	
        $dms_user_management = DB::table('dms_user_management')
            ->join('cms_user', 'cms_user.id', '=', 'dms_user_management.created_by')
            ->join('dms_user_group', 'dms_user_group.id', '=', 'dms_user_management.id_usergroup')
            ->join('dms_master_project', 'dms_master_project.id', '=', 'dms_user_management.id_project')
            ->select('dms_user_management.*', 'dms_user_group.usergroup_name','cms_user.name as name_cms', 'dms_master_project.master_project_name')
            ->get(); 
     return $dms_user_management;
    }
}
