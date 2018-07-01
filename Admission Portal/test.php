<?php
	session_start();

?>

<?php
	
	$stdID=$_SESSION["std_ID"];
	$connect=mysqli_connect('127.0.0.1','root','');
	if(!$connect)
	{
		echo 'NOT CONNECTED TO SERVER...!';
	}
	if(!mysqli_select_db($connect,'admissionportal'))
	{
		echo 'Database Not Selected';
	}
	$result1=mysqli_query($connect,"select * from student where stdID='$stdID'");
	$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
	
	$result2=mysqli_query($connect,"select * from admin where adminID='1'");
	$row2=mysqli_fetch_array($result2,MYSQLI_ASSOC);


?>


<html>
<head>
	<title>Entry Test</title>
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
	<?php
	$status1='no';
	$status2='yes';
	'<div id="notest" align="center">';
		if($row1['entryTestStatus']==$status1 && $row2['uploadEntryTest']==$status2)
		{
			header("refresh:0; url=entrytest.php");
		}
		else
		{
		}
	'</div>';
	
	?>
	<br/><br/><br/>
	<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>


</body>
</html>