<?php
session_start();

?>
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
	
	$cnic=$_POST['CNIC'];
	$password=$_POST['password'];
	$result=mysqli_query($connect,"select * from student where CNIC='$cnic' and password='$password'");
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
	$stdID=$row['stdID'];
	$_SESSION["std_ID"]=$stdID;
	
	$result2=mysqli_query($connect,"select * from admin where adminPassword='$password'");
	$row2=mysqli_fetch_array($result2,MYSQLI_ASSOC);
	if($cnic=='' && $row2['adminPassword']==$password && $row2['adminPassword']!='')
	{
		echo "Login Success...! welcome Admin";
		header("refresh:1; url=admin.html");
	}
	else
	{
		if(($row['CNIC']==$cnic && $row['password']==$password) && ($row['CNIC']!='' && $row['password']!=''))
		{
			echo "Login Success...! welcome ".$row['stdName'];
			//echo '<a href="personalinfo.php?stdID=$stdID">'.'</a>';
			//echo $stdID;
			//echo '<td>'.'<a href="personalinfo.php?stdID=$stdID">'.'</a>'.'</td>';
			header("refresh:2; url=personalinfo.php");
		
		}
		else
		{
			echo "Failed to Login";
		}
	}

?>