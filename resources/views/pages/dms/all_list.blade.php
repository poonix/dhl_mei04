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
    <div id="content-inbound">
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
        <thead class="thead paddingtable text-center">
          <tr >
            <th class="" style="display:none;">ID DMS</th>
            <th class="phone " style="width: 12%">TRUCK NO. POL</th>
            <th class="" style="width: 13%">PENGEMUDI</th>
            <th class="cus " style="width: 12%">VENDOR</th>
            <th class="cus " style="width: 10%" >ASAL</th>
            <th class=" " style="width: 5%">STATUS</th>
            <th class="width_status phone">JAM STATUS</th>
            <th class="phone "  style="width: 8%">PUT</th>
            <th class="phone " style="width: 1%">GATE</th>
            <th class="" style="width: 10%">TIPE TRUK</th>
            <th class=" " style="width: 5%">TOTAL DURASI</th>
            <th class="cus " style="width: 14%" >CUSTOMER</th>
          </tr>
        </thead>

        <tbody class="paddingtable text-center" id="tbody_inbound">
           @foreach($dms_inbound as $inbound)

          <tr>   
            <td class="idCell" style="display:none;" >{{$inbound->id_dms_form}}</td>
            <td class="phone plateCell">{{$inbound->plat_no}}</td>
            <td class="driverCell">{{$inbound->driver_name}}</td>
            <td class="cus transporterCell">{{$inbound->transporter_company}}</td>
            <td class="cus asalCell">{{$inbound->asal}}</td>
            <td class="statusCell"><?php if ($inbound->status == '4') {
                echo "Start Unloading";
              } else {
                echo "$inbound->status_name";
              }?></td>
            <td class="scanCell">{{$inbound->last_scan}}</td>
            <td class="phone putCell">
              <?php if ($inbound->waiting_time == ''): ?>
              <?php echo "-" ?>
              <?php else: ?>
              <?php echo "$inbound->waiting_time" ?>
              <?php endif ?></td>
            <td class="cus gateCell">{{$inbound->gate_number}}</td>
            <td class="vehicleCell">{{$inbound->vehicle_name}}</td>
            <td class="durationCell"><span id="{{$inbound->id_dms_form}}"></span>

              <script type="text/javascript">
              // Set the date we're counting down to
              //var countDownDate = new Date("Apr 3, 2018 16:0:0").getTime();
               //if ({{$inbound->duration}}==0||{{$inbound->duration}}==null) {}
                 //else{
              
              //var countupDate{{$inbound->id_dms_form}} = new Date("{{$inbound->created_at}}").getTime();
              if('{{$inbound->created_at}}' == ''){ var countupDate{{$inbound->id_dms_form}} = 0 }
              else
              {
                var dateStr="{{$inbound->created_at}}"; //returned from mysql timestamp/datetime field
                var a=dateStr.split(" ");
                var d=a[0].split("-");
                var t=a[1].split(":");
                //var countupDate{{$inbound->id_dms_form}} = new Date(d[0],d[1],d[2],t[0],t[1],t[2]).getTime();
                var countupDate{{$inbound->id_dms_form}} = new Date(d[1]+'/'+d[2]+'/'+d[0]+' '+a[1]).getTime();
            }

              //var exit{{$inbound->id_dms_form}} = new Date("{{$inbound->exit_time}}").getTime();
              if('{{$inbound->exit_time}}' == ''){ var exit{{$inbound->id_dms_form}} = 0 }
              else
              {
                var dateStrE="{{$inbound->exit_time}}"; //returned from mysql timestamp/datetime field
                var aE=dateStrE.split(" ");
                var dE=aE[0].split("-");
                var tE=aE[1].split(":");
                //var countupDate{{$inbound->id_dms_form}} = new Date(d[0],d[1],d[2],t[0],t[1],t[2]).getTime();
                var exit{{$inbound->id_dms_form}} = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime();
              }

              if('{{$inbound->arrival_time}}' == ''){}
              else
              {
              // Update the count down every 1 second
                var x = setInterval(function() 
                {
                  // Get todays date and time
                  var now = new Date().getTime();
                    // Find the distance between now an the count down date
                  if('{{$inbound->status}}' == 7){
                    var distance = exit{{$inbound->id_dms_form}} - countupDate{{$inbound->id_dms_form}};
                  }
                  else
                  {
                    var distance = now - countupDate{{$inbound->id_dms_form}};
                    //console.log(countupDate{{$inbound->id_dms_form}}); 
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

            </td>
            <td class="cus projectCell">{{$inbound->master_project_name}}</td>
          </tr>

          <!-- DURATION ======================================================== DURATION -->
         <!--<tr style="display: none;">
            <script type="text/javascript">
              // Set the date we're counting down to
              //var countDownDate = new Date("Apr 3, 2018 16:0:0").getTime();
               //if ({{$inbound->duration}}==0||{{$inbound->duration}}==null) {}
                 //else{
              var dateStr="{{$inbound->created_at}}"; //returned from mysql timestamp/datetime field
              var a=dateStr.split(" ");
              var d=a[0].split("-");
              var t=a[1].split(":");
              var countupDate{{$inbound->id_dms_form}} = new Date(d[0],d[1],d[2],t[0],t[1],t[2]).getTime();

              //var countupDate{{$inbound->id_dms_form}} = new Date("{{$inbound->created_at}}").getTime();
              var exit{{$inbound->id_dms_form}} = new Date("{{$inbound->exit_time}}").getTime();
              if('{{$inbound->arrival_time}}' == ''){}
              else
              {
              // Update the count down every 1 second
                var x = setInterval(function() 
                {
                  // Get todays date and time
                  var now = new Date().getTime();
                    // Find the distance between now an the count down date
                  if('{{$inbound->status}}' == 7){
                    var distance = exit{{$inbound->id_dms_form}} - countupDate{{$inbound->id_dms_form}};
                  }
                  else
                  {
                    var distance = now - countupDate{{$inbound->id_dms_form}};
                    //console.log(countupDate{{$inbound->id_dms_form}}); 
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
           </tr>-->
            <!-- DURATION ======================================================== DURATION -->
           @endforeach
        </tbody>
      </table><div class="text-center"></div>
    </div>
    <div id="content-outbound">
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
            <th class="" style="display:none;">ID DMS</th>
            <th class="phone " style="width: 12%">TRUCK NO. POL</th>
            <th class="" style="width: 13%">PENGEMUDI</th>
            <th class="cus " style="width: 12%">VENDOR</th>
            <th class="cus " style="width: 10%" >TUJUAN</th>
            <th class=" " style="width: 5%">STATUS</th>
            <th class="width_status phone">JAM STATUS</th>
            <th class="phone "  style="width: 8%">PLT</th>
            <th class="phone " style="width: 1%">GATE</th>
            <th class="" style="width: 10%">TIPE TRUK</th>
            <th class=" " style="width: 5%">TOTAL DURASI</th>
            <th class="cus " style="width: 14%" >CUSTOMER</th>
          </tr>
        </thead>

        <tbody class="paddingtable" id="tbody_outbound">
          @foreach($dms_outbound as $outbound)
          
          <tr>    
            <td class="idCellO" style="display:none;" >{{$outbound->id_dms_form}}</td>
            <td class="phone plateCellO">{{$outbound->plat_no}}</td>
            <td class="driverCellO">{{$outbound->driver_name}}</td>
            <td class="cus transporterCellO">{{$outbound->transporter_company}}</td>
            <td class="cus tujuanCellO">{{$outbound->tujuan}}</td>
            <td class="statusCellO">{{$outbound->status_name}}</td>
            <td class="scanCellO">{{$outbound->last_scan}}</td>
            <td class="phone pltCellO">
              <?php if ($outbound->waiting_time == ''): ?>
              <?php echo "-" ?>
              <?php else: ?>
              <?php echo "$outbound->waiting_time" ?>
              <?php endif ?>
            </td>
            <td class="cus gateCellO">{{$outbound->gate_number}}</td>
            <td class="vehicleCellO">{{$outbound->vehicle_name}}</td>
            <td class="durationCellO"><span id="{{$outbound->id_dms_form}}"></span>

              <script type="text/javascript">
              // Set the date we're counting down to
              //var countDownDate = new Date("Apr 3, 2018 16:0:0").getTime();
               //if ({{$outbound->duration}}==0||{{$outbound->duration}}==null) {}
                 //else{
           

              //var countupDate{{$outbound->id_dms_form}} = new Date("{{$outbound->arrival_time}}").getTime();
              if('{{$outbound->arrival_time}}' == ''){ var countupDate{{$outbound->id_dms_form}} = 0 }
              else
              {
                var dateStrO="{{$outbound->arrival_time}}"; //returned from mysql timestamp/datetime field
                var aO=dateStrO.split(" ");
                var dO=aO[0].split("-");
                var tO=aO[1].split(":");
                //var countupDate{{$outbound->id_dms_form}} = new Date(d[0],d[1],d[2],t[0],t[1],t[2]).getTime();
                var countupDate{{$outbound->id_dms_form}} = new Date(dO[1]+'/'+dO[2]+'/'+dO[0]+' '+aO[1]).getTime();
            }

              //var exit{{$outbound->id_dms_form}} = new Date("{{$outbound->exit_time}}").getTime();
              if('{{$outbound->exit_time}}' == ''){ var exit{{$outbound->id_dms_form}} = 0 }
              else
              {
                var dateStrOE="{{$outbound->exit_time}}"; //returned from mysql timestamp/datetime field
                var aOE=dateStrOE.split(" ");
                var dOE=aOE[0].split("-");
                var tOE=aOE[1].split(":");
                //var countupDate{{$outbound->id_dms_form}} = new Date(d[0],d[1],d[2],t[0],t[1],t[2]).getTime();
                var exit{{$outbound->id_dms_form}} = new Date(dOE[1]+'/'+dOE[2]+'/'+dOE[0]+' '+aOE[1]).getTime();
              }

              if('{{$outbound->arrival_time}}' == ''){}
              else
              {
              // Update the count down every 1 second
                var x = setInterval(function() 
                {
                  // Get todays date and time
                  var now = new Date().getTime();
                    // Find the distance between now an the count down date
                  if('{{$outbound->status}}' == 7){
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

            </td>
            <td class="cus projectCellO">{{$outbound->master_project_name}}</td>
          </tr>

          <!-- DURATION ======================================================== DURATION -->
            <!--<tr style="display: none;">
              <script type="text/javascript">
              // Set the date we're counting down to
              //var countDownDate = new Date("Apr 3, 2018 16:0:0").getTime();
               //if ({{$outbound->duration}}==0||{{$outbound->duration}}==null) {}
                 //else{
              var countupDate{{$outbound->id_dms_form}} = new Date("{{$outbound->arrival_time}}").getTime();
              var exit{{$outbound->id_dms_form}} = new Date("{{$outbound->exit_time}}").getTime();

              if('{{$outbound->arrival_time}}' == ''){}
              else
              {
              // Update the count down every 1 second
                var x = setInterval(function() 
                {
                  // Get todays date and time
                  var now = new Date().getTime();
                    // Find the distance between now an the count down date
                  if('{{$outbound->status}}' == 7){
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
          </tr>-->
            <!-- DURATION ======================================================== DURATION -->
           @endforeach
        </tbody>
      </table><div class="text-center"></div>
      <div style="height: 50px;"></div>
    </div>
      <div class="tab-pane" id="profile" role="tabpanel"><h1>user profile</h1></div>
      <div class="tab-pane" id="scan" role="tabpanel"><h1>scan</h1></div>
    </div>
@endsection

@section('script')
  <script src="{{ asset('js/paging.js')}}"></script>
  <script>
    $(document).ready(function(){   
        startRefresh(); 


        var limit = 5;
        $('table#inbound_id').paging({limit: limit});
        $('table#outbound_id').paging({limit: limit});


        window.setInterval(function(){ 
            $.ajax({
              type : "GET",
              url : "{{url("test")}}",
              dataType : "json",                  
              success:function(msg){ 
                  var inbound = msg[0].inbound;
                  var outbound = msg[0].outbound;
                  var count_inbound = inbound.length;
                  var count_outbound = outbound.length;
                  //console.log(inbound);
                  var page_in = Math.ceil(count_inbound/limit);//Math.floor(count_inbound/limit); 
                  //if($('#content-inbound a.selected-page').data('page')==page) $('#content-inbound a[data-page=0]').click(); //Click button page=1
                  if(page_in==1) /*do nothing*/;
                  else if($('#content-inbound a.selected-page').html()==page_in) $('#content-inbound a[data-page=0]').click();
                  else $('#content-inbound a[data-direction=1]').click(); //Click button 'next page'

                  var page_out = Math.ceil(count_outbound/limit); //Math.floor(count_outbound/limit); 
                  //if($('#content-outbound a.selected-page').data('page')==page) $('#content-outbound a[data-page=0]').click(); //Click button page=1
                  if(page_out==1) /*do nothing*/;
                  else if($('#content-outbound a.selected-page').html()==page_out) $('#content-outbound a[data-page=0]').click(); //Click button page=1
                  else $('#content-outbound a[data-direction=1]').click(); //Click button 'next page'
              },
              error:function(msg){
                  console.log("failed"); 
              }
            });
        }, 10000);
    //}); 
      
    
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
                //var dlt = document.getElementById("tbody_inbound");
             
              
                for(i=0;i<count_inbound;i++)
                {  
                  //dlt.parentNode.removeChild(dlt);
                  //$("#tbody_inbound").removeChild("#tbody_inbound");
                  //console.log(msg[0].inbound[i]);
                  
                  /*$("#tbody_inbound").append("<tr>");
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
                  $("#tbody_inbound").append("</tr>");*/
                  
                  var statdbIn = msg[0].inbound[i].status;
                  if($('#tbody_inbound:contains("'+msg[0].inbound[i].id_dms_form+'")').length == 0) { //Insert New Data

                    //Increment all number based on class
                    /*$("#tbody_inbound tr").each(function() {

                      // Within tr we find the last td child element and get content
                      var no = $(this).find("td.numberIn:first").html();
                      no = parseInt(no) + 1;

                      $(this).find("td.numberIn:first").html(no);
                    });*/
                    
                    /*var statdbIn = msg[0].inbound[i].status; 
                    var ex_time = msg[0].inbound[i].exit_time; 
                    var curr_time = new Date().getTime();
                    var etime = 0;
                    
                    if(statdbIn == 7) //Remove tr after an hour from exit_time if status == 7
                    { 
                      if(typeof ex_time == 'undefined' || ex_time == null || ex_time == '')
                      {
                        var etime = 0;
                      }
                      else
                      {
                        var aE=ex_time.split(" ");
                        var dE=aE[0].split("-");
                        var tE=aE[1].split(":");
                        var etime = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime()+(1000*60*60); // + 1 hour
                      }
                    }

                    if(curr_time < etime || etime == 0) // If status == 7 and exit_time still less then 1 hour 
                    {
                      var in_waiting = '-';
                      if(msg[0].inbound[i].waiting_time!='') in_waiting = msg[0].inbound[i].waiting_time;

                      var lscan = '';
                      if(msg[0].inbound[i].last_scan!='') lscan = msg[0].inbound[i].last_scan;
                      if(typeof lscan == 'undefined') lscan = '';
                      
                      //<td class="numberIn" align="center">1</td>
                      var newChild = '<tr><td class="idCell" style="display:none;" >' + msg[0].inbound[i].id_dms_form + '</td><td class="phone plateCell">' + msg[0].inbound[i].plat_no + '</td><td class="driverCell">' + msg[0].inbound[i].driver_name + '</td><td class="cus transporterCell">' + msg[0].inbound[i].transporter_company + '</td><td class="cus asalCell">' + msg[0].inbound[i].asal + '</td><td class="statusCell">' + msg[0].inbound[i].status_name + '</td><td class="scanCell">' + lscan + '</td><td class="phone putCell">' + in_waiting + '</td><td class="cus gateCell">' + msg[0].inbound[i].gate_number + '</td><td class="vehicleCell">' + msg[0].inbound[i].vehicle_name + '</td><td class="durationCell"><span id="' + msg[0].inbound[i].id_dms_form + '"></span></td><td class="cus projectCell">' + msg[0].inbound[i].master_project_name + '</td></tr>';
                        
                      var firstrow = document.getElementById('tbody_inbound'); 
                      firstrow.insertAdjacentHTML('afterbegin', newChild);
                    }*/

                    //Refresh page
                    if(statdbIn == 1) //New data
                    {
                      location.reload();
                    }
                  }
                  else if(statdbIn == 8 || statdbIn == 9)
                  {
                    location.reload();
                  }
                   
                  $('#tbody_inbound tr').each(function() { 
                      var iddms = $(this).find(".idCell").html(); 
                      var in_waiting = '-';  
                      var TglSkrg = new Date().getTime();
                      
                      if(iddms==msg[0].inbound[i].id_dms_form)  
                      { 
                        /*var stathtmlIn = $(this).find(".statusCell").html(); 
                        var statdbIn = msg[0].inbound[i].status; 
                        var ex_time = msg[0].inbound[i].exit_time; 
                        if(statdbIn == 7 || stathtmlIn == 'Leave Warehouse') //Remove tr after an hour from exit_time if status == 7
                        { 
                          if(typeof ex_time == 'undefined' || ex_time == null || ex_time == '')
                          {
                            var etime = 0;
                          }
                          else
                          {
                            var aE=ex_time.split(" ");
                            var dE=aE[0].split("-");
                            var tE=aE[1].split(":");
                            var etime = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime()+(1000*60*60); // + 1 hour
                          }

                          if(TglSkrg > etime) $(this).remove(); // remove after 1 hour
                        }
                        else if(stathtmlIn == 'Done')
                        {
                          $(this).remove(); 
                        }
						*/

                        //Validation milestone

                        //HourAdd1
                        //var HourAdd1 = new Date(msg[0].inbound[i].arrival_time).getTime()+(1000*60*60);
                        var arrival = msg[0].inbound[i].arrival_time;
                        if(typeof arrival == 'undefined' || arrival == null || arrival == '')
                    {
                      var HourAdd1 = 0;
                    }
                    else
                    {
                      var ar=arrival.split(" ");
                      var dr=ar[0].split("-");
                      var tr=ar[1].split(":");
                      var HourAdd1 = new Date(dr[1]+'/'+dr[2]+'/'+dr[0]+' '+ar[1]).getTime()+(1000*60*60);
                  }

                        //Minute10
                        //var Minute10 = new Date(in_waiting).getTime()+(1000*60*10);
                        if(msg[0].inbound[i].waiting_time!='') in_waiting = msg[0].inbound[i].waiting_time;
                        if(in_waiting == '-' || typeof in_waiting == 'undefined' || in_waiting == null || in_waiting == '')
                    {
                      var Minute10 = 0;
                    }
                    else
                    {
                      var a1=in_waiting.split(" ");
                      var d1=a1[0].split("-");
                      var t1=a1[1].split(":");
                      var Minute10 = new Date(d1[1]+'/'+d1[2]+'/'+d1[0]+' '+a1[1]).getTime()+(1000*60*10);
                  }

                        //Minute10Stat3
                        //var Minute10Stat3 = new Date(msg[0].inbound[i].last_scan2).getTime()+(1000*60*10);
                        var ls2 = msg[0].inbound[i].last_scan2;
                        if(typeof ls2 == 'undefined' || ls2 == null || ls2 == '')
                    {
                      var Minute10Stat3 = 0;
                    }
                    else
                    {
                      var a2=ls2.split(" ");
                      var d2=a2[0].split("-");
                      var t2=a2[1].split(":");
                      var Minute10Stat3 = new Date(d2[1]+'/'+d2[2]+'/'+d2[0]+' '+a2[1]).getTime()+(1000*60*10);
                  }

                        //hourStat4
                        //var hourStat4 = new Date(msg[0].inbound[i].last_scan3).getTime()+(1000*60*60);
                        var ls3 = msg[0].inbound[i].last_scan3;
                        if(typeof ls3 == 'undefined' || ls3 == null || ls3 == '')
                    {
                      var hourStat4 = 0;
                    }
                    else
                    {
                      var a3=ls3.split(" ");
                      var d3=a3[0].split("-");
                      var t3=a3[1].split(":");
                      var hourStat4 = new Date(d3[1]+'/'+d3[2]+'/'+d3[0]+' '+a3[1]).getTime()+(1000*60*60);
                  }

                        //Minute10Stat5
                        //var Minute10Stat5 = new Date(msg[0].inbound[i].last_scan4).getTime()+(1000*60*10);
                        var ls4 = msg[0].inbound[i].last_scan4;
                        if(typeof ls4 == 'undefined' || ls4 == null || ls4 == '')
                    {
                      var Minute10Stat5 = 0;
                    }
                    else
                    {
                      var a4=ls4.split(" ");
                      var d4=a4[0].split("-");
                      var t4=a4[1].split(":");
                      var Minute10Stat5 = new Date(d4[1]+'/'+d4[2]+'/'+d4[0]+' '+a4[1]).getTime()+(1000*60*10);
                  }

                        //Minute15Stat6
                        //var Minute15Stat6 = new Date(msg[0].inbound[i].last_scan5).getTime()+(1000*60*15);
                        var ls5 = msg[0].inbound[i].last_scan5;
                        if(typeof ls5 == 'undefined' || ls5 == null || ls5 == '')
                    {
                      var Minute15Stat6 = 0;
                    }
                    else
                    {
                      var a5=ls5.split(" ");
                      var d5=a5[0].split("-");
                      var t5=a5[1].split(":");
                      var Minute15Stat6 = new Date(d5[1]+'/'+d5[2]+'/'+d5[0]+' '+a5[1]).getTime()+(1000*60*15);
                  }

                        /*$(this).find("td.plateCell").html(msg[0].inbound[i].plat_no);
                        $(this).find("td.driverCell").html(msg[0].inbound[i].driver_name);
                        $(this).find("td.transporterCell").html(msg[0].inbound[i].transporter_company);*/
                        //Waiting Outside
                        if(msg[0].inbound[i].status == 1 && TglSkrg>HourAdd1)
                        {
                          $(this).children('td').css('color','red');
                        }
                        //Waiting Gate
                        else if(msg[0].inbound[i].status == 2 && TglSkrg>Minute10)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].inbound[i].status == 3 && TglSkrg>Minute10Stat3)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].inbound[i].status == 4 && TglSkrg>hourStat4)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].inbound[i].status == 5 && TglSkrg>Minute10Stat5)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].inbound[i].status == 6 && TglSkrg>Minute15Stat6)
                        {
                          $(this).children('td').css('color','red');
                        }else
                        {
                          $(this).children('td').css('color','');
                        }

                        var ori = msg[0].inbound[i].status_name;
                        var statusid = msg[0].inbound[i].status;
                        if (statusid == '4') {var cetakstatus = 'Start Unloading'}
                        else {var cetakstatus = msg[0].inbound[i].status_name}
                          
                        $(this).find("td.plateCell").html(msg[0].inbound[i].plat_no);
                        $(this).find("td.driverCell").html(msg[0].inbound[i].driver_name);
                        $(this).find("td.transporterCell").html(msg[0].inbound[i].transporter_company);
                        $(this).find("td.asalCell").html(msg[0].inbound[i].asal);
                        $(this).find("td.statusCell").html(cetakstatus);
                        $(this).find("td.scanCell").html(msg[0].inbound[i].last_scan);
                        $(this).find("td.putCell").html(in_waiting);
                        $(this).find("td.gateCell").html(msg[0].inbound[i].gate_number);
                        $(this).find("td.vehicleCell").html(msg[0].inbound[i].vehicle_name);
                        //$(this).find("td.durationCell").html(msg[0].inbound[i].duration);
                        //$(this).find("span#"+iddms).html(msg[0].inbound[i].duration);
                        $(this).find("td.projectCell").html(msg[0].inbound[i].master_project_name);
                      }  
                  });

                  //Script: Inbound-duration
                  var i_idDms = msg[0].inbound[i].id_dms_form;
                  var i_duration = msg[0].inbound[i].created_at;
                  var i_exitTime = msg[0].inbound[i].exit_time;
                  var i_status = msg[0].inbound[i].status;
                  var i_arrival = msg[0].inbound[i].arrival_time;

                  //var i_countupDate = new Date(i_duration).getTime();
                  if(typeof i_duration != 'undefined' && i_duration != null && i_duration != '')
                  {
                    var a=i_duration.split(" ");
                    var d=a[0].split("-");
                    var t=a[1].split(":");
                    var i_countupDate = new Date(d[1]+'/'+d[2]+'/'+d[0]+' '+a[1]).getTime();
                  }
                  else{ var i_countupDate = 0 }
                
              
                  //var i_exit = new Date(i_exitTime).getTime();
                  if(typeof i_exitTime != 'undefined' && i_exitTime != null && i_exitTime != '')
                  {
                    var aE=i_exitTime.split(" ");
                    var dE=aE[0].split("-");
                    var tE=aE[1].split(":");
                    var i_exit = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime();
                  }
                  else{ var i_exit = 0 }

                  if(i_arrival == ''){}
                  else
                  {
                    // Update the count down every 1 second
                    var x = setInterval(function() 
                    {
                      // Get todays date and time
                      var now = new Date().getTime();
                      // Find the distance between now an the count down date
                      if(i_status == 7){
                        var distance = i_exit - i_countupDate;
                      }
                      else
                      {
                        var distance = now - i_countupDate; 
                      }
                      // Time calculations for days, hours, minutes and seconds
                      var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                      var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                        
                      // Output the result in an element with id="demo"
                      $(this).find("#tbody_inbound span#"+i_idDms).html(hours + "h " + minutes + "m " + seconds + "s");
                      //document.getElementById('"'+i_idDms+'"').innerHTML = hours + "h " + minutes + "m " + seconds + "s";

                      // If the count down is over, write some text 
                      if (distance < 0) {
                          clearInterval(x);
                          $(this).find("#tbody_inbound span#"+i_idDms).html("EXPIRED");
                          //document.getElementById("").innerHTML = "EXPIRED";
                      }

                    }, 1000);
                  }
                } 


                //table outbound
                for(i=0;i<count_outbound;i++)
                {
                  //console.log(msg[0].outbound[i].master_project_name);
                  /*$("#tbody_outbound").append("<tr>");
                  $("#tbody_outbound").append("<td>"+[i]+"</td>");
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
                  $("#tbody_outbound").append("</tr>");*/


                  var statdbOut = msg[0].outbound[i].status; 
                  if($('#tbody_outbound:contains("'+msg[0].outbound[i].id_dms_form+'")').length == 0) { //Insert New Data

                    //Increment all number based on class
                    /*$("#tbody_outbound tr").each(function() {

                      // Within tr we find the last td child element and get content
                      var noO = $(this).find("td.numberOut:first").html();
                      noO = parseInt(noO) + 1;

                      $(this).find("td.numberOut:first").html(noO);
                    });*/
                    
                    /*var statdbOut = msg[0].outbound[i].status; 
                    var ex_timeO = msg[0].outbound[i].exit_time; 
                    var curr_timeO = new Date().getTime();
                    var etimeO = 0;
                    if(statdbOut == 7) //Remove tr after an hour from exit_time if status == 7
                    { 
                      if(typeof ex_timeO == 'undefined' || ex_timeO == null || ex_timeO == '')
                      {
                        var etimeO = 0;
                      }
                      else
                      {
                        var aE=ex_timeO.split(" ");
                        var dE=aE[0].split("-");
                        var tE=aE[1].split(":");
                        var etimeO = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime()+(1000*60*60); // + 1 hour
                      }
                    }

                    if(curr_timeO < etimeO || etimeO == 0) // If status == 7 and exit_time still less then 1 hour 
                    {
                    var in_waitingO = '-';
                    if(msg[0].outbound[i].waiting_time!='') in_waitingO = msg[0].outbound[i].waiting_time;

                    var lscanO = '';
                    if(msg[0].outbound[i].last_scan!='') lscanO = msg[0].outbound[i].last_scan;
                    if(typeof lscanO == 'undefined') lscanO = '';
                  
                    //<td class="numberOut" align="center">1</td>

                    var newChildO = '<tr><td class="idCellO" style="display:none;" >' + msg[0].outbound[i].id_dms_form + '</td><td class="phone plateCellO">' + msg[0].outbound[i].plat_no + '</td><td class="driverCellO">' + msg[0].outbound[i].driver_name + '</td><td class="cus transporterCellO">' + msg[0].outbound[i].transporter_company + '</td><td class="cus tujuanCellO">' + msg[0].outbound[i].tujuan + '</td><td class="statusCellO">' + msg[0].outbound[i].status_name + '</td><td class="scanCellO">' + lscanO + '</td><td class="phone pltCellO">' + in_waitingO + '</td><td class="cus gateCellO">' + msg[0].outbound[i].gate_number + '</td><td class="vehicleCellO">' + msg[0].outbound[i].vehicle_name + '</td><td class="durationCellO"><span id="' + msg[0].outbound[i].id_dms_form + '"></span></td><td class="cus projectCellO">' + msg[0].outbound[i].master_project_name + '</td></tr>';
                    
                      var firstrowO = document.getElementById('tbody_outbound'); 
                      firstrowO.insertAdjacentHTML('afterbegin', newChildO);
                    }*/

                    //Refresh page
                    if(statdbOut == 1) //New data
                    {
                      location.reload();
                    }
                  }
                  else if(statdbOut == 8 || statdbOut == 9)
                  {
                    location.reload();
                  }

                  $('#tbody_outbound tr').each(function() { 
                      var iddmsO = $(this).find(".idCellO").html(); 
                      var in_waitingO = '-'; 
                      var TglSkrg = new Date().getTime();
                      if(iddmsO==msg[0].outbound[i].id_dms_form)  
                      { 
                        /*var stathtmlOut = $(this).find(".statusCellO").html(); 
                        var statdbOut = msg[0].outbound[i].status; 
                        var ex_timeO = msg[0].outbound[i].exit_time; 
                        if(statdbOut == 7 || stathtmlOut == 'Leave Warehouse') //Remove tr after an hour from exit_time if status == 7
                        { 
                          if(typeof ex_timeO == 'undefined' || ex_timeO == null || ex_timeO == '')
                          {
                            var etimeO = 0;
                          }
                          else
                          {
                            var aE=ex_timeO.split(" ");
                            var dE=aE[0].split("-");
                            var tE=aE[1].split(":");
                            var etimeO = new Date(dE[1]+'/'+dE[2]+'/'+dE[0]+' '+aE[1]).getTime()+(1000*60*60); // + 1 hour
                          }

                          if(TglSkrg > etimeO) $(this).remove(); // remove after 1 hour
                        }
                        else if(stathtmlOut == 'Done')
                        {
                          $(this).remove(); 
                        }
						*/

                        //HourAdd1
                        //var HourAdd1 = new Date(msg[0].outbound[i].arrival_time).getTime()+(1000*60*60);
                        var arrival = msg[0].outbound[i].arrival_time;
                        if(typeof arrival == 'undefined' || arrival == null || arrival == '')
                        {
                          var HourAdd1 = 0;
                        }
                        else
                        {
                          var ar=arrival.split(" ");
                          var dr=ar[0].split("-");
                          var tr=ar[1].split(":");
                          var HourAdd1 = new Date(dr[1]+'/'+dr[2]+'/'+dr[0]+' '+ar[1]).getTime()+(1000*60*60);
                        }

                        //Minute10
                        //var Minute10 = new Date(in_waitingO).getTime()+(1000*60*10);
                        if(msg[0].outbound[i].waiting_time!='') in_waitingO = msg[0].outbound[i].waiting_time;
                        if(in_waitingO == '-' || typeof in_waitingO == 'undefined' || in_waitingO == null || in_waitingO == '')
                        {
                          var Minute10 = 0;
                        }
                        else
                        {
                          var a1=in_waitingO.split(" ");
                          var d1=a1[0].split("-");
                          var t1=a1[1].split(":");
                          var Minute10 = new Date(d1[1]+'/'+d1[2]+'/'+d1[0]+' '+a1[1]).getTime()+(1000*60*10);
                        }

                        //Minute10Stat3
                        //var Minute10Stat3 = new Date(msg[0].outbound[i].last_scan2).getTime()+(1000*60*10);
                        var ls2 = msg[0].outbound[i].last_scan2;
                        if(typeof ls2 == 'undefined' || ls2 == null || ls2 == '')
                    {
                      var Minute10Stat3 = 0;
                    }
                    else
                    {
                      var a2=ls2.split(" ");
                      var d2=a2[0].split("-");
                      var t2=a2[1].split(":");
                      var Minute10Stat3 = new Date(d2[1]+'/'+d2[2]+'/'+d2[0]+' '+a2[1]).getTime()+(1000*60*10);
                  }

                        //hourStat4
                        //var hourStat4 = new Date(msg[0].outbound[i].last_scan3).getTime()+(1000*60*60);
                        var ls3 = msg[0].outbound[i].last_scan3;
                        if(typeof ls3 == 'undefined' || ls3 == null || ls3 == '')
                    {
                      var hourStat4 = 0;
                    }
                    else
                    {
                      var a3=ls3.split(" ");
                      var d3=a3[0].split("-");
                      var t3=a3[1].split(":");
                      var hourStat4 = new Date(d3[1]+'/'+d3[2]+'/'+d3[0]+' '+a3[1]).getTime()+(1000*60*60);
                  }

                        //Minute10Stat5
                        //var Minute10Stat5 = new Date(msg[0].outbound[i].last_scan4).getTime()+(1000*60*10);
                        var ls4 = msg[0].outbound[i].last_scan4;
                        if(typeof ls4 == 'undefined' || ls4 == null || ls4 == '')
                    {
                      var Minute10Stat5 = 0;
                    }
                    else
                    {
                      var a4=ls4.split(" ");
                      var d4=a4[0].split("-");
                      var t4=a4[1].split(":");
                      var Minute10Stat5 = new Date(d4[1]+'/'+d4[2]+'/'+d4[0]+' '+a4[1]).getTime()+(1000*60*10);
                  }

                        //Minute15Stat6
                        //var Minute15Stat6 = new Date(msg[0].outbound[i].last_scan5).getTime()+(1000*60*15);
                        var ls5 = msg[0].outbound[i].last_scan5;
                        if(typeof ls5 == 'undefined' || ls5 == null || ls5 == '')
                    {
                      var Minute15Stat6 = 0;
                    }
                    else
                    {
                      var a5=ls5.split(" ");
                      var d5=a5[0].split("-");
                      var t5=a5[1].split(":");
                      var Minute15Stat6 = new Date(d5[1]+'/'+d5[2]+'/'+d5[0]+' '+a5[1]).getTime()+(1000*60*15);
                  }

                        //Waiting Outside
                        if(msg[0].outbound[i].status == 1 && TglSkrg>HourAdd1)
                        {
                          $(this).children('td').css('color','red');
                        }
                        //Waiting Gate
                        else if(msg[0].outbound[i].status == 2 && TglSkrg>Minute10)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].outbound[i].status == 3 && TglSkrg>Minute10Stat3)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].outbound[i].status == 4 && TglSkrg>hourStat4)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].outbound[i].status == 5 && TglSkrg>Minute10Stat5)
                        {
                          $(this).children('td').css('color','red');
                        }
                        else if(msg[0].outbound[i].status == 6 && TglSkrg>Minute15Stat6)
                        {
                          $(this).children('td').css('color','red');
                        }else
                        {
                          $(this).children('td').css('color','');
                        }

                        $(this).find("td.plateCellO").html(msg[0].outbound[i].plat_no);
                        $(this).find("td.driverCellO").html(msg[0].outbound[i].driver_name);
                        $(this).find("td.transporterCellO").html(msg[0].outbound[i].transporter_company);
                        $(this).find("td.tujuanCellO").html(msg[0].outbound[i].tujuan);
                        $(this).find("td.statusCellO").html(msg[0].outbound[i].status_name);
                        $(this).find("td.scanCellO").html(msg[0].outbound[i].last_scan);
                        $(this).find("td.pltCellO").html(in_waitingO);
                        $(this).find("td.gateCellO").html(msg[0].outbound[i].gate_number);
                        $(this).find("td.vehicleCellO").html(msg[0].outbound[i].vehicle_name);
                        //$(this).find("td.durationCellO").html(msg[0].outbound[i].duration);
                        //$(this).find("span#"+iddms).html(msg[0].outbound[i].duration);
                        $(this).find("td.projectCellO").html(msg[0].outbound[i].master_project_name);

                        
                      }  

                  });


                  //Script: Outbound-duration
                  var o_idDms = msg[0].outbound[i].id_dms_form;
                  var o_duration = msg[0].outbound[i].arrival_time;
                  var o_exitTime = msg[0].outbound[i].exit_time;
                  var o_status = msg[0].outbound[i].status;

                  //var o_countupDate = new Date(o_duration).getTime();
                  if(typeof o_duration != 'undefined' && o_duration != null && o_duration != '')
                  {
                    var aO=o_duration.split(" ");
                    var dO=aO[0].split("-");
                    var tO=aO[1].split(":");
                    var o_countupDate = new Date(dO[1]+'/'+dO[2]+'/'+dO[0]+' '+aO[1]).getTime();
                  }
                  else{ var o_countupDate = 0 }
                
                  //var o_exit = new Date(o_exitTime).getTime();
                  if(typeof o_exitTime != 'undefined' && o_exitTime != null && o_exitTime != '')
                  {
                    var aOE=o_exitTime.split(" ");
                    var dOE=aOE[0].split("-");
                    var tOE=aOE[1].split(":");
                    var o_exit = new Date(dOE[1]+'/'+dOE[2]+'/'+dOE[0]+' '+aOE[1]).getTime();
                  }
                  else{ var o_exit = 0 }
                

                  if(typeof o_duration == ''){}
                  else
                  {
                    // Update the count down every 1 second
                      var x = setInterval(function() 
                      {
                        // Get todays date and time
                        var now = new Date().getTime();
                          // Find the distance between now an the count down date
                        if(o_status == 7){
                          var distance = o_exit - o_countupDate;
                        }
                        else
                        {
                          var distance = now - o_countupDate; 
                        }
                         
                        // Time calculations for days, hours, minutes and seconds
                        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                          
                        // Output the result in an element with id="demo"
                        $(this).find("#tbody_outbound span#"+o_idDms).html(hours + "h " + minutes + "m " + seconds + "s");
                        //document.getElementById("").innerHTML = hours + "h " + minutes + "m " + seconds + "s";

                        // If the count down is over, write some text 
                        if (distance < 0) {
                            clearInterval(x);
                            $(this).find("#tbody_outbound span#"+o_idDms).html("EXPIRED");
                            //document.getElementById("").innerHTML = "EXPIRED";
                        }

                      }, 1000);
                  }   
                }

            },
            error:function(msg){
              console.log("failed"); 
          }
        }); 
      }
    });
  </script> 
@endsection