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
	$entryTestStatus='no';
	$CNIC=$_POST['cnic'];
	if($CNIC=='' || strlen($CNIC)!=13)
	{
		$flag=0;
	}
	$email=$_POST['email'];
	if($email=='')
	{
		$flag=0;
	}
	$password=$_POST['password'];
	if($password=='' || strlen($password)<6)
	{
		$flag=0;
	}
	$confirmPassword=$_POST['cpassword'];
	if($confirmPassword=='')
	{
		$flag=0;
	}
	if($password!=$confirmPassword)
	{
		echo 'Password Not confirmed';
	}
	else
	{
		$stdName=$_POST['name'];
		if($stdName=='')
		{
			$flag=0;
		}
		$fatherName=$_POST['fname'];
		if($fatherName=='')
		{
			$flag=0;
		}
		$fatherCNIC=$_POST['fcnic'];
		if($fatherCNIC=='' || strlen($fatherCNIC)!=13)
		{
			$flag=0;
		}
		$gender=$_POST['gender'];
		if($gender=='')
		{
			$flag=0;
		}
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
		$DOB="{$date}-{$month}-{$year}";
		$nationality=$_POST['nationality'];
		if($nationality=='')
		{
			$flag=0;
		}
		$religion=$_POST['religion'];
		if($religion=='')
		{
			$flag=0;
		}
		$domicile=$_POST['domi'];
		if($domicile=='' || $domicile=='domicile')
		{
			$flag=0;
		}
		$phoneNo1=$_POST['phone1'];
		if($phoneNo1=='')
		{
			$flag=0;
		}
		$phoneNo2=$_POST['phone2'];
		if($phoneNo2=='')
		{
			$flag=0;
		}
		$homeAddress=$_POST['homeadd'];
		if($homeAddress=='')
		{
			$flag=0;
		}
		$city=$_POST['city'];
		if($city=='')
		{
			$flag=0;
		}
		$state=$_POST['state'];
		if($state=='')
		{
			$flag=0;
		}
		$country=$_POST['country'];
		if($country=='')
		{
			$flag=0;
		}
		$matricYear=$_POST['myear'];
		if($matricYear=='')
		{
			$flag=0;
		}
		$matricBoard=$_POST['mboard'];
		if($matricBoard=='')
		{
			$flag=0;
		}
		$matricRollNo=$_POST['mrollno'];
		if($matricRollNo=='')
		{
			$flag=0;
		}
		$matricStatus=$_POST['mannsupp'];
		if($matricStatus=='')
		{
			$flag=0;
		}
		$matricTotalMarks=$_POST['mtotalmarks'];
		if($matricTotalMarks=='')
		{
			$flag=0;
		}
		$matricObtainMarks=$_POST['mobtainedmarks'];
		if($matricObtainMarks=='')
		{
			$flag=0;
		}
		$matricMajors=$_POST['msubject'];
		if($matricMajors=='')
		{
			$flag=0;
		}
		$intermediateYear=$_POST['iyear'];
		if($intermediateYear=='')
		{
			$flag=0;
		}
		$intermediateBoard=$_POST['iboard'];
		if($intermediateBoard=='')
		{
			$flag=0;
		}
		$intermediateRollNo=$_POST['irollno'];
		if($intermediateRollNo=='')
		{
			$flag=0;
		}
		$intermediateStatus=$_POST['iannsupp'];
		if($intermediateStatus=='')
		{
			$flag=0;
		}
		$intermediateTotalMarks=$_POST['itotalmarks'];
		if($intermediateTotalMarks=='')
		{
			$flag=0;
		}
		$intermediateObtainMarks=$_POST['iobtainedmarks'];
		if($intermediateObtainMarks=='')
		{
			$flag=0;
		}
		$intermediateMajors=$_POST['isubject'];
		if($intermediateMajors=='')
		{
			$flag=0;
		}
		$first=$_POST['first'];
		if($first=='' || $first=='first')
		{
			$flag=0;
		}
		$second=$_POST['second'];
		if($second=='' || $second=='second')
		{
			$flag=0;
		}
		$third=$_POST['third'];
		if($third=='' || $third=='third')
		{
			$flag=0;
		}
		$fourth=$_POST['fourth'];
		if($fourth=='' || $fourth=='fourth')
		{
			$flag=0;
		}
		$fifth=$_POST['fifth'];
		if($fifth=='' || $fifth=='fifth')
		{
			$flag=0;
		}
		$sixth=$_POST['sixth'];
		if($sixth=='' || $sixth=='sixth')
		{
			$flag=0;
		}
		
		
		
		if($flag!=0)
		{
			$sql1="INSERT INTO student (CNIC,email,password,stdName,fatherName,fatherCNIC,
			gender,DOB,nationality,religion,domicile,phoneNo1,phoneNo2,homeAddress,city,
			state,country,matricYear,matricBoard,matricRollNo,matricStatus,matricTotalMarks,
			matricObtainMarks,matricMajors,intermediateYear,intermediateBoard,intermediateRollNo,
			intermediateStatus,intermediateTotalMarks,intermediateObtainMarks,intermediateMajors,entryTestStatus) VALUE ('$CNIC','$email',
			'$password','$stdName','$fatherName','$fatherCNIC','$gender','$DOB','$nationality','$religion','$domicile','$phoneNo1','$phoneNo2','$homeAddress',
			'$city','$state','$country','$matricYear','$matricBoard','$matricRollNo','$matricStatus','$matricTotalMarks','$matricObtainMarks','$matricMajors',
			'$intermediateYear','$intermediateBoard','$intermediateRollNo','$intermediateStatus','$intermediateTotalMarks','$intermediateObtainMarks','$intermediateMajors','$entryTestStatus')";
			if(!mysqli_query($connect,$sql1))
			{
				echo 'Student record NOT Inserted';
			}
			else
				echo 'Student data INSERTED';
		
		
		
			$result=mysqli_query($connect,"select * from student where CNIC='$CNIC' and password='$password'");
			$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
		
			$stdID=$row['stdID'];
			
			
			
		
			$sql2="INSERT INTO preference (stdID,p1,p2,p3,p4,p5,p6) VALUE ('$stdID','$first','$second','$third','$fourth','$fifth','$sixth')";
		
			if(!mysqli_query($connect,$sql2))
			{
				echo 'Preference record NOT Inserted';
			}
			else
				echo ',Preference INSERTED';
			header("refresh:20; url=login.html");
		}
		else
		{
			echo 'some information missing or wrong';
		}
		
	}
	
	
	
?>



<?php

	$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 2000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
$new_file_name=$target_dir.$stdID.".".$imageFileType;
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $new_file_name)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
	
}	




?>