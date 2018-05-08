<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DMS Login</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css')}}"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css?v=2.00')}}"/> 
</head>
<body style="background-color: #ffcb05;">
<div class="container dashboard">
    <div class="row">
        <!-- ssss -->
        <div class="col-md-7 col-sm-12 ">
            <div class="left_index">
                <img src="{{ asset('image\logo.png')}}" alt="">
                <h1 class="text-center">Dock Management System</h1>
                <div class="text-center">
                    <img class="truckimage" src="{{ asset('image\truck.png')}}" alt="">
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam consequatur iure at repudiandae consectetur illum adipisci dignissimos amigos.</p>
            </div> 
        </div>
        <div class="col-md-5 ">
            <div class="right_index">
                <div class="form-group ">
                    <h6 class="right-time mobilehide dates">WEDNESDAY 15 OCTOBER 2018 / 21:15</h6>
                       <form class="form-horizontal" method="POST" action="/dhlcms/public/dms/login">
                        {{ csrf_field() }}

                             
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">

                                <input type="text" class="form-text username" name="username" placeholder="Username" value="{{ old('username') }}">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-text password" name="password" placeholder="Password">
                                <p style="padding-top: 10px; color: #d71635"><strong>{{session()->get('message')}}</strong></p>
                            </div>
                            <label class="pull-left ccx">
                                <input type="checkbox" class="icheck pull-left" name="checkbox1"/>Remember me
                            </label>
                            <div class="form-group">
                                <input type="submit" name="login" class="btn brn-danger col-md-12 login" value="LOGIN"/>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="{{ asset('js/bootstrap.min.js')}}"></script>
</html>
