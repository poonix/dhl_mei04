<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_status;
use Auth;

class Master_statusController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_status = Master_status::all();

    	return view('pages/frontend/master_status/master_status', compact('dms_master_status'));
    }


	function input()
    {
    	return  view('pages/cms/master_status/master_status_input');
    }

    function edit($id)
    {
    	$dms_master_status=Master_status::where('id','=',$id)->first();
    	return  view('pages/cms/master_status/master_status_edit')
    	->with('dms_master_status',$dms_master_status);
    }

    function view($id)
    {
        $dms_master_status=Master_status::where('id','=',$id)->first();

        return  view('pages/cms/master_status/master_status_view')
        ->with('dms_master_status_data',$dms_master_status);
    }

    public function showcms(){ 
    	$dms_master_status = Master_status::all();
        $no = 1;

    	return view('pages/cms/master_status/master_status', compact('dms_master_status','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'status_name' => 'required|unique:dms_master_status',
            ]);

        $dms_master_status = new Master_status;
    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_status->status_name = $request->status_name; 
            $dms_master_status->created_by = session()->get('session_id_cms'); 

    	// untuk mengsave
    	$dms_master_status->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_status');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'status_name' => 'required|unique:dms_master_status',
               
            ]);
        
    	$dms_master_status = Master_status::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_status->status_name = $request->status_name; 
            $dms_master_status->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_status->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_status');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_status = Master_status::find($id);
    	$dms_master_status->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_status');
    } 
}
