@extends('layouts.dms')
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
    <div>
      <div class="col-sm-12">
        @if (session()->get('session_id_group') == 1)
        <h2 class="titledashboard" style="color: #d71635">INBOUND</h2>
        @elseif (session()->get('session_id_group') == 2)
        <h2 class="titledashboard" style="color: #d71635">INBOUND / {{session()->get('session_name_project')}}</h2>
        @elseif (session()->get('session_id_group') == 3)
        <h2 class="titledashboard" style="color: #d71635">INBOUND</h2>
        @else
        @endif 
      </div>
      <table class="table-striped fontsizetable text-center" id="inbound_id"  width="100%" cellspacing="0">
        <thead class="thead paddingtable text-center" >
          <tr >
            <th class="" style="width: 1%">NO</th>
            <th class="phone " style="width: 12%">PLAT NO</th>
            <th class="" style="width: 13%">NAMA SOPIR</th>
            <th class="cus " style="width: 12%">PERUSAHAAN TRANSPORTASI</th>
            <th class=" " style="width: 5%">DURASI</th>
            <th class=" " style="width: 5%">STATUS</th>
            <th class="width_status phone">SCAN TERAKHIR</th>
            <th class="phone "  style="width: 8%">PUT</th>
            <th class="cus " style="width: 10%" >ASAL</th>
            <th class="phone " style="width: 1%">GERBANG</th>
            <th class="" style="width: 10%">KENDARAAN</th>
            @if (session()->get('session_id_group') == 1)
            <th class="cus " style="width: 14%" >NAMA PROYEK</th>
            @elseif (session()->get('session_id_group') == 2)            
            @elseif (session()->get('session_id_group') == 3)
            <th class="cus " style="width: 14%" >NAMA PROYEK</th>
            @else
            @endif
          </tr>
        </thead>

        <tbody class="paddingtable text-center" id="tbody_inbound">
           @foreach($dms_inbound as $inbound)
          <tr >    
            <td class="">{{ $no_inbound++ }}</td>
            <td class="phone ">{{$inbound->plat_no}}</td>
            <td class="">{{$inbound->driver_name}}</td>
            <td class="cus ">{{$inbound->transporter_company}}</td>
            <td class=""><span id="{{$inbound->id_dms_form}}"></td>
            <td class="">{{$inbound->status_name}}</td>
            <td class="">{{$inbound->last_scan}}</td>
            <td class="phone ">
              <?php if ($inbound->waiting_time == ''): ?>
              <?php echo "-" ?>
              <?php else: ?>
              <?php echo "$inbound->waiting_time" ?>
              <?php endif ?></td>
            <td class="cus ">{{$inbound->asal}}</td>
            <td class="cus ">{{$inbound->gate_number}}</td>
            <td class="">{{$inbound->type_of_vehicle}}</td>
            @if (session()->get('session_id_group') == 1)
            <td class="cus ">{{$inbound->master_project_name}}</td>
            @elseif (session()->get('session_id_group') == 2)            
            @elseif (session()->get('session_id_group') == 3)
            <td class="cus ">{{$inbound->master_project_name}}</td>
            @else
            @endif
          </tr>

          <!-- DURATION ======================================================== DURATION -->
          <script>
            // Set the date we're counting down to
            //var countDownDate = new Date("Apr 3, 2018 16:0:0").getTime();
             //if ({{$inbound->duration}}==0||{{$inbound->duration}}==null) {}
               //else{
            var countupDate{{$inbound->id_dms_form}} = new Date("{{$inbound->duration}}").getTime();
            var exit{{$inbound->id_dms_form}} = new Date("{{$inbound->exit_time}}").getTime();

            if('{{$inbound->duration}}' == ''){}
            else
            {
            // Update the count down every 1 second
              var x = setInterval(function() 
              {
                // Get todays date and time
                var now = new Date().getTime();
                  // Find the distance between now an the count down date
                if('{{$inbound->status}}' == 6){
                  var distance = exit{{$inbound->id_dms_form}} - countupDate{{$inbound->id_dms_form}};
                }
                else
                {
                  var distance = now - countupDate{{$inbound->id_dms_form}}; 
                }
                  // Time calculations for days, hours, minutes and seconds
                  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                  
                  // Output the result in an element with id="demo"
                  document.getElementById("{{$inbound->id_dms_form}}").innerHTML = hours + "h "
                  + minutes + "m " + seconds + "s";

                  // If the count down is over, write some text 
                  if (distance < 0) {
                      clearInterval(x);
                      document.getElementById("{{$inbound->id_dms_form}}").innerHTML = "EXPIRED";
                  }

              }, 1000);
            }   
            // }

            </script>
            <!-- DURATION ======================================================== DURATION -->
           @endforeach
        </tbody>
      </table><div class="text-center">{{$dms_inbound->links()}}</div>
    </div>
    <div>
      <div class="col-sm-12">
        <div class="row ujung">
          
        </div>
        @if (session()->get('session_id_group') == 1)
        <h2 class="titledashboard" style="color: #d71635">OUTBOUND</h2>
        @elseif (session()->get('session_id_group') == 2)
        <h2 class="titledashboard" style="color: #d71635">OUTBOUND / {{session()->get('session_name_project')}}</h2>
        @elseif (session()->get('session_id_group') == 3)
        <h2 class="titledashboard" style="color: #d71635">OUTBOUND</h2>
        @else
        @endif 

      </div>
      <table class="table-striped fontsizetable text-center"  width="100%" cellspacing="0" id="outbound_id">     
        <thead class="thead paddingtable text-center">
          <tr >
            <th class="" style="width: 1%">NO</th>
            <th class="phone " style="width: 12%">PLAT NO</th>
            <th class="" style="width: 13%">NAMA SOPIR</th>
            <th class="cus " style="width: 12%">PERUSAHAAN TRANSPORTASI</th>
            <th class=" " style="width: 5%">DURASI</th>
            <th class=" " style="width: 5%">STATUS</th>
            <th class="width_status phone">SCAN TERAKHIR</th>
            <th class="phone "  style="width: 8%">PLT</th>
            <th class="cus " style="width: 10%" >TUJUAN</th>
            <th class="phone " style="width: 1%">GERBANG</th>
            <th class="" style="width: 10%">KENDARAAN</th>
            @if (session()->get('session_id_group') == 1)
            <th class="cus " style="width: 14%" >NAMA PROYEK</th>
            @elseif (session()->get('session_id_group') == 2)            
            @elseif (session()->get('session_id_group') == 3)
            <th class="cus " style="width: 14%" >NAMA PROYEK</th>
            @else
            @endif 
          </tr>
        </thead>

        <tbody class="paddingtable" id="tbody_outbound">
          @foreach($dms_outbound as $outbound)
          <tr>    
            <td class="">{{ $no_outbound++ }}</td>
            <td class="phone ">{{$outbound->plat_no}}</td>
            <td class="">{{$outbound->driver_name}}</td>
            <td class="cus ">{{$outbound->transporter_company}}</td>
            <td class=""><span id="{{$outbound->id_dms_form}}"></td>
            <td class="">{{$outbound->status_name}}</td>
            <td class="">{{$outbound->last_scan}}</td>
            <td class="phone ">
              <?php if ($outbound->waiting_time == ''): ?>
              <?php echo "-" ?>
              <?php else: ?>
              <?php echo "$outbound->waiting_time" ?>
              <?php endif ?>
            </td>
            <td class="cus ">{{$outbound->tujuan}}</td>
            <td class="cus ">{{$outbound->gate_number}}</td>
            <td class="">{{$outbound->type_of_vehicle}}</td>
            @if (session()->get('session_id_group') == 1)
            <td class="cus ">{{$outbound->master_project_name}}</td>
            @elseif (session()->get('session_id_group') == 2)            
            @elseif (session()->get('session_id_group') == 3)
            <td class="cus ">{{$outbound->master_project_name}}</td>
            @else
            @endif 
          </tr>

          <!-- DURATION ======================================================== DURATION -->
          <script>
            // Set the date we're counting down to
            //var countDownDate = new Date("Apr 3, 2018 16:0:0").getTime();
             //if ({{$outbound->duration}}==0||{{$outbound->duration}}==null) {}
               //else{
            var countupDate{{$outbound->id_dms_form}} = new Date("{{$outbound->duration}}").getTime();
            var exit{{$outbound->id_dms_form}} = new Date("{{$outbound->exit_time}}").getTime();

            if('{{$outbound->duration}}' == ''){}
            else
            {
            // Update the count down every 1 second
              var x = setInterval(function() 
              {
                // Get todays date and time
                var now = new Date().getTime();
                  // Find the distance between now an the count down date
                if('{{$outbound->status}}' == 6){
                  var distance = exit{{$outbound->id_dms_form}} - countupDate{{$outbound->id_dms_form}};
                }
                else
                {
                  var distance = now - countupDate{{$outbound->id_dms_form}}; 
                }
                  // Time calculations for days, hours, minutes and seconds
                  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                  
                  // Output the result in an element with id="demo"
                  document.getElementById("{{$outbound->id_dms_form}}").innerHTML = hours + "h "
                  + minutes + "m " + seconds + "s";

                  // If the count down is over, write some text 
                  if (distance < 0) {
                      clearInterval(x);
                      document.getElementById("{{$outbound->id_dms_form}}").innerHTML = "EXPIRED";
                  }

              }, 1000);
            }   
            // }

            </script>
            <!-- DURATION ======================================================== DURATION -->
           @endforeach
        </tbody>
      </table><div class="text-center">{{$dms_outbound->links()}}</div>
    </div>
      <div class="tab-pane" id="profile" role="tabpanel"><h1>user profile</h1></div>
      <div class="tab-pane" id="scan" role="tabpanel"><h1>scan</h1></div>
    </div>
