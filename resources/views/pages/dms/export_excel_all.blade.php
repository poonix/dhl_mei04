<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css')}}"/>
  <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css?v=2.13')}}"/> 
  <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.dataTables.min.css')}}"/> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h3>User Group : {{session()->get('session_name')}} / {{session()->get('session_name_project')}}</h3>
  <h3>Hak Akses : {{session()->get('session_name_project')}}</h3>
  <h3>Data : @if ($purpose == 1)All Data
  			 @elseif ($purpose == 2)Inbound
        	 @else Outbound @endif </h3>

  <div class="tab-content">
    <div id="all" class="tab-pane fade in active">
      <table class="table-striped ext-center"   cellspacing="0">
        <thead class="thead text-center" >
          <tr >
          	<th>NO</th>
			<th>ID DMS</th>
			<th>TRUCK NO. POL</th>
			<th>PENGEMUDI</th>
			<th>STATUS</th>
			<th>NO. HANDPHONE</th>
			<th>TIPE TRUK</th>
			<th>VENDOR</th>
			<th>NO. PO/SO/DO/DN</th>
			<th>INBOUND/OUTBOUND</th>
			<th>ASAL</th>
			<th>TUJUAN</th>
			<th>NAMA CUSTOMER</th>
			<th>PUT/PLT</th>
			<th>GATE</th>
			<th>ARRIVAL DATE</th>
			<th>ARRIVAL TIME</th>
			<th>PUT/PLT</th>
			<th>JAM SMS</th>
			<th>JAM ENTER WH</th>
			<th>JAM START LOADING</th>
			<th>JAM COMPLETE LOADING</th>
			<th>JAM EXIT</th>
			<th>TANGGAL EXIT</th>
			<th>DURASI</th>
          </tr>
        </thead>

        <tbody class="paddingtable text-center">
           @foreach($dms_all as $all)
          <tr>    
            <td>{{ $no_all++ }}</td>
			<td> {{ $all->id_dms_form }} </td><!--dms-->
			<td> {{ $all->plat_no }} </td><!--plat-->
			<td> {{ $all->driver_name }} </td><!--driver-->
			<td> {{ $all->status_name }} </td><!--status-->
			<td> {{ $all->driver_phone }} </td><!--no hp-->
			<td> {{ $all->vehicle_name }} </td><!--kendaraan-->
			<td> {{ $all->transporter_company }} </td><!--vendor-->
			<td> {{ $all->shipment }} </td><!--no po/so/do-->
			<td> {{ $all->purpose }} </td><!--purpose-->
			<td> {{ $all->asal }} </td><!--asal-->
			<td> {{ $all->tujuan }} </td><!--tujuan-->
			<td> {{ $all->master_project_name }} </td><!--customer-->
			<td><?php 	if ($all->waiting_time == null || $all->waiting_time == '') {} else {
				$waiting_time = explode(" ", $all->waiting_time);
				$waiting_time[0]; // piece1
				$waiting_time[1]; // piece2 
			 	echo $waiting_time[1];}?>
			 </td><!--plt-->

			<td> {{ $all->gate_number }} </td><!--gate-->

			<td><?php 	if ($all->arrival_time == null || $all->arrival_time == '') {} else {
				$arrival_time = explode(" ", $all->arrival_time);
				$arrival_time[0]; // piece1
				$arrival_time[1]; // piece2 
			 	echo $arrival_time[0];}?>
			 </td><!--arrival date-->
			<td><?php 	if ($all->arrival_time == null || $all->arrival_time == '') {} else {
				$arrival_time = explode(" ", $all->arrival_time);
				$arrival_time[0]; // piece1
				$arrival_time[1]; // piece2 
			 	echo $arrival_time[1];}?>
			 </td><!--arrival time-->

			<td><?php 	if ($all->waiting_time == null || $all->waiting_time == '') {} else {
				$waiting_time = explode(" ", $all->waiting_time);
				$waiting_time[0]; // piece1
				$waiting_time[1]; // piece2 
			 	echo $waiting_time[1];}?>
			 </td><!--plt/put-->
			<td> <?php 	if ($all->jam_sms == null || $all->jam_sms == '') {} else {
				$jam_sms = explode(" ", $all->jam_sms);
				$jam_sms[0]; // piece1
				$jam_sms[1]; // piece2 
			 	echo $jam_sms[1];}?></td><!--jam driver sms-->

			<td><?php 	if ($all->lastscan2 == null || $all->lastscan2 == '') {} else {
				$lastscan2 = explode(" ", $all->lastscan2);
				$lastscan2[0]; // piece1
				$lastscan2[1]; // piece2 
			 	echo $lastscan2[1];}?>
			 </td><!--jam enter wh-->
			<td><?php 	if ($all->lastscan3 == null || $all->lastscan3 == '') {} else {
				$lastscan3 = explode(" ", $all->lastscan3);
				$lastscan3[0]; // piece1
				$lastscan3[1]; // piece2 
			 	echo $lastscan3[1];}?>
			 </td><!--jam startloading-->
			<td><?php 	if ($all->lastscan4 == null || $all->lastscan4 == '') {} else {
				$lastscan4 = explode(" ", $all->lastscan4);
				$lastscan4[0]; // piece1
				$lastscan4[1]; // piece2 
			 	echo $lastscan4[1];}?>
			 </td><!--jam complete loading-->
			<td><?php 	if ($all->exit_time == null || $all->exit_time == '') {} else {
				$exit_time = explode(" ", $all->exit_time);
				$exit_time[0]; // piece1
				$exit_time[1]; // piece2 
			 	echo $exit_time[1];}?>
			 </td><!--jam exit-->
			<td><?php 	if ($all->exit_time == null || $all->exit_time == '') {} else {
				$exit_time = explode(" ", $all->exit_time);
				$exit_time[0]; // piece1
				$exit_time[1]; // piece2 
			 	echo $exit_time[0];}?>
			 </td><!--tgl exit-->
			<td> {{ $all->duration }} </td><!--durasi-->
          </tr>
           @endforeach
        </tbody>
      </table>
    </div>
</div>

</body>
</html>  


