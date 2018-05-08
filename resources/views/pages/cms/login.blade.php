<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>DMS Login</title>
	<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css"/>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="asset/css/style.css"/>	
</head>
<body style="background-color: #ffcb05;">
<div class="container dashboard">
	<div class="row">
		<!-- ssss -->
		<div class="col-md-7 col-sm-12 ">
			<div class="left_index">
				<img src="asset\image\logo.png" alt="">
				<h1 class="text-center">Content Management System</h1>
				<div class="text-center">
					<img class="truckimage" src="asset\image\truck.png" alt="">
				</div>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam consequatur iure at repudiandae consectetur illum adipisci dignissimos amigos.</p>
			</div>
		</div>
		<div class="col-md-5 ">
			<div class="right_index">
				<div class="form-group ">
					<h6 class="right-time mobilehide dates">WEDNESDAY 15 OCTOBER 2018 / 21:15</h6>
						<!-- <form action="" method=""> -->
							<input type="email" class="form-text username" name="user" placeholder="Username">
							<input type="password" class="form-text password" name="password" placeholder="Password">
							<label class="pull-left ccx">
			                	<input type="checkbox" class="icheck pull-left" name="checkbox1"/>Remember me
			                </label>
			                <a href="{{url('/cms/dashboard')}}"><input type="submit" class="btn brn-danger col-md-12 login" value="LOGIN"/></a>
		                <!-- </form> -->
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
</html>