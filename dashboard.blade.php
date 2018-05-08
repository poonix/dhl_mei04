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
      <li><a href="/dhlcms/public/dms/logout" onclick="
      // event.preventDefault(); document.getElementById('logout-form').submit();
      "><img class="iconrightnav" src="{{ asset('image/logout.png')}}" alt=""></a></li>
@endsection
@section('nav_dasboard')
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#inbond" role="tab">INBOND </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#outbond" role="tab">OUTBOND</a>
      </li>
      @if (session()->get('session_id_group') == 1)
        <li>
        <a href="/dhlcms/public/dms/input" style=""><button type="button" class="btn btnadd" style="background-color: #999; color: white;">Add Data</button></a>
        </li>
      @elseif (session()->get('session_id_group') == 2)
        
      @else
        <li>
        <a href="/dhlcms/public/dms/input" style=""><button type="button" class="btn btnadd" style="background-color: #999; color: white;">Add Data</button></a>
        </li>
      @endif 
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <a>{{session()->get('session_name')}} / {{session()->get('session_name_project')}}</a>
      </li>
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <a href="/dhlcms/public/dms/input_id"  target="_blank"><button class="btn btnadd" style="background-color: #999; color: white;">Scan</button></a>
      </li>  
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <a href="/dhlcms/public/dms/all_list"  target="_blank"><button class="btn btnadd" style="background-color: #999; color: white;">Dashboard Screen</button></a>
      </li>
@endsection
@section('content')

