@extends('layouts.master')

<!-- yield title dibikin satu baris -->
@section('title', 'Blog single')
<!-- Semua $ terpacu dengan blog controller -->
<!-- yield title dibikin satu baris -->
@section('content')
        <h1>Selamat Datang Di Blog single</h1>
        <!-- manggil isi -->
        <h2>{{$isi}} !!</h2>
        <!-- manggil user -->
        <h3>{{$user}}</h3>

        @foreach($kelompok as $anggota)
            <li> {{ $anggota }} </li>
        @endforeach

        <!-- pasang script alert -->
        <!-- fungsi   untung mengeksekusi pemrograman-->
        <!-- fungsi  untung memanggil variable di BlogController -->
        {!! $unescaped !!}

        @if(count($kelompok) > 5)
            <p>kelompoknya lebih dari lima</p>
        @else
            <p>kelompoknya tidak lebih dari lima</p>
        @endif
@endsection