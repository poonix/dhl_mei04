<div class="container ">
    <div class="navbar-header ">
      <a class="logos" href="{{url('/cms/dashboard')}}" id="menu-home"><img src="{{ asset('image/logo.png')}}" class="imagestyle"></a>
    </div>
    <ul class="nav navbar-nav">
      <h5 class="dms_nav" >Content Management System</h5>
    </ul>
    <ul class="nav navbar-nav navbar-right rightbar">
      <li><h5 class="right-time mobilehide dates" style="float: left;">{{session()->get('session_name_cms')}}</h5>
      <a href="{{url('/cms/logout')}}" class="logout" onclick="
      //event.preventDefault(); document.getElementById('logout-form').submit();
      "><img class="iconrightnav" src="{{ asset('image/logout.png')}}" alt=""></li>
    </ul>
  </div>
</nav>
 <!--b ====================== -->
<nav class="navbar menu  mobileshow">
  <div class="container ">
    <div class="navbar-header ">
      <a class="logos" href="{{url('/cms/dashboard')}}" id="menu-home"><img src="{{ asset('image/logo.png')}}" class="imagestyle"></a>
      <h5 class="dms_nav">Content Management System</h5>

       <a href="{{url('/cms/logout')}}" class="logout" onclick="
       //event.preventDefault(); document.getElementById('logout-form').submit();
       "><img class="iconrightnav" src="{{ asset('image/logout.png')}}" alt=""><form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
          </a>
       <a id="klik" href="#" class="bell notification"><img class="iconrightnav" src="{{ asset('image/bell.png')}}" alt=""></a>  
    </div>
  </div>