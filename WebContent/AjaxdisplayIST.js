$(document).ready(function() {
	$("button[name = 'ISTtime']").click(function(event) {
            var MarketPlace = $('#MarketPlace').val();
            var TimeStamp = $('#TimeStamp').val();
            $.get('GetUserServletIST', {
            	MarketPlace : MarketPlace,
            	TimeStamp : TimeStamp,
            }, function(responseText) {
                    $('#ajaxGetUserServletResponse').text(responseText);
            });
    });
});
