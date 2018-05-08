<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_tc;
use Auth;

class Master_tcController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_tc = Master_tc::all();

    	return view('pages/frontend/master_tc/master_tc', compact('dms_master_tc'));
    }


	function input()
    {
    	return  view('pages/cms/master_tc/master_tc_input');
    }

    function edit($id)
    {
    	$dms_master_tc=Master_tc::where('id','=',$id)->first();
    	return  view('pages/cms/master_tc/master_tc_edit')
    	->with('dms_master_tc',$dms_master_tc);
    }

    function view($id)
    {
        $dms_master_tc=Master_tc::where('id','=',$id)->first();

        return  view('pages/cms/master_tc/master_tc_view')
        ->with('dms_master_tc_data',$dms_master_tc);
    }

    public function showcms(){ 
    	$dms_master_tc = Master_tc::all();
        $no = 1;

    	return view('pages/cms/master_tc/master_tc', compact('dms_master_tc','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'master_tc_name' => 'required|unique:dms_master_tc',
            ]);

    	$dms_master_tc = new Master_tc;

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_tc->master_tc_name = $request->master_tc_name; 
            $dms_master_tc->created_by = session()->get('session_id_cms'); 
    	// untuk mengsave
    	$dms_master_tc->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_tc');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'master_tc_name' => 'required|unique:dms_master_tc',
               
            ]);
        
    	$dms_master_tc = Master_tc::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_tc->master_tc_name = $request->master_tc_name; 
            $dms_master_tc->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_tc->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_tc');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_tc = Master_tc::find($id);
    	$dms_master_tc->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_tc');
    } 
}
