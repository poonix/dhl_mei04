<!DOCTYPE html>
<html lang="en">
<head>
  @include('include_dms/head')
</head>
<!-- <body onload="startTime()"> -->
  <body>
  <!-- a ====================== -->
  <nav class="navbar menu  mobilehide">
    @include('include_dms/navatas')
  </nav> 
  <nav class="navbar menu noborder">
    @include('include_dms/navbawah')
  </nav>
<!-- Tab panes -->

  <div class="container">
      @yield('content')
  </div>
</body>
@include('include_dms/script')
@yield('script')
</html>
