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
        <h2 style="color: #d71635; float: left;" class="titledashboard">Add DMS Data</h3>
        <h2 style="color: #2d9e20; float: right;" class="titledashboard">{{ $dms_form->status_name }}</h2>
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
          <form method="POST" action="{{url('/dms/'.$dms_form->id_dms_form.'/edit')}}">
              {{ csrf_field() }}
              <table class="table table-striped fontinput">
                  <tr>
                    <td>ID DMS Form</td>
                    <td><input class="form-control" type="text" name="id_dms_form" placeholder="ID Dms Form" value="{{ $dms_form->id_dms_form }}" style="width: 100%" readonly=""></td>
                  </tr>

                  
                  <tr>
                    <td>Nomor Mobil <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" type="text" name="plat_no" id="plat_no" value="{{ $dms_form->plat_no }}" placeholder="Nomor Mobil" style="width: 100%; text-transform: uppercase;" maxlength="9"></td>
                  </tr>
                  
                  <tr>
                    <td>Nama Pengemudi <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" type="text" name="driver_name" id="driver_name" placeholder="Nama Pengemudi" value="{{ $dms_form->driver_name }}"  style="width: 100%"></td>
                  </tr>

                  
                  <tr>
                    <td>No. HP Pengemudi <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" type="number" name="driver_phone" id="driver_phone" placeholder="08xxxxxxxxxx" value="{{ $dms_form->driver_phone }}" style="width: 100%"  maxlength="13"></td>
                  </tr>

                  <tr>
                    <td>Tipe Kendaraan <span style="color: #d71635">*</span></td>
                    <td><select class="form-control" name="type_of_vehicle" style="width: 100%">
                      <option value="">-- Pilih Kategori --</option>
                        @foreach ($dms_master_vehicle as $vehicle)
                      <option value="{{ $vehicle->id }}"
                        <?php if ($vehicle->id == $dms_form->type_of_vehicle): ?>
                        <?php echo "selected" ?>
                        <?php endif ?>>{{ $vehicle->master_vehicle_name }}</option>
                      @endforeach
                    </select></td>
                  </tr>

                   <tr>
                    <td>Vendor <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" type="text" name="transporter_company" id="transporter_company" value="{{ $dms_form->transporter_company }}" placeholder="Perusahaan Transportasi" style="width: 100%"></td>
                  </tr>

                  <tr>
                    <td>No PO/SO/DO/DN</td>
                    <td><input class="form-control" type="text" name="shipment" value="{{ $dms_form->shipment }}" id="shipment" placeholder="No PO/SO/DO/DN" style="width: 100%;  text-transform: uppercase;"></td>
                  </tr>

                  <tr>
                       <td>Inbound/Outbound <span style="color: #d71635">*</span></td>
                         <td> <!-- select class form control untuk membuat combo box -->
                           <select class="form-control" name="id_purpose" id="id_purpose" style="width: 100%">
                             <option value="">-- Pilih Kategori --</option>
                             @foreach($dms_purpose as $purpose)
                             <option value="{{$purpose->id}}"
                              <?php if ($purpose->id == $dms_form->id_purpose): ?>
                              <?php echo "selected" ?>
                              <?php endif ?>>{{$purpose->purpose}}</option>
                        @endforeach
                      </select>
                    </td>
                  </tr> 
                  
<!-- 
                  <tr>
                    <td>Duration</td>
                    <td><input class="form-control" type="time" name="duration" value="{{ $dms_form->duration }}" placeholder="Duration" style="width: 100%"></td>
                  </tr> -->


                  <tr id="row_asal">
                    <td>Asal (Inbound)</td>
                    <td><input class="form-control" type="text" name="asal" id="asal" placeholder="Asal (Inbound)" value="{{ $dms_form->asal }}" style="width: 100%"></td>
                  </tr>
                  <tr id="row_tujuan">
                    <td>Tujuan (Outbound)</td>
                    <td><input class="form-control" type="text" name="tujuan" id="tujuan" placeholder="Tujuan (Outbound)" value="{{ $dms_form->tujuan }}" style="width: 100%"></td>
                  </tr>

                  <tr>
                      <td>Nama Customer <span style="color: #d71635">*</span></td>
                         <td> <!-- select class form control untuk membuat combo box -->
                           <select class="form-control" name="cust_proj_name" style="width: 100%">
                             <option value="">-- Pilih Kategori --</option>
                             @foreach($dms_master_project as $project)
                             <option value="{{$project->id}}"
                              <?php if ($project->id == $dms_form->cust_proj_name): ?>
                              <?php echo "selected" ?>
                              <?php endif ?>>{{$project->master_project_name}}</option>
                        @endforeach
                      </select>
                    </td>
                  </tr>

                  <tr>
                    <td>
                        @if ($dms_form->id_purpose == 1)<?php echo "PUT" ?>
                        @else<?php echo "PLT" ?>
                        @endif
                        </td>
                    <td><input class="form-control" type="text" name="waiting_time" id="datetimepicker" placeholder="Waiting Time" value="{{ $dms_form->waiting_time }}" style="width: 100%"></td>
                  </tr>

                  <input type="hidden" name="waiting_time_hidden" value="{{ $dms_form->waiting_time }}">


                  <tr>
                    <td>Nomor Gate</td>
                    <td><input class="form-control" type="number" id="gate_number" name="gate_number" placeholder="Gate Number" value="{{ $dms_form->gate_number }}" style="width: 100%"></td>
                  </tr>
                
                  <tr>
                    <td></td>
                    <td><input class="btn btn-info" name="submit" value="submit" type="submit"></td>
                  </tr>
              </table>
              <input type="hidden" name="_method" value="PUT">
        </form>
      </div>
      
  </div>
@endsection



@section('script')
<!-- Autocomplete =============================== -->
  <script src="{{ asset('js/bootstrap-datetimepicker.min.js')}}"></script>

  <script>
  $( function() {
    var idPurposeVal = $("#id_purpose").val();
    if(idPurposeVal == 1)
    {
       $('#row_asal').show();
      $('#row_tujuan').hide();
    }
    if(idPurposeVal == 2)
    {
      $('#row_tujuan').show();
      $('#row_asal').hide();
    }


    $('#datetimepicker').datetimepicker({
        format: 'yyyy-mm-dd hh:ii',
        todayBtn: true,
        startView:0,
        maxView:1
        //minuteStep:1

    });

    $( "#plat_no" ).autocomplete({
      source: '{{ url('plat_no') }}'
    });
  } );

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

    $("input#gate_number").on({
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

