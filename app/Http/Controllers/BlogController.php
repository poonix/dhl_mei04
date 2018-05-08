<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
class BlogController extends Controller
{
	// function blog index
    public function index()
    {
    	return view('blog/home');
    }

    // function blog single
    public function show($id)
    {
    	$nilai = 'ini adalah linknya '. $id;
    	$user = 'lutfi febrianto';
    	$kelompok = ['deri', 'sandi', 'yudhi'];
        $unescaped = '<script> alert("x!")</script>';


    	// 'isi' buat dipanggil di single pake cara {{$isi}}
    	// 'user' buat dipanggil di single pake cara {{$user}}
        // semua variable harus di oper di return view
    	return view('blog/single', ['isi' => $nilai, 'user' => $user,  'kelompok' => $kelompok, 'unescaped' => $unescaped]);
    }
}
