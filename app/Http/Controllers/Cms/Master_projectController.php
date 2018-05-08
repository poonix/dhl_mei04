<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Model\Master_project;
use Auth;

class Master_projectController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){ 
    	$dms_master_project = Master_project::all();

    	return view('pages/frontend/master_project/master_project', compact('dms_master_project'));
    }


	function input()
    {
    	return  view('pages/cms/master_project/master_project_input');
    }

    function edit($id)
    {
    	$dms_master_project=Master_project::where('id','=',$id)->first();
    	return  view('pages/cms/master_project/master_project_edit')
    	->with('dms_master_project',$dms_master_project);
    }

    function view($id)
    {
        $dms_master_project=Master_project::where('id','=',$id)->first();

        return  view('pages/cms/master_project/master_project_view')
        ->with('dms_master_project_data',$dms_master_project);
    }

    public function showcms(){ 
    	$dms_master_project = Master_project::all();
        $no = 1;

    	return view('pages/cms/master_project/master_project', compact('dms_master_project','no'));
    }

    // menampilkan fungsi input
    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'master_project_name' => 'required|unique:dms_master_project',
            ]);

    	$dms_master_project = new Master_project;

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_project->master_project_name = $request->master_project_name; 
            $dms_master_project->created_by = session()->get('session_id_cms'); 
    	// untuk mengsave
    	$dms_master_project->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_project');
    }

    // menampilkan fungsi edit
    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

               'master_project_name' => 'required|unique:dms_master_project',
               
            ]);
        
    	$dms_master_project = Master_project::find($id);

    		// nama = nama field di database, var_nama = var_nama di dalam form input_blade
            $dms_master_project->master_project_name = $request->master_project_name; 
            $dms_master_project->updated_by = session()->get('session_id_cms') ;
    	// untuk mengsave
    	$dms_master_project->save();

    	// sama aja kaya href setelak klik submit
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_project');
    }

    public function delete($id){
    	// find khusus untuk primary key di database
    	$dms_master_project = Master_project::find($id);
    	$dms_master_project->delete();

    	// sama aja kaya href setelak klik delete
    	// mau pindah ke link mana setelah tombol submit di klik
    	return  redirect('cms/master_project');
    } 
}
