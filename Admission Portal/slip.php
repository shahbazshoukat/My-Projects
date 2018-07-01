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
	
?>


<html>
<head>
	<title>Admission Portal</title>
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
	
	
	<div id="HTMLtoPDF">
	<div id="slippic">
		<?php
			echo '<img src="uploads/'.$stdID.'.jpg"  width="120px" height="160px" align="right">';
			?>
		</div>
		<div id="slipdata">
			<ul id="sliplist" type="none" >
<?php
				echo '<li>';
					echo '<p>'."Roll No: ".'<b>'.(1000+$row['stdID']).'</b>'.'</p>';
				echo '</li>';
				echo '<hr/>';
				echo '<li>';
					echo '<p>'."Name: ".'<b>'.$row['stdName'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
					echo '<p>'."Father Name: ".'<b>'.$row['fatherName'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
					echo '<p>'."Candidate CNIC: ".'<b>'.$row['CNIC'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
					echo '<p>'."Examination Center: ".'<b>'."Punjab University".'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
					echo '<p>'."Timing: ".'<b>'."11:00 A.M - 1:00 P.M".'</b>'.'</p>';
				echo '</li>';
?>
			</ul>
		</div>
		
		
	</div>
	<a href="#" onclick="HTMLtoPDF()"><button id="download">Download PDF</button></a>	
	<br/><br/><br/>

	
<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>

	
	<script src="js/jspdf.js"></script>
	<script src="js/jquery-2.1.3.js"></script>
	<script src="js/pdfFromHTML.js"></script>
</body>
</html>