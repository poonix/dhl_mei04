
<script type="text/javascript"  src="{{ asset('js/jquery.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('js/bootstrap.min.js')}}"></script>
<script src="https://www.gstatic.com/firebasejs/4.13.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.13.0/firebase-messaging.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyB-ivVl9lIiFwMHajep8MZc3MS8yLVe0v0",
    authDomain: "dock-management-system.firebaseapp.com",
    databaseURL: "https://dock-management-system.firebaseio.com",
    projectId: "dock-management-system",
    storageBucket: "",
    messagingSenderId: "612700675654"
  };
  firebase.initializeApp(config);

  if ('serviceWorker' in navigator) {
  window.addEventListener('load', function() {
    navigator.serviceWorker.register('/sw.js').then(function(registration) {
      // Registration was successful
      console.log('ServiceWorker registration successful with scope: ', registration.scope);
    }, function(err) {
      // registration failed :(
      console.log('ServiceWorker registration failed: ', err);
    });
  });
}
  
  const messaging = firebase.messaging();
  messaging.requestPermission()
  .then(function() {
      console.log('Notification permission granted.');
      return messaging.getToken();
  })
      .then(function(token) {
        console.log(token);
  })
      .catch(function(err) {
      console.log('Unable to get permission to notify.', err);
  });

</script>

<script>
$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="{{ asset('js/jquery.dataTables.min.js')}}"></script>
<script src="{{ asset('js/jquery.fancybox.min.js')}}"></script>
<script> 
    $(document).ready(function(){  
        // Time 
        function showTime() { 
            //var a_p = ""; 
            var today = new Date(); 
            var curr_hour = today.getHours(); 
            var curr_minute = today.getMinutes(); 
            var curr_second = today.getSeconds(); 
            /*
            if (curr_hour < 12) { 
                a_p = "<span>AM</span>"; 
            } else { 
                a_p = "<span>PM</span>"; 
            } 
            if (curr_hour == 0) { 
                curr_hour = 12; 
            } 
            if (curr_hour > 12) { 
                curr_hour = curr_hour - 12; 
            } */
            curr_hour = checkTime(curr_hour); 
            curr_minute = checkTime(curr_minute); 
            curr_second = checkTime(curr_second); 
            $('#clock-large').html(curr_hour + " : " + curr_minute + " : " + curr_second ); 
        } 

        function checkTime(i) { 
            if (i < 10) { 
                i = "0" + i; 
            } 
            return i; 
        } 
         
        setInterval(showTime, 500); 
    
        //Date 
        var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember']; 
        var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum&#39;at', 'Sabtu']; 
        var date = new Date(); 
        var day = date.getDate(); 
        var month = date.getMonth(); 
        var thisDay = date.getDay(), 
        thisDay = myDays[thisDay]; 
        var yy = date.getYear(); 
        var year = (yy < 1000) ? yy + 1900 : yy; 
        $('#date-large').html("<b>" + thisDay + "</b>, " + day + " " + months[month] + " " + year); 
    }); 
</script>




