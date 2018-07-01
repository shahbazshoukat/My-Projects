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
	$flag=1;
	$notification=$_POST['noti'];
	if($notification=='')
	{
		$flag=0;
	}
	
	if($flag!=0)
	{
		
		mysqli_query($connect,"UPDATE admin SET notification='$notification' WHERE adminID='1';");
		echo 'Notification Upload successfully...!';
		header("refresh:2; url=notification.html");
		
	}
	else
	{
		echo 'Give Some Notification...!';
		header("refresh:2; url=notification.html");
	}
	

?>