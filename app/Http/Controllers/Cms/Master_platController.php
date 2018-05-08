<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_plat;
use Auth;

class Master_platController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_plat = Master_plat::all();

    	return view('pages/frontend/master_plat/master_plat', compact('dms_master_plat'));
    }


	function input()
    {
    	return  view('pages/cms/master_plat/master_plat_input');
    }

    function edit($id)
    {
    	$dms_master_plat=Master_plat::where('id','=',$id)->first();
    	return  view('pages/cms/master_plat/master_plat_edit')
    	->with('dms_master_plat',$dms_master_plat);
    }

    function view($id)
    {
        $dms_master_plat=Master_plat::where('id','=',$id)->first();

        return  view('pages/cms/master_plat/master_plat_view')
        ->with('dms_master_plat_data',$dms_master_plat);
    }

    public function showcms(){ 
    	$dms_master_plat = Master_plat::all();
        $no = 1;

    	return view('pages/cms/master_plat/master_plat', compact('dms_master_plat','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'plat_no' => 'required|unique:dms_master_plat',
            ]);

        $dms_master_plat = new Master_plat;
    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_plat->plat_no = $request->plat_no; 
            $dms_master_plat->created_by = session()->get('session_id_cms'); 

    	// untuk mengsave
    	$dms_master_plat->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_plat');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'plat_no' => 'required|unique:dms_master_plat',
               
            ]);
        
    	$dms_master_plat = Master_plat::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_plat->plat_no = $request->plat_no; 
            $dms_master_plat->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_plat->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_plat');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_plat = Master_plat::find($id);
    	$dms_master_plat->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_plat');
    } 
}
