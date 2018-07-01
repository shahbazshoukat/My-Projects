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
	if($start_test=='yes')
	{	
		header("refresh:2; url=makeMeritList.php");
	}

?>