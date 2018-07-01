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
	$start_test=$_POST['start_test'];
	mysqli_query($connect,"UPDATE admin SET uploadEntryTest='$start_test' WHERE adminID='1';");
	echo 'Entry Test Upload successfully...!';
	header("refresh:2; url=start_test.html");
	

?>