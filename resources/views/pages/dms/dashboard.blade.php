@extends('layouts.dms')
@section('navatas_dashboard')
      @if (session()->get('session_id_group') == 1)
      @elseif (session()->get('session_id_group') == 2)
        <li class="dropdown "><a class="dropdown-toggle bell" data-toggle="dropdown" href="#"><img class="iconrightnav" src="{{ asset('image/bell.png')}}" alt=""></a>
        <ul class="dropdown-menu dropdown-menu-right">
          <div class="notificationBar" style="width: 400px">
          <!--
           <li>
            <i class="ion-android-notifications"></i>
            <div>Proses pick up</div>
          </li>-->
          </div>
        </ul>
      </li>
      @elseif (session()->get('session_id_group') == 3)
      @else
      @endif 
      <li><a href="{{ url('/dms/logout')}}" onclick="
      // event.preventDefault(); document.getElementById('logout-form').submit();
      "><img class="iconrightnav" src="{{ asset('image/logout.png')}}" alt=""></a></li>
@endsection
@section('nav_dasboard')
<ul class="nav nav-tabs navbottom" role="tablist" id="myTab">
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#inbound" role="tab">INBOND</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#outbound" role="tab">OUTBOND</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#report" role="tab">LAPORAN</a>
      </li>
      @if (session()->get('session_id_group') == 1)
        <li>
        <a href="{{url('/dms/input')}}" style=""><button type="button" class="btn btnadd" style="background-color: #999; color: white;">Tambah Data</button></a>
        </li>
      @elseif (session()->get('session_id_group') == 2)
        
      @elseif (session()->get('session_id_group') == 3)
        <li>
        <button type="button" class="btn btnadd mr" style="background-color: #999; color: white;margin-top: 8px;" onclick="location.href='{{url('/dms/input')}}';">Tambah Data</button>
        </li>
      @else
      @endif 
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        @if (session()->get('session_id_group') == 1)
        <a>{{session()->get('session_name')}} / {{session()->get('session_group')}}</a>
        @elseif (session()->get('session_id_group') == 2)
        <a>{{session()->get('session_name')}} / {{session()->get('session_name_project')}}</a>
        @elseif (session()->get('session_id_group') == 3)
        <a>{{session()->get('session_name')}} / {{session()->get('session_group')}}</a>
        @else
        <a>{{session()->get('session_name')}} / {{session()->get('session_name_project')}}</a>
        @endif 
        
      </li>
      <!--<li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <a data-fancybox data-src="#scan" href="javascript:;"><button class="btn btnadd" style="background-color: #999; color: white;">Scan</button></a>
            <div style="display: none;" id="scan">
              <form method="POST" action="{{url('/dms/input_id')}}">
                {{ csrf_field() }}
                    
                    <table class="table table-striped fontinput">
                        <tr>
                          <td>DMS ID</td>
                          <td><input class="form-control" type="text" name="dms_id" id="dms_id" placeholder="DMS ID" style="width: 100%" autofocus=""></td>
                        </tr>
                      
                        <tr>
                          <td></td>
                          <td><input class="btn btn-info" name="submit" value="Submit" type="submit"></td>
                        </tr>
                    </table>
              </form>
            </div>
      </li>  -->
      <li class="nav-item navbar-right" style="float: right; cursor: pointer;">
        <button class="btn btnadd mr" style="background-color: #999; color: white;margin-top: 8px;" onclick="window.open('{{url('/dms/all_list')}}')">Layar Dasbor</button>
      </li>
    </ul>
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



    <div class="tab-pane {{ Session::get('flash_inbound') }}" id="inbound" role="tabpanel">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee; font-size: 10px;">
            <h5 style="color: #d71635"><strong>Dashboard > Inbound</strong></h5>
             
          </div>  
        </div>
        <h2 class="titledashboard" style="color: #d71635">INBOUND</h2>
        @if (Session::has('id_dms'))
          <div class="alert alert-danger">{{ Session::get('id_dms') }}</div>
        @endif
      </div>
              <form method="POST" action="">
                {{ csrf_field() }}   
                    <table class="table table-striped fontinput" id="inputScan">                      
                        <tr>
                          <td>SCAN DMS ID</td>
                          <td><input class="form-control" type="text" name="dms_id1" id="dms_id" placeholder="DMS ID" style="width: 100%" autofocus=""></td>
                          <td><a data-fancybox data-src="#scan" href="javascript:;"><button class="btn btnadd" style="background-color: #999; color: white; width: 100%;">Submit</button></a></td>
                        </tr>
                    </table>
              </form>

              <div style="display: none; background-color: #ccc;" id="scan">
                <form method="POST" action="{{url('/dms/input_id')}}">
                  <input type="hidden" name="dms_id_hidden" id="dms_id_hidden">
                  {{ csrf_field() }}
                  <div style="width: 350px; padding: 10px; background-color: #eee; "  class="text-center">
                      <img src="{{ asset('image/question.png')}}" alt="" style="width: 50px; height: auto; padding: 10px;"><span style="font-size: 16px;">Apakah anda yakin?</span>
                  </div>
                  <div style="padding: 5px 5px 0px 0px; ">
                    <input class="btn btn-info" name="submit" value="Lanjut" type="submit" style="width: 100%;">
                  </div>
                  <div style="padding: 5px 5px 0px 0px;">
                    <a class="btn btn-danger" style="width: 100%;" onclick="$.fancybox.close()">Batal</a>
                  </div>
                </form>
              </div>

      <table class="table-striped fontsizetable text-center" id="inbound_id"  width="100%" cellspacing="0">
        <thead class="thead paddingtable text-center" >
          <tr >
            <!--<th class="width_no">NO</th>-->
            <th class="phone width_plat">TRUCK NO. POL</th>
            <th class="width_driver">PENGEMUDI</th>
            <th class="cus width_tc">VENDOR</th>
            <th class="width_status phone">STATUS</th>
            <th class="width_status phone">JAM STATUS</th>
            <th class="width_plt phone ">PUT</th>
            <th class="width_gate phone ">GATE</th>
            <th class="width_vehicle ">TIPE TRUK</th>
            <th class="cus width_cus" >CUSTOMER</th>
            @if (session()->get('session_id_group') == 1)
            <th class="width_action actiontable phone" >TINDAKAN</th>
            @elseif (session()->get('session_id_group') == 2)
            <th class="width_action actiontable phone">TINDAKAN</th>
            @else
            @endif
            @if (session()->get('session_id_group') == 1)
            <th class="cus width_print">PRINT</th>
            @elseif (session()->get('session_id_group') == 2)
            @elseif (session()->get('session_id_group') == 3)
            <th class="cus width_print">PRINT</th>
            @else
            @endif
            <!-- <th>TEST</th> -->
          </tr>
        </thead>

        <tbody class="text-center" id="tbody_inbound">
        </tbody>
      </table>
    </div>
    <div class="tab-pane {{session()->get('class_outbound')}} " id="outbound" role="tabpanel">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee; font-size: 10px;">
            <h5 style="color: #d71635"><strong>Dashboard > Outbound</strong></h5>
          </div>  
        </div>
        <h2 class="titledashboard" style="color: #d71635">OUTBOUND</h2>
        @if (Session::has('id_dms'))
          <div class="alert alert-danger">{{ Session::get('id_dms') }}</div>
        @endif
      </div>

      <form method="POST" action="">
                {{ csrf_field() }}   
                    <table class="table table-striped fontinput" id="inputScan2">                      
                        <tr>
                          <td>SCAN DMS ID</td>
                          <td><input class="form-control" type="text" name="dms_id1" id="dms_id" placeholder="DMS ID" style="width: 100%" autofocus=""></td>
                          <td><a data-fancybox data-src="#scan" href="javascript:;"><button class="btn btnadd" style="background-color: #999; color: white; width: 100%;">Submit</button></a></td>
                        </tr>
                    </table>
              </form>
       
      <table class="table-striped fontsizetable text-center"  width="100%" cellspacing="0" id="outbound_id">     
        <thead class="thead paddingtable text-center" >
          <tr >
            <th class="phone width_plat" style="text-transform: uppercase;">TRUCK NO. POL</th>
            <th class="width_driver">PENGEMUDI</th>
            <th class="cus width_tc">VENDOR</th>
            <th class="width_status phone">STATUS</th>
            <th class="width_status phone">JAM STATUS</th>
            <th class="width_plt phone ">PLT</th>
            <th class="width_gate phone ">GATE</th>
            <th class="width_vehicle ">TIPE TRUK</th>
            <th class="cus width_cus" >CUSTOMER</th>
            @if (session()->get('session_id_group') == 2 ||session()->get('session_id_group') == 2 )
            <th class="width_action actiontable phone" >TINDAKAN</th>
            @else
            @endif
            @if (session()->get('session_id_group') == 1)
            <th class="cus width_print">PRINT</th>
            @elseif (session()->get('session_id_group') == 3)
            <th class="cus width_print">PRINT</th>
            @else
            @endif
            <!-- <th>TEST</th> -->
          </tr>
        </thead>

        <tbody class="paddingtable text-center inbb">
        </tbody>
      </table>
    </div>
      <div class="tab-pane" id="report" role="tabpanel">
      <div class="col-sm-12">
        <div class="row ujung">
          <div class="col-sm-12 paddinghead" style="background-color: #eee; font-size: 10px;">
            <h5 style="color: #d71635"><strong>Dashboard > Laporan</strong></h5>    
          </div>  
        </div>
        <h2 class="titledashboard" style="color: #d71635">LAPORAN</h2>
        @if ($errors->any())
            <div class="alert alert-danger">
              <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
              </ul>
          </div>
        @endif
        <form method="POST" action="{{url('/report')}}">
              {{ csrf_field() }}
              <table class="table table-striped fontinput">

                  <tr>
                    <td>Dari Tanggal <span style="color: #d71635">*</span></td>
                    <td><input class="form-control" value="{{ old('tanggal_awal') }}" type="text" name="tanggal_awal" id="datetimepicker1" placeholder="Tanggal Awal" style="width: 100%; text-transform: uppercase;"></td>
                  </tr>

                  <tr>
                    <td>Sampai Tanggal <span style="color: #d71635">*</span> </td>
                    <td><input class="form-control" value="{{ old('tanggal_akhir') }}" type="text" name="tanggal_akhir" id="datetimepicker2" placeholder="Tanggal Akhir" style="width: 100%"></td>
                  </tr>
                  <tr>
                    <td>Inbound/Outbound  <span style="color: #d71635">*</span></td>
                    <td> <!-- select class form control untuk membuat combo box -->
                        <select class="form-control" name="purpose" id="purpose" style="width: 100%">
                            <option value="">-- Pilih Kategori --</option>
                            <option value="1">Inbound & Outbound</option>
                            <option value="2">Inbound</option>
                            <option value="3">Outbound</option>
                        </select>
                    </td>
                  </tr>    
                
                  <tr>
                    <td></td>
                    <td><input class="btn btn-info" name="submit" value="Download Excel" type="submit"></td>
                  </tr>
              </table>
        </form>
    </div>
    </div>

