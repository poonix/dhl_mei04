<?php

namespace App\Http\Controllers\Cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;

class Dashboard_cmsController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheckcms');
    }

    public function show(){
        return view('pages/cms/dashboard');
    } 

    
}
