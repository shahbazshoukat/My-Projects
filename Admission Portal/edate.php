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
	$date=$_POST['date'];
	if($date=='' || $date=='date')
	{
		$flag=0;
	}
	$month=$_POST['month'];
	if($month=='' || $month=='month')
	{
		$flag=0;
	}
	$year=$_POST['year'];
	if($year=='' || $year=='year')
	{
		$flag=0;
	}
	$edate="{$date}-{$month}-{$year}";
	if($flag!=0)
	{
		
		mysqli_query($connect,"UPDATE admin SET entryTestdate='$edate' WHERE adminID='1';");
		echo 'Entry Test date Upload successfully...!';
		header("refresh:2; url=edate.html");
		
	}
	else
	{
		echo 'Some Information about Date is missing or not correct';
		header("refresh:2; url=edate.html");
	}
	

?>