@endsection
@section('script')
<!-- TEST================================== -->
<script src="{{ asset('js/bootstrap-datetimepicker.min.js')}}"></script>
<script type="text/javascript">
    $(document).ready(function(){   
          $('#datetimepicker1').datetimepicker({
              format: 'yyyy-mm-dd',
              minView:2
              //minuteStep:1

          });
           $('#datetimepicker2').datetimepicker({
              format: 'yyyy-mm-dd',
              minView:2
              //minuteStep:1

          });
           /*
      startRefresh();    
      function startRefresh() { 
        //setTimeout(startRefresh,1000);

        $.ajax({
            type : "GET",
            url : "{{url("if_notif")}}",
            dataType : "json",                  
            success:function(msg){ 
              var notif = msg[0].data;  
              var count = notif.length; 
                //var dlt = document.getElementById("tbody_inbound");
              
                for(i=0;i<count;i++)
                {  
                  $("div.notificationBar").append("<li><i class='ion-android-notifications'></i><div> ["+msg[0].data[i].purpose+"] plat: "+msg[0].data[i].plat+" | "+msg[0].data[i].status_name+"</div></li>");
                }
            },
            error:function(msg){
              console.log("failed"); 
          }
        }); 
      }*/
    });
  </script> 
  <!-- TEST=============================== -->

