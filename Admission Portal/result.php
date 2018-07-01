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
	$result=mysqli_query($connect,"select * from result where stdID='$stdID'");
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
	
?>


<html>
<head>
	<title>Entry Test Result</title>
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
		<pre>Result will be updated after your Entry Test</pre>
	</div>-->
<?php
	$re=mysqli_query($connect,"select * from student where stdID='$stdID'");
	$r=mysqli_fetch_array($re,MYSQLI_ASSOC);
	if($r['entryTestStatus']=='yes')
	{
	echo '<div id="result">';
		echo '<table id="restable" border="1" >';
		echo '<tr id="heading">';
			echo '<th>'."Question No.".'</th>';
			echo '<th>'."Your Answer".'</th>';
			echo '<th>'."Correct Answer".'</th>';
		$result1=mysqli_query($connect,"select * from entrytest where qID='1'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."1.".'</td>';
			echo '<td>'.$row['q1'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
		$result1=mysqli_query($connect,"select * from entrytest where qID='2'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."2.".'</td>';
			echo '<td>'.$row['q2'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='3'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."3.".'</td>';
			echo '<td>'.$row['q3'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='4'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."4.".'</td>';
			echo '<td>'.$row['q4'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='5'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."5.".'</td>';
			echo '<td>'.$row['q5'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='6'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."6.".'</td>';
			echo '<td>'.$row['q6'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='7'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."7.".'</td>';
			echo '<td>'.$row['q7'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='8'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."8.".'</td>';
			echo '<td>'.$row['q8'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='9'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."9.".'</td>';
			echo '<td>'.$row['q9'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='10'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."10.".'</td>';
			echo '<td>'.$row['q10'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='11'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."11.".'</td>';
			echo '<td>'.$row['q11'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='12'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."12.".'</td>';
			echo '<td>'.$row['q12'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='13'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."13.".'</td>';
			echo '<td>'.$row['q13'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
			$result1=mysqli_query($connect,"select * from entrytest where qID='14'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."14.".'</td>';
			echo '<td>'.$row['q14'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='15'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."15.".'</td>';
			echo '<td>'.$row['q15'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='16'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."16.".'</td>';
			echo '<td>'.$row['q16'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='17'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."17.".'</td>';
			echo '<td>'.$row['q17'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='18'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."18.".'</td>';
			echo '<td>'.$row['q18'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='19'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."19.".'</td>';
			echo '<td>'.$row['q19'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='20'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."20.".'</td>';
			echo '<td>'.$row['q20'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='21'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."21.".'</td>';
			echo '<td>'.$row['q21'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='22'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."22.".'</td>';
			echo '<td>'.$row['q22'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='23'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."23.".'</td>';
			echo '<td>'.$row['q23'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='24'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."24.".'</td>';
			echo '<td>'.$row['q24'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='25'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."25.".'</td>';
			echo '<td>'.$row['q25'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='26'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."26.".'</td>';
			echo '<td>'.$row['q26'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='27'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."27.".'</td>';
			echo '<td>'.$row['q27'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='28'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."28.".'</td>';
			echo '<td>'.$row['q28'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='29'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."29.".'</td>';
			echo '<td>'.$row['q29'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='30'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."30.".'</td>';
			echo '<td>'.$row['q30'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='31'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."31.".'</td>';
			echo '<td>'.$row['q31'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='32'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."32.".'</td>';
			echo '<td>'.$row['q32'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='33'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."33.".'</td>';
			echo '<td>'.$row['q33'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='34'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."34.".'</td>';
			echo '<td>'.$row['q34'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='35'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."35.".'</td>';
			echo '<td>'.$row['q35'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='36'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."36.".'</td>';
			echo '<td>'.$row['q36'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='37'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."37.".'</td>';
			echo '<td>'.$row['q37'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='38'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."38.".'</td>';
			echo '<td>'.$row['q38'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='39'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."39.".'</td>';
			echo '<td>'.$row['q39'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
				$result1=mysqli_query($connect,"select * from entrytest where qID='40'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '</tr>';
		echo '<tr>';
			echo '<td>'."40.".'</td>';
			echo '<td>'.$row['q40'].'</td>';
			echo '<td>'.$row1['correctOption'].'</td>';
		echo '</tr>';
		echo '</table>';
	echo '</div>';
	
	echo '<div id="totalresult">';
		echo '<table border="1">';
		echo '<tr>';
		echo '<td>'.'<b>'."Marks Obtained".'</b>'.'</td>';
		echo '<td>'.$row['obtainMarks'].'</td>';
		echo '</tr>';

		
	echo '</table>';
	echo '</div>';
	}
	?>
	
	
	
	<br/><br/><br/>
	<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>


</body>
</html>