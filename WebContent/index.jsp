
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Global Time Converter</title>

<script src="‪https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="Ajaxdisplay.js" type="text/javascript"></script>
<script src="AjaxdisplayIST.js" type="text/javascript"></script>
<link rel="stylesheet" href="TimeConverter.css">		
</head>
<body style="background-color:powderblue;">
<div id="base-container">
<section id="clock-container">
<center><h3>Global Time Converter</h3></center>
<b style="margin:50px">UK</b>
<b style="margin:50px">US</b>
<b style="margin:50px">IN</b>
<div align="left" id="demo1">
<iframe src="http://free.timeanddate.com/clock/i6nek63h/n85/szw110/szh110/hoced1c24/hbw10/cf100/hgr0/fiv0/fas34/fdi72/mqv0/mhc000/mhs3/mhl20/mhw1/mhd84/mmv0/hhs1/hms1/hsc000/hss1" frameborder="0" width="110" height="110"></iframe>
<iframe src="http://free.timeanddate.com/clock/i6npxu3o/n234/szw110/szh110/hoced1c24/hbw10/cf100/hgr0/fiv0/fas34/fdi72/mqv0/mhc000/mhs3/mhl20/mhw1/mhd84/mmv0/hhs1/hms1/hsc000/hss1" frameborder="0" width="110" height="110"></iframe>
<iframe src="http://free.timeanddate.com/clock/i6npy1qi/n438/szw110/szh110/hoced1c24/hbw10/cf100/hgr0/fiv0/fas34/fdi72/mqv0/mhc000/mhs3/mhl20/mhw1/mhd84/mmv0/hhs1/hms1/hsc000/hss1" frameborder="0" width="110" height="110"></iframe>

</div>
<form>	

<label for="MarketPlace">Market place:</label>
<select id="MarketPlace" size= "1" name="MarketPlace">
<option value="US" selected>US(PST)</option>
<option value="JP">JP(JST)</option>
<option value="CA">CA(7)</option>
<option value="MX">MX</option>
<option value="BR">BR</option>
<option value="AU">AU</option>
<option value="CN">CN</option>
<option value="SG">SG</option>
<option value="UK">UK(GMT)</option>
<option value="IN">IN(IST)</option>
<option value="DE">DE</option>
<option value="ES">ES</option>
<option value="FR">FR</option>
<option value="IT">IT</option>
</select>
<label for="TimeStamp">Choose a TimeStamp:</label>
<input type="datetime-local" id="TimeStamp" name="TimeStamp" value="">

</form>
	<br>
	<br>

<center>	
	<button type="submit" name="GMTtime">GMT Time</button>
	<button type="submit" name="ISTtime">IST Time</button>
</center>
<center>
    <br>
	<br>
	<div id="ajaxGetUserServletResponse"></div>
</center>
</section>
<section id="tabs-container">
	<div class="tab">
		<select class="tab-options" name="tab-options">
				<option value="option1" selected >option1</option>
				<option value="option2">option2</option>
		</select>
	</div>
	<div class="tab">
	<select class="tab-options" name="tab-options">
			<option value="option1" selected>option1</option>
			<option value="option2">option2</option>
	</select>
	</div>
	<div class="tab">
		<select class="tab-options" name="tab-options">
				<option value="option1" selected>option1</option>
				<option value="option2">option2</option>
		</select>
	</div>
	<div class="tab">
		<select class="tab-options" name="tab-options">
				<option value="option1" selected>option1</option>
				<option value="option2">option2</option>
		</select>
	</div>
	<div class="tab">
			<select class="tab-options" name="tab-options">
					<option value="option1" selected>option1</option>
					<option value="option2">option2</option>
			</select>
		</div>


</section>
</div>
</body>
</html>
