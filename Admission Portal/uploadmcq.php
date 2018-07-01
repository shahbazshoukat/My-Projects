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
	$question=$_POST['question'];
	if($question=='')
	{
		$flag=0;
	}
	$a=$_POST['a'];
	if($a=='')
	{
		$flag=0;
	}
	$b=$_POST['b'];
	if($b=='')
	{
		$flag=0;
	}
	$c=$_POST['c'];
	if($c=='')
	{
		$flag=0;
	}
	$d=$_POST['d'];
	if($d=='')
	{
		$flag=0;
	}
	$correctOption=$_POST['correctOption'];
	if($correctOption=='')
	{
		$flag=0;
	}
	
	if($flag!=0)
	{
		$sql="INSERT INTO entrytest (question,A,B,C,D,correctOption) VALUE ('$question','$a','$b','$c','$d','$correctOption')";
		
		if(!mysqli_query($connect,$sql))
			{
				echo 'Question NOT Inserted';
				header("refresh:2; url=uploadmcq.html");
			}
			else
			{
				echo 'Question INSERTED';
				header("refresh:2; url=uploadmcq.html");
			}
			
		
	}
	else
	{
		echo 'Some Information is Missing';
		header("refresh:2; url=uploadmcq.html");
	}
	
	
	
	
	
	
	

?>