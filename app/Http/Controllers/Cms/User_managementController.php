<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\User_management;
use App\Http\Controllers\Model\Master_project;
use App\Http\Controllers\Model\User_group;
use Auth;

class User_managementController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_user_management = User_management::getTableUser();

    	return view('pages/frontend/user_management/user_management', compact('dms_user_management'));
    }


	function input()
    {
        $dms_user_group = User_group::all();
        $dms_master_project = Master_project::all();
    	return  view('pages/cms/user_management/user_management_input', compact('dms_user_group','dms_master_project'));
    }

    function edit($id)
    {   
        $dms_user_group = User_group::all();
        $dms_master_project = Master_project::all();
    	$dms_user_management=User_management::where('id','=',$id)->first();
    	return  view('pages/cms/user_management/user_management_edit', compact('dms_user_group','dms_master_project','dms_user_management'));
    }

    function view($id)
    {
        $dms_user_management=User_management::where('id','=',$id)->first();

        return  view('pages/cms/user_management/user_management_view')
        ->with('dms_user_management_data',$dms_user_management);
    }

    public function showcms(){ 
    	$dms_user_management = User_management::getTableUser();
        $no = 1;

    	return view('pages/cms/user_management/user_management', compact('dms_user_management','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                
                'name' => 'required',
                'username' => 'required|unique:dms_user_management',
                'password' => 'required|confirmed',
                'id_usergroup' => 'required',
                'id_project' => 'required',
            ]);

    	$dms_user_management = new User_management;

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_user_management->name = $request->name; 
            $dms_user_management->username = $request->username; 
            $dms_user_management->password = $request->password; 
            $dms_user_management->password = $request->password_confirmation; 
            $dms_user_management->id_usergroup = $request->id_usergroup; 
            $dms_user_management->id_project = $request->id_project; 
            $dms_user_management->created_by = session()->get('session_id_cms'); 
    	// untuk mengsave
    	$dms_user_management->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/user_management');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

              
                'name' => 'required',
                'password' => 'required|confirmed',
                'id_usergroup' => 'required',
                'id_project' => 'required',
               
            ]);
        
    	$dms_user_management = User_management::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_user_management->name = $request->name; 
            $dms_user_management->password = $request->password; 
            $dms_user_management->password = $request->password_confirmation;
            $dms_user_management->id_usergroup = $request->id_usergroup; 
            $dms_user_management->id_project = $request->id_project; 
            $dms_user_management->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_user_management->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/user_management');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_user_management = User_management::find($id);
    	$dms_user_management->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/user_management');
    } 
}
