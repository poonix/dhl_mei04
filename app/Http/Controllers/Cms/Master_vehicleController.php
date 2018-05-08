<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_vehicle;
use Auth;

class Master_vehicleController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_vehicle = Master_vehicle::all();

    	return view('pages/frontend/master_vehicle/master_vehicle', compact('dms_master_vehicle'));
    }


	function input()
    {
    	return  view('pages/cms/master_vehicle/master_vehicle_input');
    }

    function edit($id)
    {
    	$dms_master_vehicle=Master_vehicle::where('id','=',$id)->first();
    	return  view('pages/cms/master_vehicle/master_vehicle_edit')
    	->with('dms_master_vehicle',$dms_master_vehicle);
    }

    function view($id)
    {
        $dms_master_vehicle=Master_vehicle::where('id','=',$id)->first();

        return  view('pages/cms/master_vehicle/master_vehicle_view')
        ->with('dms_master_vehicle_data',$dms_master_vehicle);
    }

    public function showcms(){ 
    	$dms_master_vehicle = Master_vehicle::all();
        $no = 1;

    	return view('pages/cms/master_vehicle/master_vehicle', compact('dms_master_vehicle','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'master_vehicle_name' => 'required|unique:dms_master_vehicle',
            ]);

    	$dms_master_vehicle = new Master_vehicle;

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_vehicle->master_vehicle_name = $request->master_vehicle_name; 
            $dms_master_vehicle->created_by = session()->get('session_id_cms'); 
    	// untuk mengsave
    	$dms_master_vehicle->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_vehicle');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'master_vehicle_name' => 'required|unique:dms_master_vehicle',
               
            ]);
        
    	$dms_master_vehicle = Master_vehicle::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_vehicle->master_vehicle_name = $request->master_vehicle_name; 
            $dms_master_vehicle->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_vehicle->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_vehicle');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_vehicle = Master_vehicle::find($id);
    	$dms_master_vehicle->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_vehicle');
    } 
}
