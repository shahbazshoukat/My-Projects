<?php

	$connect=mysqli_connect('127.0.0.1','root','');
	if(!$connect)
	{
		echo 'NOT CONNECTED TO SERVER...!';
	}
	if(!mysqli_select_db($connect,'admissionportal'))
	{
		echo 'Database Not Selected';
	}
	$result=mysqli_query($connect,"select * from admin where adminID='1'");
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);


?>



<html>
<head>
	<title>Entry Test Date</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body id="profilebody">
		
	<br/>
	<div id="dropdown" align="center">
		<table>
			
				<a id="droplink" href="personalinfo.php"><div id="dropdiv" align="center">Personal Information</div></a>
				<hr>
				<a id="droplink" href="slip.php"><div id="dropdiv" align="center">Entry Test Slip</div></a>
				<hr>
				<a id="droplink" href="testdate.php"><div id="dropdiv" align="center">Entry Test Date</div></a>
				<hr>
				<a id="droplink" href="meritdate.php"><div id="dropdiv" align="center">Merit List Date</div></a>
				<hr>
				<a id="droplink" href="usernotification.php"><div id="dropdiv" align="center">Notification</div></a>
				<hr>
				<a id="droplink" href="test.php"><div id="dropdiv" align="center">Entry Test</div></a>
				<hr>
				<a id="droplink" href="result.php"><div id="dropdiv" align="center">Result</div></a>
				<hr>
				<a id="droplink" href="merit.php"><div id="dropdiv" align="center">Merit Status</div></a>
				<hr>
				
				
				<a id="droplink" href="login.html"><div id="dropdiv" align="center">Logout</div></a>
				<hr>
				
		</table>
			
	</div>
	
	<div id="notest" align="center">
		<pre>Entry Test will be conducted on
		<?php
		echo '<b>'.$row['entryTestdate'].'</b>';
		?>
		</pre>
	</div>
	
	
	<br/><br/><br/>
	<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>


</body>
</html>