<script src="{{ asset('js/jquery.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('js/bootstrap.min.js')}}"></script>
<script>
$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
</script>
<script src="{{ asset('js/jquery.dataTables.min.js')}}"></script>
<script>
function startTime() {
    var today = new Date();
    document.getElementById('time').innerHTML =
    today.toUTCString();
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
<script> 
    $(document).ready(function(){  
        // Time 
        function showTime() { 
            var a_p = ""; 
            var today = new Date(); 
            var curr_hour = today.getHours(); 
            var curr_minute = today.getMinutes(); 
            var curr_second = today.getSeconds(); 
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
            } 
            curr_hour = checkTime(curr_hour); 
            curr_minute = checkTime(curr_minute); 
            curr_second = checkTime(curr_second); 
            $('#clock-large').html(curr_hour + " : " + curr_minute + " : " + curr_second + " " + a_p); 
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