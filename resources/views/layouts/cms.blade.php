<!DOCTYPE html>
<html lang="en">
<head>
  @include('include_cms/head')
</head>
<body>
  <!-- a ====================== -->
  <nav class="navbar menu  mobilehide">
    @include('include_cms/navatas')
  </nav> 
  <nav class="navbar menu noborder">
    @include('include_cms/navbawah')
  </nav>
  <!-- Tab panes -->

  <div class="container">
      @yield('content')
  </div>
</body>
  @include('include_cms/script')
  @yield('script_cms')
</html>
