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
	$result=mysqli_query($connect,"select * from student where stdID='$stdID'");
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
	
	$result1=mysqli_query($connect,"select * from result where stdID='$stdID'");
	$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
	
	
?>



<html>
<head>
	<title>Merit Status</title>
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
	
	<!--<div id="notest" align="center">
		<pre>Merit Status will be updated after your Entry Test</pre>
	</div>-->
	
	<div id="merit_status" align="center">
	<div id="merit">
		<table id="restable" border="2">
		<?php
			echo '<tr>';
				echo '<td>'."Marks in Matric".'</td>';
				echo '<td>'.$row['matricObtainMarks'].'</td>';
			echo '</tr>';
			echo '<tr>';
				echo  '<td>'."Marks in Intermediate".'</td>';
				echo '<td>'.$row['intermediateObtainMarks'].'</td>';
			echo '</tr>';
			echo '<tr>';
				echo '<td>'."Marks in Entry Test".'</td>';
				echo '<td>'.$row1['obtainMarks'].'</td>';
			echo '</tr>';
			echo '<tr>';
				echo '<td>'."Aggregate".'</td>';
				echo '<td>'.$row1['aggregate'].'</td>';
			echo '</tr>';
			echo '<tr>';
				echo '<td>'."Degree".'</td>';
				echo '<td>'.$row1['degree'].'</td>';
			echo '</tr>';
		?>
		</table>
	</div>
	<div id="freez" align="center">
		<p>Do you want to freez your preference.</p>
		<form>
			<input type="radio" name="freez" value="yes">Yes
			<input type="radio" name="freez" value="no">No<br/><br/>
			<input id="submit" type="submit" name="fsubmit" value="submit"><br/><br/>
		</form>
	</div>
	
	</div>
	<div id="fee_guide">
		<b>Guidline For Fee Submission</b>
		<hr>
		Follow these steps:<hr><br/>
		Step1: Get a challan from your account.<hr>
		Step2: Submit Your Fee In the mentioned <br/> branch of HBL Bank <b>before due date.<hr></b>.
		Step3: Wait for 24 hours.<hr><br/>
		Step4: Check Your Admission Status.<hr>
		Step5: Enter Your Challan No.<hr>
		
	</div>
	
	
	
	
	<br/><br/><br/>
	<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>

</body>
</html>