@endsection
@section('script')
<!-- <script>
  $(document).ready(function(){   
    startRefresh(); 
    }); 
     
    function startRefresh() { 
        setTimeout(startRefresh,1000); 
       
         $.ajax({
            type : "GET",
            url : "{{url("test")}}",
            dataType : "json",                  
            success:function(msg){
                var inbound = msg[0].inbound;
                var outbound = msg[0].outbound;
                var count_inbound = inbound.length;
                var count_outbound = outbound.length;
                var dlt = document.getElementById("tbody_inbound");
              


                for(i=0;i<count_inbound;i++)
                {
                  dlt.parentNode.removeChild(dlt);
                  //$("#tbody_inbound").removeChild("#tbody_inbound");
                  console.log(msg[0].inbound[i]);
                  $("#tbody_inbound").append("<tr>");
                  $("#tbody_inbound").append("<td>"+[i]+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].plat_no+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].driver_name+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].transporter_company+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].duration+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].status_name+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].waiting_time+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].asal+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].gate_number+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].type_of_vehicle+"</td>");
                  $("#tbody_inbound").append("<td>"+msg[0].inbound[i].master_project_name+"</td>");
                  $("#tbody_inbound").append("</tr>");
                }
                //table outbound

                for(i=0;i<=count_outbound;i++)
                {
                  //console.log(msg[0].inbound[i].master_project_name);
                  $("#tbody_outbound").append("<tr>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].plat_no+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].driver_name+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].driver_name+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].transporter_company+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].status_name+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].waiting_time+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].asal+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].gate_number+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].type_of_vehicle+"</td>");
                  $("#tbody_outbound").append("<td>"+msg[0].outbound[i].master_project_name+"</td>");
                  $("#tbody_outbound").append("</tr>");
                }

            },
            error:function(msg){
                console.log("failed");
            }
        }); 
    }
</script> -->
@endsection