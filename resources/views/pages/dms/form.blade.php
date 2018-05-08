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
      <ul class="nav nav-tabs navbottom" role="tablist" id="myTab">
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <a>{{session()->get('session_name')}} / {{session()->get('session_name_project')}}</a>
      </li>
       </ul>
@endsection
@section('content')

    <div class="tab-pane active">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee">
            <h5 style="color: #d71635"><strong>DMS Data Form</strong></h5>
          </div>  
        </div>
        <h3 style="color: #d71635;" class="titledashboard">Add DMS Data</h3>
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
        <!-- test -->
        <!-- <div class="col-sm-12">
          <label>panggil data terakhir</label>
          <form  method="POST" action="{{url('/autofill')}}">
            <input class="form-control" type="text" name="plat_no" id="plat_no" placeholder="Plat Nomor" style="width: 100%; text-transform: uppercase;" maxlength="9">
            <input class="btn btn-info" name="submit" value="autofill" type="submit">
          </form>
        </div> -->
        <!-- test -->
          <form method="POST" action="{{url('/dms/input')}}">
              {{ csrf_field() }}
              <table class="table table-striped fontinput">

                  <tr>
                    <td>Nomor Mobil <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" value="{{ old('plat_no') }}" type="text" name="plat_no" id="plat_no" placeholder="Plat Nomor" style="width: 100%; text-transform: uppercase;" maxlength="9"><span id="load" style="position: absolute;top: 10px;right: 30px;"><img style="width: 30px;" src="{{ asset('image/loader.gif') }}"></span></td>
                  </tr>

                  <tr>
                    <td>Nama Pengemudi <span style="color: #d71635">*</span> </td>
                    <td><input class="form-control" value="{{ old('driver_name') }}" type="text" name="driver_name" id="driver_name" placeholder="Nama Pengemudi" style="width: 100%" maxlength="13"></td>
                  </tr>

                  <tr>
                    <td>No. HP Pengemudi <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" value="{{ old('driver_phone') }}" type="number" name="driver_phone" id="driver_phone" placeholder="08xxxxxxxxx" style="width: 100%" value="0"></td>
                  </tr>
                  
              
                  <tr>
                    <td>Tipe Kendaraan <span style="color: #d71635">*</span></td>
                    <td><select class="form-control" name="type_of_vehicle" id="type_of_vehicle" style="width: 100%">
                      <option value="">-- Pilih Kategori --</option>
                      @foreach ($dms_master_vehicle as $vehicle)
                      <option value="{{ $vehicle->id }}">{{ $vehicle->master_vehicle_name }}</option>
                      @endforeach
                    </select></td>
                  </tr>

                  <tr>
                    <td>Vendor <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" value="{{ old('transporter_company') }}" type="text" name="transporter_company" id="transporter_company" placeholder="Perusahaan Transportasi" style="width: 100%"></td>
                  </tr>


                  <!-- <tr>
                    <td>Duration</td>
                    <td><input class="form-control" type="time" name="duration" id="duration " placeholder="Duration" style="width: 100%"></td>
                  </tr> -->

                  <tr>
                    <td>No PO/SO/DO/DN</td>
                    <td><input class="form-control" value="{{ old('shipment') }}" type="text" name="shipment" id="shipment" placeholder="No PO/SO/DO/DN" style="width: 100%;  text-transform: uppercase;"></td>
                  </tr>
                  <tr>
                    <td>Inbound/Outbound  <span style="color: #d71635">*</span></td>
                    <td> <!-- select class form control untuk membuat combo box -->
                        <select class="form-control" name="id_purpose" id="id_purpose" style="width: 100%">
                            <option value="">-- Pilih Kategori --</option>
                            <option value="1">Inbound</option>
                            <option value="2">Outbound</option>
                        </select>
                    </td>
                  </tr>    
                  <tr id="row_asal">
                    <td>Asal (Inbound)</td>
                    <td><input class="form-control" value="{{ old('asal') }}" type="text" name="asal" id="asal" placeholder="Asal (Inbound)" style="width: 100%"></td>
                  </tr>
                  <tr id="row_tujuan">
                    <td>Tujuan (Outbound)</td>
                    <td><input class="form-control" value="{{ old('tujuan') }}" type="text" name="tujuan" id="tujuan" placeholder="Tujuan (Outbound)" style="width: 100%"></td>
                  </tr>
                  <tr>
                    <td>Nama Customer <span style="color: #d71635">*</span></td>                  
                    <td> <!-- select class form control untuk membuat combo box -->
                        <select class="form-control" name="cust_proj_name" id="cust_proj_name" style="width: 100%">
                          <option value="">-- Pilih Kategori --</option>
                          @foreach ($dms_master_project as $project)
                          <option value="{{ $project->id }}">{{ $project->master_project_name }}</option>
                          @endforeach
                        </select>
                    </td>
                  </tr>
                
                  <tr>
                    <td></td>
                    <td><input class="btn btn-info" name="submit" value="Submit and Print" type="submit"></td>
                  </tr>
              </table>
        </form>
      </div>
      
  </div>