<div class="tab-content">
	<div class="tab-pane" id="dashboards" role="tabpanel">
    <div class="col-sm-12">
        <div class="row">
          <div class="col-sm-12" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>Dashboard</strong></h5>
          </div>  
        </div>
        <h2 style="color: #d71635; margin-bottom: 100px;">DASHBOARD</h2>
      </div>
      <div class="text-center" style="">
        <p><strong>WEDNESDAY</strong>, 15 OCTOBER 2018 / 21:15</p>
        <h1 style="margin-top: 30px">SELAMAT DATANG</h1>
        <p><strong>di Dock Management System</strong></p>  
      </div> 
    </div>
    <div class="tab-pane active" id="inbond" role="tabpanel">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee; font-size: 10px;">
            <h5 style="color: #d71635"><strong>Dashboard > Inbound</strong></h5>
          </div>  
        </div>
        <h2 class="titledashboard" style="color: #d71635">INBOUND</h2>
      </div>
      <table class="table-striped fontsizetable text-center" id="inbound_id"  width="100%" cellspacing="0">
        <thead class="thead paddingtable text-center" >
          <tr >
            <th class="">No</th>
            <th class="width_phone">PLATE NO</th>
            <th class="phone">DRIVER NAME</th>
            <th class="cus ">TRANSPORTER COMPANY</th>
            <th class="cus">DURATION</th>
            <th class="phone ">PROGRES</th>
            <th class="phone ">PUT</th>
            <th class="phone ">GATE</th>
            <th class="">VEHICLE</th>
            @if (session()->get('session_id_group') == 1)
            <th class="cus ">PROJECT NAME</th>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <th class="cus ">PROJECT NAME</th>
            @endif
            @if (session()->get('session_id_group') == 1)
            <th class="cus actiontable">ACTION</th>
            @elseif (session()->get('session_id_group') == 2)
            <th class="cus actiontable">ACTION</th>
            @else
            @endif
            @if (session()->get('session_id_group') == 1)
            <th class="cus">PRINT</th>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <th class="cus">PRINT</th>
            @endif
          </tr>
        </thead>

        <tbody class="paddingtable text-center">
           @foreach($dms_inbound as $inbound)
          <tr>    
            <td class="">{{ $no_inbound++ }}</td>
            <td class=" ">{{$inbound->plat_no}}</td>
            <td class="phone">{{$inbound->driver_name}}</td>
            <td class="cus ">{{$inbound->transporter_company}}</td>
            <td class="cus">{{$inbound->duration}}</td>
            <td class="cus">{{$inbound->status}}</td>
            <td class="phone ">
              <?php if ($inbound->waiting_time == ''): ?>
              <?php echo "-" ?>
              <?php else: ?>
              <?php echo "$inbound->waiting_time Min" ?>
              <?php endif ?></td>
            <td class="cus ">{{$inbound->gate_number}}</td>
            <td class="">{{$inbound->type_of_vehicle}}</td>
            @if (session()->get('session_id_group') == 1)
            <td class="cus ">{{$inbound->master_project_name}}</td>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <td class="cus ">{{$inbound->master_project_name}}</td>
            @endif
            @if (session()->get('session_id_group') == 1)
            <td  class="cus " style="float: left;">
              <a href="/dhlcms/public/dms/{{ $inbound->id_dms_form }}/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 15px; height: auto;"></button></a>
                <form method="POST" action="/dhlcms/public/dms/{{ $inbound->id_dms_form}}/delete" class="text-center" style="float: right; margin-left: 2px;">
                  {{ csrf_field() }}
                  <input class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm('Are you sure want to delete name {{$inbound->driver_name}}?');" style="width: 20px; height: auto;"> 
                  <input type="hidden" name="_method" value="DELETE">
                </form>
            </td>
            @elseif (session()->get('session_id_group') == 2)
            <td  class="cus " style="float: left;">
              <a href="/dhlcms/public/dms/{{ $inbound->id_dms_form }}/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 15px; height: auto;"></button></a>
                <form method="POST" action="/dhlcms/public/dms/{{ $inbound->id_dms_form}}/delete" class="text-center" style="float: right; margin-left: 2px;">
                  {{ csrf_field() }}
                  <input class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm('Are you sure want to delete name {{$inbound->driver_name}}?');" style="width: 20px; height: auto;"> 
                  <input type="hidden" name="_method" value="DELETE">
                </form>
            </td>
            @else
            @endif
            @if (session()->get('session_id_group') == 1)
            <td  class="cus "><button class="btn btn-primary" style="padding: 0px 5px">Print</button></td>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <td  class="cus "><button class="btn btn-primary" style="padding: 0px 5px">Print</button></td>
            @endif
            
          </tr>
           @endforeach
        </tbody>
      </table>
    </div>
    <div class="tab-pane" id="outbond" role="tabpanel">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee; font-size: 10px;">
            <h5 style="color: #d71635"><strong>Dashboard > Outbound</strong></h5>
          </div>  
        </div>
        <h2 class="titledashboard" style="color: #d71635">OUTBOUND</h2>
      </div>
      <table class="table-striped fontsizetable text-center"  width="100%" cellspacing="0" id="outbound_id">     
        <thead class="thead paddingtable text-center" >
          <tr >
            <th class="">No</th>
            <th class="phone ">PLATE NO</th>
            <th class="">DRIVER NAME</th>
            <th class="cus ">TRANSPORTER COMPANY</th>
            <th class=" ">DURATION</th>
            <th class=" ">PROGRES</th>
            <th class="phone ">PLT</th>
            <th class="phone ">GATE</th>
            <th class="">VEHICLE</th>
            @if (session()->get('session_id_group') == 1)
            <th class="cus " >PROJECT NAME</th>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <th class="cus " >PROJECT NAME</th>
            @endif
            @if (session()->get('session_id_group') == 1)
            <th class=" actiontable" >ACTION</th>
            @elseif (session()->get('session_id_group') == 2)
            <th class=" actiontable">ACTION</th>
            @else
            @endif
            @if (session()->get('session_id_group') == 1)
            <th>PRINT</th>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <th>PRINT</th>
            @endif
          </tr>
        </thead>

        <tbody class="paddingtable">
          @foreach($dms_outbound as $outbound)
          <tr>    
            <td class="">{{ $no_outbound++ }}</td>
            <td class="phone ">{{$outbound->plat_no}}</td>
            <td class="">{{$outbound->driver_name}}</td>
            <td class="cus ">{{$outbound->transporter_company}}</td>
            <td class="">{{$outbound->duration}}</td>
            <td class="">{{$outbound->status}}</td>
            <td class="phone ">
              <?php if ($outbound->waiting_time == ''): ?>
              <?php echo "-" ?>
              <?php else: ?>
              <?php echo "$outbound->waiting_time Min" ?>
              <?php endif ?>
            </td>
            <td class="cus ">{{$outbound->gate_number}}</td>
            <td class="">{{$outbound->type_of_vehicle}}</td>
            @if (session()->get('session_id_group') == 1)
            <td class="cus ">{{$outbound->master_project_name}}</td>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <td class="cus ">{{$outbound->master_project_name}}</td>
            @endif
            @if (session()->get('session_id_group') == 1)
            <td style="float: left;">
              <a href="/dhlcms/public/dms/{{ $outbound->id_dms_form }}/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 15px; height: auto;"></button></a>
                <form method="POST" action="/dhlcms/public/dms/{{ $outbound->id_dms_form}}/delete" class="text-center" style="float: right; margin-left: 2px;">
                  {{ csrf_field() }}
                  <input class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm('Are you sure want to delete name {{$outbound->driver_name}}?');" style="width: 20px; height: auto;"> 
                  <input type="hidden" name="_method" value="DELETE">
                </form>
            </td>
            @elseif (session()->get('session_id_group') == 2)
            <td style="float: left;">
              <a href="/dhlcms/public/dms/{{ $outbound->id_dms_form }}/edit"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 15px; height: auto;"></button></a>
                <form method="POST" action="/dhlcms/public/dms/{{ $outbound->id_dms_form}}/delete" class="text-center" style="float: right; margin-left: 2px;">
                  {{ csrf_field() }}
                  <input class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm('Are you sure want to delete name {{$outbound->driver_name}}?');" style="width: 20px; height: auto;"> 
                  <input type="hidden" name="_method" value="DELETE">
                </form>
            </td>
            @else
            @endif
            @if (session()->get('session_id_group') == 1)            
            <td><button class="btn btn-primary"  style="padding: 0px 5px">Print</button></td>
            @elseif (session()->get('session_id_group') == 2)
            @else
            <td><button class="btn btn-primary"  style="padding: 0px 5px">Print</button></td>
            @endif
            
          </tr>
           @endforeach
        </tbody>
      </table>
    </div>
      <div class="tab-pane" id="profile" role="tabpanel"><h1>user profile</h1></div>
      <div class="tab-pane" id="scan" role="tabpanel"><h1>scan</h1></div>
    </div>
@endsection
@section('script')
<script type="text/javascript">
$(document).ready( function () {
    $('#inbound_id').DataTable();
} );
</script>
<script type="text/javascript">
$(document).ready( function () {
    $('#outbound_id').DataTable();
} );
</script>
@endsection