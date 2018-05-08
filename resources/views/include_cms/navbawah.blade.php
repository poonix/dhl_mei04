<div class="container">
    <ul class="nav nav-tabs navbottom navcms">
      <li class="nav-item"><a class="active nav-link"  href="{{url('/cms/dashboard')}}"><span class="ion-android-desktop"></span> Home</a>
      </li>
      <li class="dropdown nav-item"><a class="dropdown-toggle  active nav-link" data-toggle="dropdown" href="#"><span class="ion-ios-settings-strong"></span> Master</a>
        <ul class="dropdown-menu">
          <li><a href="{{url('/cms/master_plat')}}">Master Plate</a></li>
           <li><a href="{{url('/cms/master_phone')}}">Master Phone</a></li> 
           <li><a href="{{url('/cms/master_location')}}">Master Location</a></li> 
           <li><a href="{{url('/cms/master_status')}}">Master Status</a></li> 
          <li><a href="{{url('/cms/master_tc')}}">Master Transporter Company</a></li>
          <li><a href="{{url('/cms/master_project')}}">Master Project</a></li>
          <li><a href="{{url('/cms/master_vehicle')}}">Master Vehicle</a></li>
        </ul>
      </li>
      <li class="dropdown nav-item"><a class="dropdown-toggle  active nav-link" data-toggle="dropdown" href="#"><span class="ion-android-person"></span> User</a>
        <ul class="dropdown-menu">
           <li><a href="{{url('/cms/user_management')}}">User</a></li>
           <li><a href="{{url('/cms/user_group')}}">User Group</a></li>
        </ul>
      </li>
    </ul>
  </div>