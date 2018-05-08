@extends('layouts.dms')
@section('navatas_dashboard')
      <li class="dropdown "><a class="dropdown-toggle bell" data-toggle="dropdown" href="#"><img class="iconrightnav" src="{{ asset('image/bell.png')}}" alt=""></a>
        <ul class="dropdown-menu dropdown-menu-right">
          <div class="notificationBar" style="width: 400px">
          <li>
            <i class="ion-android-notifications"></i>
            <div>Pengiriman sudah sampai</div>
          </li>
           <li>
            <i class="ion-android-notifications"></i>
            <div>Pengiriman delay 20 min</div>
          </li>
           <li>
            <i class="ion-android-notifications"></i>
            <div>Proses pick up</div>
          </li>
          </div>
        </ul>
      </li>
      <li><a href="{{url('/dms/logout')}}" onclick="
      // event.preventDefault(); document.getElementById('logout-form').submit();
      "><img class="iconrightnav" src="{{ asset('image/logout.png')}}" alt=""></a></li>
@endsection
@section('nav_dasboard')
      
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <a>{{session()->get('session_name')}} / {{session()->get('session_name_project')}}</a>
      </li>
      
@endsection
@section('content')

    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>DMS ID</strong></h5>
          </div>  
        </div>
        <h3 style="color: #d71635;" class="titledashboard">Add DMS ID</h3>
      </div>
 
      <div class="col-md-12 col-sm-12">
        @if ($errors->any())
            <div class="alert alert-danger">
              <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
              </ul>
          </div>
        @endif
          <form method="POST" action="{{url('/dms/input_id')}}">
              {{ csrf_field() }}
              <table class="table table-striped fontinput">

                  <tr>
                    <td>DMS ID</td>
                    <td><input class="form-control" type="number" name="dms_id" id="dms_id" placeholder="DMS ID" style="width: 100%"></td>
                  </tr>
                
                  <tr>
                    <td></td>
                    <td><input class="btn btn-info" name="submit" value="Submit" type="submit"></td>
                  </tr>
              </table>
        </form>
      </div>
      
  </div>
@endsection


