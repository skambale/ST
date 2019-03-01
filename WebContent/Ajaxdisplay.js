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
});
