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
	
	$marks=0;
	$result1=mysqli_query($connect,"select * from entrytest where qID='1'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
	$q1=$_POST['q1'];
	if($q1==$row1['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result2=mysqli_query($connect,"select * from entrytest where qID='2'");
	$row2=mysqli_fetch_array($result2,MYSQLI_ASSOC);
	$q2=$_POST['q2'];
	if($q2==$row2['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result3=mysqli_query($connect,"select * from entrytest where qID='3'");
		$row3=mysqli_fetch_array($result3,MYSQLI_ASSOC);
	$q3=$_POST['q3'];
	if($q3==$row3['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result4=mysqli_query($connect,"select * from entrytest where qID='4'");
	$row4=mysqli_fetch_array($result4,MYSQLI_ASSOC);
	$q4=$_POST['q4'];
	if($q4==$row4['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result5=mysqli_query($connect,"select * from entrytest where qID='5'");
	$row5=mysqli_fetch_array($result5,MYSQLI_ASSOC);
	$q5=$_POST['q5'];
	if($q5==$row5['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result6=mysqli_query($connect,"select * from entrytest where qID='6'");
	$row6=mysqli_fetch_array($result6,MYSQLI_ASSOC);
	$q6=$_POST['q6'];
	if($q6==$row6['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result7=mysqli_query($connect,"select * from entrytest where qID='7'");
	$row7=mysqli_fetch_array($result7,MYSQLI_ASSOC);
	$q7=$_POST['q7'];
	if($q7==$row7['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result8=mysqli_query($connect,"select * from entrytest where qID='8'");
	$row8=mysqli_fetch_array($result8,MYSQLI_ASSOC);
	$q8=$_POST['q8'];
	if($q8==$row8['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result9=mysqli_query($connect,"select * from entrytest where qID='9'");
	$row9=mysqli_fetch_array($result9,MYSQLI_ASSOC);
	$q9=$_POST['q9'];
	if($q9==$row9['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result10=mysqli_query($connect,"select * from entrytest where qID='10'");
	$row10=mysqli_fetch_array($result10,MYSQLI_ASSOC);
	$q10=$_POST['q10'];
	if($q10==$row10['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result11=mysqli_query($connect,"select * from entrytest where qID='11'");
	$row11=mysqli_fetch_array($result11,MYSQLI_ASSOC);
	$q11=$_POST['q11'];
	if($q11==$row11['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result12=mysqli_query($connect,"select * from entrytest where qID='12'");
	$row12=mysqli_fetch_array($result12,MYSQLI_ASSOC);
	$q12=$_POST['q12'];
	if($q12==$row12['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result13=mysqli_query($connect,"select * from entrytest where qID='13'");
	$row13=mysqli_fetch_array($result13,MYSQLI_ASSOC);
	$q13=$_POST['q13'];
	if($q13==$row13['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result14=mysqli_query($connect,"select * from entrytest where qID='14'");
	$row14=mysqli_fetch_array($result14,MYSQLI_ASSOC);
	$q14=$_POST['q14'];
	if($q14==$row14['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result15=mysqli_query($connect,"select * from entrytest where qID='15'");
	$row15=mysqli_fetch_array($result15,MYSQLI_ASSOC);
	$q15=$_POST['q15'];
	if($q15==$row15['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result16=mysqli_query($connect,"select * from entrytest where qID='16'");
	$row16=mysqli_fetch_array($result16,MYSQLI_ASSOC);
	$q16=$_POST['q16'];
	if($q16==$row16['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result17=mysqli_query($connect,"select * from entrytest where qID='17'");
	$row17=mysqli_fetch_array($result17,MYSQLI_ASSOC);
	$q17=$_POST['q17'];
	if($q17==$row17['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result18=mysqli_query($connect,"select * from entrytest where qID='18'");
	$row18=mysqli_fetch_array($result18,MYSQLI_ASSOC);
	$q18=$_POST['q18'];
	if($q18==$row18['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result19=mysqli_query($connect,"select * from entrytest where qID='19'");
	$row19=mysqli_fetch_array($result19,MYSQLI_ASSOC);
	$q19=$_POST['q19'];
	if($q19==$row19['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result20=mysqli_query($connect,"select * from entrytest where qID='20'");
	$row20=mysqli_fetch_array($result20,MYSQLI_ASSOC);
	$q20=$_POST['q20'];
	if($q20==$row20['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result21=mysqli_query($connect,"select * from entrytest where qID='21'");
	$row21=mysqli_fetch_array($result21,MYSQLI_ASSOC);
	$q21=$_POST['q21'];
	if($q21==$row21['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result22=mysqli_query($connect,"select * from entrytest where qID='22'");
	$row22=mysqli_fetch_array($result22,MYSQLI_ASSOC);
	$q22=$_POST['q22'];
	if($q22==$row22['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result23=mysqli_query($connect,"select * from entrytest where qID='23'");
	$row23=mysqli_fetch_array($result23,MYSQLI_ASSOC);
	$q23=$_POST['q23'];
	if($q23==$row23['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result24=mysqli_query($connect,"select * from entrytest where qID='24'");
	$row24=mysqli_fetch_array($result24,MYSQLI_ASSOC);
	$q24=$_POST['q24'];
	if($q24==$row24['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result25=mysqli_query($connect,"select * from entrytest where qID='25'");
	$row25=mysqli_fetch_array($result25,MYSQLI_ASSOC);
	$q25=$_POST['q25'];
	if($q25==$row25['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result26=mysqli_query($connect,"select * from entrytest where qID='26'");
	$row26=mysqli_fetch_array($result26,MYSQLI_ASSOC);
	$q26=$_POST['q26'];
	if($q26==$row26['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result27=mysqli_query($connect,"select * from entrytest where qID='27'");
	$row27=mysqli_fetch_array($result27,MYSQLI_ASSOC);
	$q27=$_POST['q27'];
	if($q27==$row27['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result28=mysqli_query($connect,"select * from entrytest where qID='28'");
	$row28=mysqli_fetch_array($result28,MYSQLI_ASSOC);
	$q28=$_POST['q28'];
	if($q28==$row28['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result29=mysqli_query($connect,"select * from entrytest where qID='29'");
	$row29=mysqli_fetch_array($result29,MYSQLI_ASSOC);
	$q29=$_POST['q29'];
	if($q29==$row29['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result30=mysqli_query($connect,"select * from entrytest where qID='30'");
	$row30=mysqli_fetch_array($result30,MYSQLI_ASSOC);
	$q30=$_POST['q30'];
	if($q30==$row30['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result31=mysqli_query($connect,"select * from entrytest where qID='31'");
	$row31=mysqli_fetch_array($result31,MYSQLI_ASSOC);
	$q31=$_POST['q31'];
	if($q31==$row31['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result32=mysqli_query($connect,"select * from entrytest where qID='32'");
	$row32=mysqli_fetch_array($result32,MYSQLI_ASSOC);
	$q32=$_POST['q32'];
	if($q32==$row32['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result33=mysqli_query($connect,"select * from entrytest where qID='33'");
	$row33=mysqli_fetch_array($result33,MYSQLI_ASSOC);
	$q33=$_POST['q33'];
	if($q33==$row33['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result34=mysqli_query($connect,"select * from entrytest where qID='34'");
	$row34=mysqli_fetch_array($result34,MYSQLI_ASSOC);
	$q34=$_POST['q34'];
	if($q34==$row34['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result35=mysqli_query($connect,"select * from entrytest where qID='35'");
	$row35=mysqli_fetch_array($result35,MYSQLI_ASSOC);
	$q35=$_POST['q35'];
	if($q35==$row35['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result36=mysqli_query($connect,"select * from entrytest where qID='36'");
	$row36=mysqli_fetch_array($result36,MYSQLI_ASSOC);
	$q36=$_POST['q36'];
	if($q36==$row36['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result37=mysqli_query($connect,"select * from entrytest where qID='37'");
	$row37=mysqli_fetch_array($result37,MYSQLI_ASSOC);
	$q37=$_POST['q37'];
	if($q37==$row37['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result38=mysqli_query($connect,"select * from entrytest where qID='38'");
	$row38=mysqli_fetch_array($result38,MYSQLI_ASSOC);
	$q38=$_POST['q38'];
	if($q38==$row38['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result39=mysqli_query($connect,"select * from entrytest where qID='39'");
	$row39=mysqli_fetch_array($result39,MYSQLI_ASSOC);
	$q39=$_POST['q39'];
	if($q39==$row39['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result40=mysqli_query($connect,"select * from entrytest where qID='40'");
	$row40=mysqli_fetch_array($result40,MYSQLI_ASSOC);
	$q40=$_POST['q40'];
	if($q40==$row40['correctOption'])
	{
		$marks=$marks+1;
	}
	else
	{
		$marks=$marks-0.25;
	}
	$result=mysqli_query($connect,"select * from student where stdID='$stdID'");
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
	
	$a=70*((((1/4)*$row['matricObtainMarks'])+$row['intermediateObtainMarks'])/(((1/4)*$row['matricTotalMarks'])+$row['intermediateTotalMarks']));
	$b=30*($marks/40);
	
	$aggregate=$a+$b;
	
	$sql2="INSERT INTO result (stdID,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,
	q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,q32,q33,q34,q35,q36,q37,q38,
	q39,q40,obtainMarks,aggregate) VALUE ('$stdID','$q1','$q2','$q3','$q4','$q5','$q6','$q7','$q8','$q9','$q10','$q11','$q12','$q13','$q14',
	'$q15','$q16','$q17','$q18','$q19','$q20','$q21','$q22','$q23','$q24','$q25','$q26','$q27','$q28','$q29','$q30',
	'$q31','$q32','$q33','$q34','$q35','$q36','$q37','$q38','$q39','$q40','$marks','$aggregate')";
	
	
	if(!mysqli_query($connect,$sql2))
	{
		echo 'Entry test not submittesd...!';
	}
	else
		echo 'Entry Test Submitted...!';

	
	$status='yes';
	mysqli_query($connect,"UPDATE student SET entryTestStatus='$status' WHERE stdID='$stdID'");
	
	$sql3="INSERT INTO result1 (stdID,obtainMarks,aggregate) VALUE ('$stdID','$marks','$aggregate')";
	
	
	if(!mysqli_query($connect,$sql3))
	{
		echo 'Entry test not submittesd...!';
	}
	else
	{
		echo 'Entry Test Submitted...!';
		header("refresh:2; url=login.html");
	}
	
	
	

?>