<script type="text/javascript">
$(document).ready( function () {

    $.fn.dataTableExt.sErrMode = 'throw';
    //startRefresh2(); 
    //$('#inbound_id').DataTable();
    var table  = $('#inbound_id').DataTable({

        "bRetrieve" : "true",

         ajax: {

              url: '{{ url('dashboard_json') }}',

              type: 'GET',

              //dataSrc: 'data'

              dataFilter: function(data){
                  var json = jQuery.parseJSON( data );
                  return JSON.stringify( json[0].inbound ); // return JSON string
              }

          },
           "rowCallback": function ( row, data, index ) {
                  //var a = $('.as',row).val(data.id_dms);
                  @if (session()->get('session_id_group') == 3)
                      $('.as',row).attr("href", "{{url('dms')}}/"+data.id_dms_form+"/barcode");
                  @elseif(session()->get('session_id_group') == 2 || session()->get('session_id_group') == 1)
                      $('.as',row).attr("href", "{{url('dms')}}/"+data.id_dms_form+"/edit");
                      $('form#delete_action',row).attr("action", "{{url('dms')}}/" + data.id_dms_form+"/delete");
                  @endif     
                  $('.dur',row).attr('id',data.id_dms_form);
            },
            "createdRow": function(row, data, dataIndex) {
                $('td', row).addClass("test");
            },

          'columnDefs': [{

               'targets': 9,

               'render': function (data, type, full, meta){

                  @if (session()->get('session_id_group') == 1 || session()->get('session_id_group') == 3)
                   return '<a class="btn btn-primary as" style="padding: 0px 5px">Print</a>';
                  @elseif(session()->get('session_id_group') == 2 || session()->get('session_id_group') == 1)
                   
                   return '<a class="as"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 15px; height: auto;"></button></a><form method="POST" id="delete_action" class="text-center" style="float: right; margin-left: 2px;">{{ csrf_field() }}<button class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm();" style="width: 20px; height: auto;"><img src="{{ asset('image/trash.png')}}" alt="" style="width: 15px; height: auto;"></button><input type="hidden" name="_method" value="DELETE"></form>';
                   @endif

               }

            }
            ],

        columns: [

          { data: "plat_no" },

          { data: "driver_name"},

          { data: "transporter_company"},

          { data: "status_name"},

          { data: "last_scan"},

          { data: "waiting_time" },

          { data: "gate_number" },

          { data: "vehicle_name" },

          { data: "master_project_name" }

        ]

      });
    var tableb = $('#outbound_id').DataTable({
      "bRetrieve" : "true",

         ajax: {

              url: '{{ url('dashboard_json') }}',

              type: 'GET',

              //dataSrc: 'data'

              dataFilter: function(data){
                  var json = jQuery.parseJSON( data );
                  return JSON.stringify( json[0].outbound ); // return JSON string
              }

          },
           "rowCallback": function ( row, data, index ) {
                  //var a = $('.as',row).val(data.id_dms);
                  @if (session()->get('session_id_group') == 3)
                      $('.as',row).attr("href", "{{url('dms')}}/"+data.id_dms_form+"/barcode");
                  @elseif(session()->get('session_id_group') == 2 || session()->get('session_id_group') == 1)
                      $('.as',row).attr("href", "{{url('dms')}}/"+data.id_dms_form+"/edit");
                      $('form#delete_action',row).attr("action", "{{url('dms')}}/" + data.id_dms_form+"/delete");
                  @endif     
                  $('.dur',row).attr('id',data.id_dms_form);
            },
            "createdRow": function(row, data, dataIndex) {
                $('td', row).addClass("test");
            },

          'columnDefs': [{

               'targets': 9,

               'render': function (data, type, full, meta){

                  @if (session()->get('session_id_group') == 1 || session()->get('session_id_group') == 3)
                   return '<a class="btn btn-primary as" style="padding: 0px 5px">Print</a>';
                  @elseif(session()->get('session_id_group') == 2 || session()->get('session_id_group') == 1)
                   return '<a class="as"><button type="button" class="action btn btn-danger"><img src="{{ asset('image/pencil.png')}}" alt="" style="width: 15px; height: auto;"></button></a><form method="POST" id="delete_action" class="text-center" style="float: right; margin-left: 2px;">{{ csrf_field() }}<button class="btn btn-danger action" type="submit" name="delete" value="D" onclick="return confirm();" style="width: 20px; height: auto;"><img src="{{ asset('image/trash.png')}}" alt="" style="width: 15px; height: auto;"></button><input type="hidden" name="_method" value="DELETE"></form>';
                   @endif

               }

            }
            ],

        columns: [

          { data: "plat_no" },

          { data: "driver_name"},

          { data: "transporter_company"},

          { data: "status_name"},

          { data: "last_scan"},

          { data: "waiting_time" },

          { data: "gate_number" },

          { data: "vehicle_name" },

          { data: "master_project_name" }

        ]
    });

    var count_char = 0;
    $('#inputScan').keyup(function(event) {
      if(event.target.selectionStart   > 13 ) 
      {
        console.log(event);
         $("#scan").find("#dms_id_hidden").val(event.target.value);
      }else
      {
        $("#scan").find("#dms_id_hidden").val("");
      }
      
    });

    $('#inputScan2').keyup(function(event) {
      if(event.target.selectionStart  > 13 ) 
      {
        console.log(event);
         $("#scan").find("#dms_id_hidden").val(event.target.value);
      }
      else
      {
        $("#scan").find("#dms_id_hidden").val("");
      }
      
    });

    setInterval( function () {
    table.ajax.reload();
    }, 3000 );

    setInterval( function () {
      tableb.ajax.reload();
    }, 3000 );
});
/*
function startRefresh2() { 
        setTimeout(startRefresh2,1000);

        $.ajax({
            type : "GET",
            url : "{{url("dashboard_json")}}",
            dataType : "json",                  
            success:function(msg){ 
                //var outbound = msg[0].outbound;
                var count_inbound = msg.recordsTotal; 
                //var count_outbound = outbound.length;
                //var dlt = document.getElementById("tbody_inbound");
                //console.log(msg.data);
              
              
                for(i=0;i<count_inbound;i++)
                {  //console.log(i+'/'+msg.data[i].status);
                    var in_iddms = msg.data[i].id_dms_form;
                  
                    $('#tbody_inbound tr').each(function() { 
                        var iddms = $(this).find('span').attr('id');
                        var in_status = msg.data[i].status;

                        //console.log($("span#DMS11525547793").html());
                        //console.log(msg.data[i]);
                        if(iddms==in_iddms)  
                        { 
                          if(msg.data[i].id_dms_form == null){ var countupDate= 0 }
                          else
                          {
                            var dateStr=msg.data[i].created_at; //returned from mysql timestamp/datetime field
                            var a=dateStr.split(" ");
                            var d=a[0].split("-");
                            var t=a[1].split(":");
                            var countupDate = new Date(d[1]+'/'+d[2]+'/'+d[0]+' '+a[1]).getTime();
                            
                          }
                          if(msg.data[i].exit_time == null){ var exit = 0 }
                          else
                          {
                            var dateStrE=msg.data[i].exit_time; //returned from mysql timestamp/datetime field
                            var aE=dateStrE.split(" ");
                            var dE=aE[0].split("-");
                            var tE=aE[1].split(":");
                            var exit  = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime();
                          }

                          if(msg.data[i].arrival_time == null){}
                          else
                          {
                          // Update the count down every 1 second
                            var x = setInterval(function() 
                            {
                              // Get todays date and time
                              var now = new Date().getTime();
                                // Find the distance between now an the count down date
                              if( in_status == 7){
                                var distance = exit - countupDate;
                              }
                              else
                              {
                                var distance = now - countupDate;
                              } 
                                // Time calculations for days, hours, minutes and seconds
                                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                                
                                // Output the result in an element with id="demo"
                                if($('span#'+in_iddms).length){
                                document.getElementById(in_iddms).innerHTML = hours + "h "
                                + minutes + "m " + seconds + "s"; }

                                // If the count down is over, write some text 
                                if (distance < 0) {
                                    //clearInterval(x);
                                    if($('span#'+in_iddms).length){
                                    document.getElementById(in_iddms).innerHTML = "EXPIRED"; }
                                }

                            }, 1000);
                          }  
                        } 
                    });

                     //Script: Outbound-duration
                  
                }
            },
            error:function(msg){
              console.log("failed"); 
            }
        });
    }*/
</script>

<script type="text/javascript">
  if (location.hash) {
    $('a[href=\'' + location.hash + '\']').tab('show');
  }
  var activeTab = localStorage.getItem('activeTab');
  if (activeTab) {
    $('a[href="' + activeTab + '"]').tab('show');
  }

  $('body').on('click', 'a[data-toggle=\'tab\']', function (e) {
    e.preventDefault()
    var tab_name = this.getAttribute('href')
    if (history.pushState) {
      history.pushState(null, null, tab_name)
    }
    else {
      location.hash = tab_name
    }
    localStorage.setItem('activeTab', tab_name)

    $(this).tab('show');
    return false;
  });
  $(window).on('popstate', function () {
    var anchor = location.hash ||
      $('a[data-toggle=\'tab\']').first().attr('href');
    $('a[href=\'' + anchor + '\']').tab('show');
  });
</script>
@endsection