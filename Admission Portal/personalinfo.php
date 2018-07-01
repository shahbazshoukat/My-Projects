<?php
session_start();

?>
<?php

	//$stdID = $_GET['stdID'];
	
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
	
	$result2=mysqli_query($connect,"select * from preference where stdID='$stdID'");
	$row2=mysqli_fetch_array($result2,MYSQLI_ASSOC);
	


echo '<html>';
echo '<head';
	echo '<title>'."Personal Information".'</title>';
	echo '<link rel="stylesheet" type="text/css" href="styles.css">';
echo '</head>';
echo '<body id="profilebody">';
		
	echo '<br/>';
	echo '<div id="dropdown" align="center">';
		echo '<table>';
			
				echo '<a id="droplink" href="personalinfo.php">'.'<div id="dropdiv" align="center">'."Personal Information".'</div>'.'</a>';
				echo '<hr>';
				echo '<a id="droplink" href="slip.php?stdID=1">'.'<div id="dropdiv" align="center">'."Entry Test Slip".'</div>'.'</a>';
				echo '<hr>';
				
				echo '<a id="droplink" href="testdate.php">'.'<div id="dropdiv" align="center">'."Entry Test Date".'</div>'.'</a>';
				echo '<hr>';
				
				echo '<a id="droplink" href="meritdate.php">'.'<div id="dropdiv" align="center">'."Merit List Date".'</div>'.'</a>';
				echo '<hr>';
				
				echo '<a id="droplink" href="usernotification.php">'.'<div id="dropdiv" align="center">'."Notification".'</div>'.'</a>';
				echo '<hr>';
				
				echo '<a id="droplink" href="test.php">'.'<div id="dropdiv" align="center">'."Entry Test".'</div>'.'</a>';
				echo '<hr>';
				echo '<a id="droplink" href="result.php">'.'<div id="dropdiv" align="center">'."Result".'</div>'.'</a>';
				echo '<hr>';
				echo '<a id="droplink" href="merit.php">'.'<div id="dropdiv" align="center">'."Merit Status".'</div>'.'</a>';
				echo '<hr>';
				
				echo '<a id="droplink" href="login.html">'.'<div id="dropdiv" align="center">'."Logout".'</div>'.'</a>';
				echo '<hr>';
				
		echo '</table>';
			
	echo '</div>';
	
	?>
	<?php
	echo '<div id="personalinfo">';
	echo '<div id="picandname">';
		echo '<div id="userpic">';
			echo '<img src="uploads/'.$stdID.'.jpg" width="150px" height="150px">';
		echo '</div>';
		
		echo '<div id="username">';
		echo  '<h1>'.$row['stdName'].'</h1>';
		echo '</div>';
	echo '</div>';
		
		echo '<div id="userdata">';
		echo '<ul id="datalist" type="none">';
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
				echo '<p>'."Father CNIC: ".'<b>'.$row['fatherCNIC'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Gender: ".'<b>'.$row['gender'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Date of Birth: ".'<b>'.$row['DOB'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Nationality: ".'<b>'.$row['nationality'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Religion: ".'<b>'.$row['religion'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Domicile: ".'<b>'.$row['domicile'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Mobile Number 1: ".'<b>'.$row['phoneNo1'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Mobile Number 2: ".'<b>'.$row['phoneNo2'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Home Address: ".'<b>'.$row['homeAddress'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."City: ".'<b>'.$row['city'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."State: ".'<b>'.$row['state'].'</b>'.'</p>';
				echo '</li>';
				echo '<li>';
				echo '<p>'."Country: ".'<b>'.$row['country'].'</b>'.'</p>';
				echo '</li>';
			echo '</ul>';
			
			echo '<table id="edudata">';
					echo '<th id="thead">';
						echo "Exam Passed";
					echo '</th>';
					echo '<th id="thead">';
					echo "Year";
					echo '</th>';
					echo '<th id="thead">';
					echo "Board/University";
					echo '</th>';
					echo '<th id="thead">';
					echo "Roll Number";
					echo '</th>';
					echo '<th id="thead">';
						echo "Annual/Supply";
					echo '</th>';
					echo '<th id="thead">';
						echo "Total Marks";
					echo '</th>';
					echo '<th id="thead">';
						echo "Obtained Marks";
					echo '</th>';
					echo '<th id="thead">';
						echo "Subject";
					echo '</th>';
				echo '</tr>';
				echo '<tr id="row">';
					echo '<td>';
						echo "Matric";
					echo '</td>';
					echo '<td>';
						echo $row['matricYear'];
					echo '</td>';
					echo '<td>';
						echo $row['matricBoard'];
					echo '</td>';
					echo '<td>';
						echo $row['matricRollNo'];
					echo '</td>';
					echo '<td>';
					echo $row['matricStatus'];
					echo '</td>';
					echo '<td>';
						echo $row['matricTotalMarks'];
					echo '</td>';
					echo '<td>';
						echo $row['matricObtainMarks'];
					echo '</td>';
					echo '<td>';
						echo $row['matricMajors'];
					echo '</td>';
				echo '</tr>';
				echo '<tr id="row">';
					echo '<td>';
						echo "Intermediate";
					echo '</td>';
					echo '<td>';
						echo $row['intermediateYear'];
					echo '</td>';
					echo '<td>';
						echo $row['intermediateBoard'];
					echo '</td>';
					echo '<td>';
						echo $row['intermediateRollNo'];
					echo '</td>';
					echo '<td>';
						echo $row['intermediateStatus'];
					echo '</td>';
					echo '<td>';
						echo $row['intermediateTotalMarks'];
					echo '</td>';
					echo '<td>';
						echo $row['intermediateObtainMarks'];
					echo '</td>';
					echo '<td>';
					   echo $row['intermediateMajors'];
					echo '</td>';
				echo '</tr>';
			echo '</table>';
			echo '<br/>'.'<br/>';
			echo '<table id="pretable">';
				echo '<tr>';
					echo '<th id="thead">';
						echo "First";
					echo '</th>';
					echo '<th id="thead">';
						echo "Second";
					echo '</th>';
					echo '<th id="thead">';
						echo "Third";
					echo '</th>';
					echo '<th id="thead">';
						echo "Fourth";
					echo '</th>';
					echo '<th id="thead">';
						echo "Fifth";
					echo '</th>';
					echo '<th id="thead">';
						echo "Sixth";
					echo '</th>';
				echo '</tr>';
				
				echo '<tr>';
					echo '<td>';
						echo $row2['p1'];
					echo '</td>';
					echo '<td>';
						echo $row2['p2'];
					echo '</td>';
					echo '<td>';
						echo $row2['p3'];
					echo '</td>';
					echo '<td>';
						echo $row2['p4'];
					echo '</td>';
					echo '<td>';
						echo $row2['p5'];
					echo '</td>';
					echo '<td>';
						echo $row2['p6'];
					echo '</td>';
				echo '</tr>';
			echo '</table>';
			
		echo '</div>';
	
	echo '</div>';
	?>

	<!--<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<hr id="headerrow">
	<div id="profilefooter" align="center">
		www.admissionportal.com
	</div>-->
<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>

</body>
</html>