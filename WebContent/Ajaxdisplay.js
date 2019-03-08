$(document).ready(function() {
	$("button[name = 'GMTtime']").click(function(event) {
            var MarketPlace = $('#MarketPlace').val();
            var TimeStamp = $('#TimeStamp').val();
            $.get('GetUserServlet', {
            	MarketPlace : MarketPlace,
            	TimeStamp : TimeStamp,
            }, function(responseText) {
                    $('#ajaxGetUserServletResponse').text(responseText);
            });
    });

    setTimeout(function(){$('#MarketPlace')
          .find('option:nth-child(1)')
          .prop('selected',true)
          .trigger('change')},100); 


    var place_time_map = {
        "US": "-8.0",
        "JP": "+9.0",
        "CA": "-8.0",
        "MX": "-6.0",
        "BR": "-4.0",
        "AU": "+11.0",
        "CN": "+8.0",
        "SG": "+8.0",
        "UK": "+0.0",
        "IN": "+5.5",
        "DE": "-5.0",
        "ES": "-5.0",
        "FR": "+1.0",
        "IT": "+1.0"
    }

    $('#MarketPlace').on('change', function(e) {
        var date_time = calcTime(place_time_map[$(this).val()])
        var arr = date_time.split(' ')
        var new_time = timeConvertor(arr[1] + arr[2]);
        var date = arr[0].split('/');
        var time = new_time.split(':');
        date[0] = date[0].length < 2 ? '0' + date[0] : date[0]
        date[1] = date[1].length < 2 ? '0' + date[1] : date[1]
        var display_date_time = date[2] + '-' + date[0] + '-' + date[1] + 'T' + time[0] + ":" + time[1];
        display_date_time = display_date_time.replace(',','')
        $('#TimeStamp').val(display_date_time);
    });

    function timeConvertor(time) {
        var time = time.split(':');
        var minutes = time[1];
        var format = time[2];
        var hours = time[0];
        if (format.indexOf("PM") != -1 && parseInt(time[0]) < 12) {
            var hours = parseInt(time[0]) + 12;
            var sec = time[2].replace('PM', '')
        } 
        if(format.indexOf("AM") != -1 && parseInt(time[0]) == 12) {
            var hours = parseInt(time[0]) - 12
            var sec = time[2].replace('AM', '')       
        }
        if (hours.toString().length < 2) hours = "0" + hours;
        if (minutes.toString().length < 2) minutes = "0" + minutes;
        return (hours + ':' + minutes + ':' + sec)
    }

    function calcTime(offset) {

        d = new Date();
        utc = d.getTime() + (d.getTimezoneOffset() * 60000);
    
        nd = new Date(utc + (3600000*offset));
    
        return nd.toLocaleString();
    
    }

});
