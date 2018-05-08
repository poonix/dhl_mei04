<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_location;
use App\Http\Controllers\Model\Master_project;
use Auth;

class Master_locationController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_location = Master_location::all();
    	return view('pages/frontend/master_location/master_location', compact('dms_master_location'));
    }


	function input()
    {   
        $dms_master_project = Master_project::all();
    	return  view('pages/cms/master_location/master_location_input', compact('dms_master_project'));
    }

    function edit($id)
    {
        $dms_master_project = Master_project::all();
    	$dms_master_location=Master_location::where('id','=',$id)->first();
    	return  view('pages/cms/master_location/master_location_edit', compact('dms_master_project','dms_master_location'));
    }

    function view($id)
    {
        $dms_master_location=Master_location::where('id','=',$id)->first();

        return  view('pages/cms/master_location/master_location_view')
        ->with('dms_master_location_data',$dms_master_location);
    }

    public function showcms(){ 
    	$dms_master_location = Master_location::getTableLocation();
        $no = 1;

    	return view('pages/cms/master_location/master_location', compact('dms_master_location','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'location' => 'required',
                'id_project' => 'required',
            ]);

    	$dms_master_location = new Master_location;

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_location->location = $request->location; 
            $dms_master_location->id_project = $request->id_project; 
            $dms_master_location->created_by = session()->get('session_id_cms'); 
    	// untuk mengsave
    	$dms_master_location->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_location');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'location' => 'required',
                'id_project' => 'required',
               
            ]);
        
    	$dms_master_location = Master_location::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_location->location = $request->location; 
            $dms_master_location->id_project = $request->id_project; 
            $dms_master_location->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_location->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_location');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_location = Master_location::find($id);
    	$dms_master_location->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_location');
    } 
}