@endsection

@section('script')
<!-- Autocomplete =============================== -->
  <script>
  $( function() {

    $('#load').hide();


    $( "#plat_no" ).autocomplete({
      source: '{{ url('plat_no') }}',
      select: function( event, ui ) {
        $('#load').show();
        var getPlat = ui.item.value;
        $.ajax({
			  url: "{{ url('dms/autofill') }}"+'/'+getPlat,
			  context: document.body
			}).done(function(e) {
          $('#load').hide();
  			 	$( "#driver_name" ).val(e.driver_name);
  			 	$( "#driver_phone" ).val(e.driver_phone);
  			 	$( "#type_of_vehicle" ).val(e.type_of_vehicle);
  			 	$( "#transporter_company" ).val(e.transporter_company);
  			 	$( "#shipment" ).val(e.shipment);

  			 	$( "#id_purpose" ).val(e.id_purpose);
  			 	if(e.id_purpose == 1)
  			 	{
  			 		 $('#row_asal').show();
  			 	}
  			 	if(e.id_purpose == 2)
  			 	{
  			 		 $('#row_tujuan').show();
  			 	}
  			 	$( "#asal" ).val(e.asal);
  			 	$( "#tujuan" ).val(e.tujuan);
  			 	$( "#cust_proj_name" ).val(e.cust_proj_name);
		    })
        .fail(function() {
          $('#load').hide();
          alert( "Network Error" );
        });
      }
    });

    $('#row_asal').hide();
    $('#row_tujuan').hide();
  });

  $( function() {
    $( "#driver_phone" ).autocomplete({
      source: '{{ url('driver_phone') }}'
    });
  } );

  $( function() {
    $( "#asal" ).autocomplete({
      source: '{{ url('asal') }}'
    });
  } );

  $( function() {
    $( "#tujuan" ).autocomplete({
      source: '{{ url('tujuan') }}'
    });
  } );

  $( function() {
    $( "#driver_name" ).autocomplete({
      source: '{{ url('driver_name') }}'
    });
  } );

  $( function() {
    $( "#transporter_company" ).autocomplete({
      source: '{{ url('transporter_company') }}'
    });
  } );
  </script>

<!-- No SPACE=============================== -->
  <script>
    $("input#plat_no").on({
      keydown: function(e) {
        if (e.which === 32)
          return false;
      },
      change: function() {
        this.value = this.value.replace(/\s/g, "");
      }
    });

    $("input#transporter_company").on({
      keydown: function(e) {
        if (e.which === 32)
          return false;
      },
      change: function() {
        this.value = this.value.replace(/\s/g, "");
      }
    });

    $("input#shipment").on({
      keydown: function(e) {
        if (e.which === 32)
          return false;
      },
      change: function() {
        this.value = this.value.replace(/\s/g, "");
      }
    });

    $('#id_purpose').on('change', function() {

      
        if(this.options[this.selectedIndex].innerHTML.toLowerCase() == "inbound")
        {
          $('#row_asal').show();
          $('#row_tujuan').hide();
        }
        if(this.options[this.selectedIndex].innerHTML.toLowerCase() == "outbound")
        {
          $('#row_asal').hide();
          $('#row_tujuan').show();
        }
      });
  </script>

@endsection

