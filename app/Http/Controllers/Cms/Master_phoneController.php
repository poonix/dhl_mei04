<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_phone;
use Auth;

class Master_phoneController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_phone = Master_phone::all();

    	return view('pages/frontend/master_phone/master_phone', compact('dms_master_phone'));
    }


	function input()
    {
    	return  view('pages/cms/master_phone/master_phone_input');
    }

    function edit($id)
    {
    	$dms_master_phone=Master_phone::where('id','=',$id)->first();
        return view('pages/cms/master_phone/master_phone_edit', compact('dms_master_phone'));
    }

    function view($id)
    {
        $dms_master_phone=Master_phone::where('id','=',$id)->first();

        return  view('pages/cms/master_phone/master_phone_view')
        ->with('dms_master_phone_data',$dms_master_phone);
    }

    public function showcms(){ 
    	$dms_master_phone = Master_phone::all();
        $no = 1;

    	return view('pages/cms/master_phone/master_phone', compact('dms_master_phone','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'driver_phone' => 'required|unique:dms_master_phone',
            ]);

        $dms_master_phone = new Master_phone;
    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_phone->driver_phone = $request->driver_phone; 
            $dms_master_phone->created_by = session()->get('session_id_cms'); 

    	// untuk mengsave
    	$dms_master_phone->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_phone');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'driver_phone' => 'required|unique:dms_master_phone',
               
            ]);
        
    	$dms_master_phone = Master_phone::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_phone->driver_phone = $request->driver_phone; 
            $dms_master_phone->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_phone->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_phone');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_phone = Master_phone::find($id);
    	$dms_master_phone->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_phone');
    } 
}
