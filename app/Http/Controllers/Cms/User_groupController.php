<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\User_group;
use Auth;

class User_groupController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_user_group = User_group::all();

    	return view('pages/frontend/user_group/user_group', compact('dms_user_group'));
    }


	function input()
    {
    	return  view('pages/cms/user_group/user_group_input');
    }

    function edit($id)
    {
    	$dms_user_group=User_group::where('id','=',$id)->first();
    	return  view('pages/cms/user_group/user_group_edit', compact('dms_user_group'));
    }

    function view($id)
    {
        $dms_user_group=User_group::where('id','=',$id)->first();

        return  view('pages/cms/user_group/user_group_view')
        ->with('dms_user_group_data',$dms_user_group);
    }

    public function showcms(){ 
    	$dms_user_group = User_group::all();
        $no = 1;

    	return view('pages/cms/user_group/user_group', compact('dms_user_group','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'usergroup_name' => 'required|unique:dms_user_group',
            ]);

    	$dms_user_group = new User_group;

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_user_group->usergroup_name = $request->usergroup_name; 
            $dms_user_group->created_by = session()->get('session_id_cms'); 
    	// untuk mengsave
    	$dms_user_group->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/user_group');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'usergroup_name' => 'required|unique:dms_user_group',
               
            ]);
        
    	$dms_user_group = User_group::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_usergroup->usergroup_name = $request->usergroup_name; 
            $dms_user_group->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_user_group->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/user_group');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_user_group = User_group::find($id);
    	$dms_user_group->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/user_group');
    } 
}
