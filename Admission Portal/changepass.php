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
	
	$oldpass=$_POST['oldpass'];
	$newpass=$_POST['newpass'];
	$cpass=$_POST['cpass'];
	
	
	$result=mysqli_query($connect,"select * from admin where adminID='1'");
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
	if($row['adminPassword']==$oldpass && $row['adminPassword']!='')
	{
		if($newpass==$cpass && $newpass!='')
		{
			mysqli_query($connect,"UPDATE admin SET adminPassword='$newpass' WHERE adminID='1';");
			echo 'Password change successfully...!';
		}
		else
			echo 'New Password Not Confirmed';
	}
	else
		echo 'Old Password Not Correct';
	

?>