@extends('layouts.cms')
@section('content')
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
    background-image: url('/w3images/forestbridge.jpg');
    min-height: 100%;
    background-position: center;
    background-size: cover;
}
</style>
    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee;  margin-bottom: 50px;">
            <h5 style="color: #d71635;"><strong>Home</strong></h5>
          </div>  
        </div>
      </div>
      <div class="text-center">
        <p><span id="date-large"></span> / <span id="clock-large"></span></p>
        <h1 style="margin-top: 15px; font-size: 50px;">SELAMAT DATANG</h1>
        <p style="font-size: 20px;">di Conten Management System</p>
        
      </div>
    </div>
@endsection