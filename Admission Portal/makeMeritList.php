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


$students="SELECT COUNT(resultID1) FROM result1";

	$max=0;
	$count=0;
	$SE_M=0;
	$SE_A=0;
	$CS_M=0;
	$CS_A=0;
	$IT_M=0;
	$IT_A=0;
	
	while($count<3)
	{
		$status=0;
		$max=0;
		$sql="select * from result1";
		$record=mysqli_query($connect,$sql);
	
		while($row=mysqli_fetch_assoc($record))
		{
			
			if($row['aggregate']>=$max && $row['aggregate']!=0)
			{
				$max=$row['aggregate'];
				$student=$row['stdID'];
			}
		}
		$result1=mysqli_query($connect,"select * from result1 where stdID='$student'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		$stdID=$row1['stdID'];
		
		$result2=mysqli_query($connect,"select * from preference where stdID='$stdID'");
		$row2=mysqli_fetch_array($result2,MYSQLI_ASSOC);
		
		if($status==0)
		{
			if($row2['p1']=='SE Morning' && ($SE_M)<20)
			{
				$sql1="INSERT INTO meritlist_se_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_M=$SE_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Morning' WHERE stdID='$stdID'");
					
				}
			}
			else if($row2['p1']=='SE Afternoon' && ($SE_A)<20)
			{
				$sql1="INSERT INTO meritlist_se_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_A=$SE_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p1']=='CS Morning' && ($CS_M)<20)
			{
				$sql1="INSERT INTO meritlist_cs_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_M=$CS_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p1']=='CS Afternoon' && ($CS_A)<20)
			{
				$sql1="INSERT INTO meritlist_cs_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_A=$CS_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p1']=='IT Morning' && ($IT_M)<20)
			{
				$sql1="INSERT INTO meritlist_it_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_M=$IT_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p1']=='IT Afternoon' && ($IT_A)<20)
			{
				$sql1="INSERT INTO meritlist_it_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_A=$IT_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Afternoon' WHERE stdID='$stdID'");
				}
			}
		}
		
		if($status==0)
		{
			if($row2['p2']=='SE Morning' && ($SE_M)<20)
			{
				$sql1="INSERT INTO meritlist_se_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_M=$SE_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p2']=='SE Afternoon' && ($SE_A)<20)
			{
				$sql1="INSERT INTO meritlist_se_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_A=$SE_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p2']=='CS Morning' && ($CS_M)<20)
			{
				$sql1="INSERT INTO meritlist_cs_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_M=$CS_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p2']=='CS Afternoon' && ($CS_A)<20)
			{
				$sql1="INSERT INTO meritlist_cs_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_A=$CS_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p2']=='IT Morning' && ($IT_M)<20)
			{
				$sql1="INSERT INTO meritlist_it_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_M=$IT_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p2']=='IT Afternoon' && ($IT_A)<20)
			{
				$sql1="INSERT INTO meritlist_it_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_A=$IT_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Afternoon' WHERE stdID='$stdID'");
				}
			}
		}
		
		
		
		if($status==0)
		{
			if($row2['p3']=='SE Morning' && ($SE_M)<20)
			{
				$sql1="INSERT INTO meritlist_se_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_M=$SE_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p3']=='SE Afternoon' && ($SE_A)<20)
			{
				$sql1="INSERT INTO meritlist_se_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_A=$SE_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p3']=='CS Morning' && ($CS_M)<20)
			{
				$sql1="INSERT INTO meritlist_cs_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_M=$CS_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p3']=='CS Afternoon' && ($CS_A)<20)
			{
				$sql1="INSERT INTO meritlist_cs_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_A=$CS_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p3']=='IT Morning' && ($IT_M)<20)
			{
				$sql1="INSERT INTO meritlist_it_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_M=$IT_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p3']=='IT Afternoon' && ($IT_A)<20)
			{
				$sql1="INSERT INTO meritlist_it_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_A=$IT_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Afternoon' WHERE stdID='$stdID'");
				}
			}
		}
		
		
		if($status==0)
		{
			if($row2['p4']=='SE Morning' && ($SE_M)<20)
			{
				$sql1="INSERT INTO meritlist_se_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_M=$SE_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p4']=='SE Afternoon' && ($SE_A)<20)
			{
				$sql1="INSERT INTO meritlist_se_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_A=$SE_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p4']=='CS Morning' && ($CS_M)<20)
			{
				$sql1="INSERT INTO meritlist_cs_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_M=$CS_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p4']=='CS Afternoon' && ($CS_A)<20)
			{
				$sql1="INSERT INTO meritlist_cs_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_A=$CS_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p4']=='IT Morning' && ($IT_M)<20)
			{
				$sql1="INSERT INTO meritlist_it_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_M=$IT_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p4']=='IT Afternoon' && ($IT_A)<20)
			{
				$sql1="INSERT INTO meritlist_it_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_A=$IT_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Afternoon' WHERE stdID='$stdID'");
				}
			}
		}
		
		
		if($status==0)
		{
			if($row2['p5']=='SE Morning' && ($SE_M)<20)
			{
				$sql1="INSERT INTO meritlist_se_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_M=$SE_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p5']=='SE Afternoon' && ($SE_A)<20)
			{
				$sql1="INSERT INTO meritlist_se_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_A=$SE_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p5']=='CS Morning' && ($CS_M)<20)
			{
				$sql1="INSERT INTO meritlist_cs_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_M=$CS_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p5']=='CS Afternoon' && ($CS_A)<20)
			{
				$sql1="INSERT INTO meritlist_cs_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_A=$CS_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p5']=='IT Morning' && ($IT_M)<20)
			{
				$sql1="INSERT INTO meritlist_it_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_M=$IT_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p5']=='IT Afternoon' && ($IT_A)<20)
			{
				$sql1="INSERT INTO meritlist_it_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_A=$IT_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Afternoon' WHERE stdID='$stdID'");
				}
			}
		}
		
		
		if($status==0)
		{
			if($row2['p6']=='SE Morning' && ($SE_M)<20)
			{
				$sql1="INSERT INTO meritlist_se_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_M=$SE_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p6']=='SE Afternoon' && ($SE_A)<20)
			{
				$sql1="INSERT INTO meritlist_se_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$SE_A=$SE_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='SE Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p6']=='CS Morning' && ($CS_M)<20)
			{
				$sql1="INSERT INTO meritlist_cs_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_M=$CS_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p6']=='CS Afternoon' && ($CS_A)<20)
			{
				$sql1="INSERT INTO meritlist_cs_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$CS_A=$CS_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='CS Afternoon' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p6']=='IT Morning' && ($IT_M)<20)
			{
				$sql1="INSERT INTO meritlist_it_m (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_M=$IT_M+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Morning' WHERE stdID='$stdID'");
				}
			}
			else if($row2['p6']=='IT Afternoon' && ($IT_A)<20)
			{
				$sql1="INSERT INTO meritlist_it_a (stdID) VALUE ('$stdID')";
				if(!mysqli_query($connect,$sql1))
				{
					//echo 'Student record NOT Inserted';
				}
				else
				{
					//echo 'Student data INSERTED';
					$IT_A=$IT_A+1;
					$status=1;
					$count=$count+1;
					mysqli_query($connect,"UPDATE result SET degree='IT Afternoon' WHERE stdID='$stdID'");
				}
			}
		}
		
		mysqli_query($connect,"UPDATE result1 SET aggregate='0' WHERE stdID='$stdID'");

	}

?>