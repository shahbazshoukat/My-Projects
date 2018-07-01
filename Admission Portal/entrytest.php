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
	
?>
<html>
<head>
	<title>Entry Test</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body id="profilebody">
		
	<br/>
	
	
	
	
	
	
	<form  action="entrytestresult.php" method="post">
	<div id="entrytest">
	<div id="adformhead" align="center">
				Entry Test
			</div>
	<p><b>NOTE:</b>Submit your paper in the given time.</p>
	<br/><br/>
<?php
	
		$result1=mysqli_query($connect,"select * from entrytest where qID='1'");
		$row1=mysqli_fetch_array($result1,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."1.".'</b>'.$row1['question'].'</p>';
		echo '<input id="opt" type="radio" name="q1" value="a">'.$row1['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q1" value="b">'.$row1['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q1" value="c">'.$row1['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q1" value="d">'.$row1['D'].'<br/>';
		echo '<hr>';
			$result2=mysqli_query($connect,"select * from entrytest where qID='2'");
	$row2=mysqli_fetch_array($result2,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."2.".'</b>'.$row2['question'].'</p>';
		echo '<input id="opt" type="radio" name="q2" value="a">'.$row2['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q2" value="b">'.$row2['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q2" value="c">'.$row2['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q2" value="d">'.$row2['D'].'<br/>';
		echo '<hr>';
			$result3=mysqli_query($connect,"select * from entrytest where qID='3'");
		$row3=mysqli_fetch_array($result3,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."3.".'</b>'.$row3['question'].'</p>';
		echo '<input id="opt" type="radio" name="q3" value="a">'.$row3['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q3" value="b">'.$row3['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q3" value="c">'.$row3['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q3" value="d">'.$row3['D'].'<br/>';
		echo '<hr>';
			$result4=mysqli_query($connect,"select * from entrytest where qID='4'");
	$row4=mysqli_fetch_array($result4,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."4.".'</b>'.$row4['question'].'</p>';
		echo '<input id="opt" type="radio" name="q4" value="a">'.$row4['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q4" value="b">'.$row4['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q4" value="c">'.$row4['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q4" value="d">'.$row4['D'].'<br/>';
		echo '<hr>';
			$result5=mysqli_query($connect,"select * from entrytest where qID='5'");
	$row5=mysqli_fetch_array($result5,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."5.".'</b>'.$row5['question'].'</p>';
		echo '<input id="opt" type="radio" name="q5" value="a">'.$row5['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q5" value="b">'.$row5['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q5" value="c">'.$row5['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q5" value="d">'.$row5['D'].'<br/>';
		echo '<hr>';
			$result6=mysqli_query($connect,"select * from entrytest where qID='6'");
	$row6=mysqli_fetch_array($result6,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."6.".'</b>'.$row6['question'].'</p>';
		echo '<input id="opt" type="radio" name="q6" value="a">'.$row6['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q6" value="b">'.$row6['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q6" value="c">'.$row6['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q6" value="d">'.$row6['D'].'<br/>';
		echo '<hr>';
			$result7=mysqli_query($connect,"select * from entrytest where qID='7'");
	$row7=mysqli_fetch_array($result7,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."7.".'</b>'.$row7['question'].'</p>';
		echo '<input id="opt" type="radio" name="q7" value="a">'.$row7['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q7" value="b">'.$row7['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q7" value="c">'.$row7['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q7" value="d">'.$row7['D'].'<br/>';
		echo '<hr>';
			$result8=mysqli_query($connect,"select * from entrytest where qID='8'");
	$row8=mysqli_fetch_array($result8,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."8.".'</b>'.$row8['question'].'</p>';
		echo '<input id="opt" type="radio" name="q8" value="a">'.$row8['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q8" value="b">'.$row8['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q8" value="c">'.$row8['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q8" value="d">'.$row8['D'].'<br/>';
		echo '<hr>';
			$result9=mysqli_query($connect,"select * from entrytest where qID='9'");
	$row9=mysqli_fetch_array($result9,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."9.".'</b>'.$row9['question'].'</p>';
		echo '<input id="opt" type="radio" name="q9" value="a">'.$row9['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q9" value="b">'.$row9['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q9" value="c">'.$row9['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q9" value="d">'.$row9['D'].'<br/>';
		echo '<hr>';
			$result10=mysqli_query($connect,"select * from entrytest where qID='10'");
	$row10=mysqli_fetch_array($result10,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."10.".'</b>'.$row10['question'].'</p>';
		echo '<input id="opt" type="radio" name="q10" value="a">'.$row10['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q10" value="b">'.$row10['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q10" value="c">'.$row10['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q10" value="d">'.$row10['D'].'<br/>';
		echo '<hr>';
			$result11=mysqli_query($connect,"select * from entrytest where qID='11'");
	$row11=mysqli_fetch_array($result11,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."11.".'</b>'.$row11['question'].'</p>';
		echo '<input id="opt" type="radio" name="q11" value="a">'.$row11['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q11" value="b">'.$row11['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q11" value="c">'.$row11['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q11" value="d">'.$row11['D'].'<br/>';
		echo '<hr>';
			$result12=mysqli_query($connect,"select * from entrytest where qID='12'");
	$row12=mysqli_fetch_array($result12,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."12.".'</b>'.$row12['question'].'</p>';
		echo '<input id="opt" type="radio" name="q12" value="a">'.$row12['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q12" value="b">'.$row12['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q12" value="c">'.$row12['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q12" value="d">'.$row12['D'].'<br/>';
		echo '<hr>';
			$result13=mysqli_query($connect,"select * from entrytest where qID='13'");
	$row13=mysqli_fetch_array($result13,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."13.".'</b>'.$row13['question'].'</p>';
		echo '<input id="opt" type="radio" name="q13" value="a">'.$row13['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q13" value="b">'.$row13['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q13" value="c">'.$row13['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q13" value="d">'.$row13['D'].'<br/>';
		echo '<hr>';
			$result14=mysqli_query($connect,"select * from entrytest where qID='14'");
	$row14=mysqli_fetch_array($result14,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."14.".'</b>'.$row14['question'].'</p>';
		echo '<input id="opt" type="radio" name="q14" value="a">'.$row14['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q14" value="b">'.$row14['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q14" value="c">'.$row14['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q14" value="d">'.$row14['D'].'<br/>';
		echo '<hr>';
			$result15=mysqli_query($connect,"select * from entrytest where qID='15'");
	$row15=mysqli_fetch_array($result15,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."15.".'</b>'.$row15['question'].'</p>';
		echo '<input id="opt" type="radio" name="q15" value="a">'.$row15['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q15" value="b">'.$row15['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q15" value="c">'.$row15['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q15" value="d">'.$row15['D'].'<br/>';
		echo '<hr>';
			$result16=mysqli_query($connect,"select * from entrytest where qID='16'");
	$row16=mysqli_fetch_array($result16,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."16.".'</b>'.$row16['question'].'</p>';
		echo '<input id="opt" type="radio" name="q16" value="a">'.$row16['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q16" value="b">'.$row16['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q16" value="c">'.$row16['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q16" value="d">'.$row16['D'].'<br/>';
		echo '<hr>';
			$result17=mysqli_query($connect,"select * from entrytest where qID='17'");
	$row17=mysqli_fetch_array($result17,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."17.".'</b>'.$row17['question'].'</p>';
		echo '<input id="opt" type="radio" name="q17" value="a">'.$row17['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q17" value="b">'.$row17['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q17" value="c">'.$row17['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q17" value="d">'.$row17['D'].'<br/>';
		echo '<hr>';
			$result18=mysqli_query($connect,"select * from entrytest where qID='18'");
	$row18=mysqli_fetch_array($result18,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."18.".'</b>'.$row18['question'].'</p>';
		echo '<input id="opt" type="radio" name="q18" value="a">'.$row18['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q18" value="b">'.$row18['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q18" value="c">'.$row18['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q18" value="d">'.$row18['D'].'<br/>';
		echo '<hr>';
			$result19=mysqli_query($connect,"select * from entrytest where qID='19'");
	$row19=mysqli_fetch_array($result19,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."19.".'</b>'.$row19['question'].'</p>';
		echo '<input id="opt" type="radio" name="q19" value="a">'.$row19['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q19" value="b">'.$row19['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q19" value="c">'.$row19['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q19" value="d">'.$row19['D'].'<br/>';
		echo '<hr>';
			$result20=mysqli_query($connect,"select * from entrytest where qID='20'");
	$row20=mysqli_fetch_array($result20,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."20.".'</b>'.$row20['question'].'</p>';
		echo '<input id="opt" type="radio" name="q20" value="a">'.$row20['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q20" value="b">'.$row20['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q20" value="c">'.$row20['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q20" value="d">'.$row20['D'].'<br/>';
		echo '<hr>';
			$result21=mysqli_query($connect,"select * from entrytest where qID='21'");
	$row21=mysqli_fetch_array($result21,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."21.".'</b>'.$row21['question'].'</p>';
		echo '<input id="opt" type="radio" name="q21" value="a">'.$row21['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q21" value="b">'.$row21['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q21" value="c">'.$row21['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q21" value="d">'.$row21['D'].'<br/>';
		echo '<hr>';
			$result22=mysqli_query($connect,"select * from entrytest where qID='22'");
	$row22=mysqli_fetch_array($result22,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."22.".'</b>'.$row22['question'].'</p>';
		echo '<input id="opt" type="radio" name="q22" value="a">'.$row22['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q22" value="b">'.$row22['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q22" value="c">'.$row22['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q22" value="d">'.$row22['D'].'<br/>';
		echo '<hr>';
			$result23=mysqli_query($connect,"select * from entrytest where qID='23'");
	$row23=mysqli_fetch_array($result23,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."23.".'</b>'.$row23['question'].'</p>';
		echo '<input id="opt" type="radio" name="q23" value="a">'.$row23['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q23" value="b">'.$row23['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q23" value="c">'.$row23['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q23" value="d">'.$row23['D'].'<br/>';
		echo '<hr>';
			$result24=mysqli_query($connect,"select * from entrytest where qID='24'");
	$row24=mysqli_fetch_array($result24,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."24.".'</b>'.$row24['question'].'</p>';
		echo '<input id="opt" type="radio" name="q24" value="a">'.$row24['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q24" value="b">'.$row24['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q24" value="c">'.$row24['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q24" value="d">'.$row24['D'].'<br/>';
		echo '<hr>';
			$result25=mysqli_query($connect,"select * from entrytest where qID='25'");
	$row25=mysqli_fetch_array($result25,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."25.".'</b>'.$row25['question'].'</p>';
		echo '<input id="opt" type="radio" name="q25" value="a">'.$row25['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q25" value="b">'.$row25['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q25" value="c">'.$row25['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q25" value="d">'.$row25['D'].'<br/>';
		echo '<hr>';
			$result26=mysqli_query($connect,"select * from entrytest where qID='26'");
	$row26=mysqli_fetch_array($result26,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."26.".'</b>'.$row26['question'].'</p>';
		echo '<input id="opt" type="radio" name="q26" value="a">'.$row26['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q26" value="b">'.$row26['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q26" value="c">'.$row26['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q26" value="d">'.$row26['D'].'<br/>';
		echo '<hr>';
			$result27=mysqli_query($connect,"select * from entrytest where qID='27'");
	$row27=mysqli_fetch_array($result27,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."27.".'</b>'.$row27['question'].'</p>';
		echo '<input id="opt" type="radio" name="q27" value="a">'.$row27['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q27" value="b">'.$row27['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q27" value="c">'.$row27['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q27" value="d">'.$row27['D'].'<br/>';
		echo '<hr>';
			$result28=mysqli_query($connect,"select * from entrytest where qID='28'");
	$row28=mysqli_fetch_array($result28,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."28.".'</b>'.$row28['question'].'</p>';
		echo '<input id="opt" type="radio" name="q28" value="a">'.$row28['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q28" value="b">'.$row28['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q28" value="c">'.$row28['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q28" value="d">'.$row28['D'].'<br/>';
		echo '<hr>';
			$result29=mysqli_query($connect,"select * from entrytest where qID='29'");
	$row29=mysqli_fetch_array($result29,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."29.".'</b>'.$row29['question'].'</p>';
		echo '<input id="opt" type="radio" name="q29" value="a">'.$row29['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q29" value="b">'.$row29['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q29" value="c">'.$row29['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q29" value="d">'.$row29['D'].'<br/>';
		echo '<hr>';
			$result30=mysqli_query($connect,"select * from entrytest where qID='30'");
	$row30=mysqli_fetch_array($result30,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."30.".'</b>'.$row30['question'].'</p>';
		echo '<input id="opt" type="radio" name="q30" value="a">'.$row30['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q30" value="b">'.$row30['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q30" value="c">'.$row30['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q30" value="d">'.$row30['D'].'<br/>';
		echo '<hr>';
			$result31=mysqli_query($connect,"select * from entrytest where qID='31'");
	$row31=mysqli_fetch_array($result31,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."31.".'</b>'.$row31['question'].'</p>';
		echo '<input id="opt" type="radio" name="q31" value="a">'.$row31['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q31" value="b">'.$row31['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q31" value="c">'.$row31['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q31" value="d">'.$row31['D'].'<br/>';
		echo '<hr>';
			$result32=mysqli_query($connect,"select * from entrytest where qID='32'");
	$row32=mysqli_fetch_array($result32,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."32.".'</b>'.$row32['question'].'</p>';
		echo '<input id="opt" type="radio" name="q32" value="a">'.$row32['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q32" value="b">'.$row32['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q32" value="c">'.$row32['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q32" value="d">'.$row32['D'].'<br/>';
		echo '<hr>';
			$result33=mysqli_query($connect,"select * from entrytest where qID='33'");
	$row33=mysqli_fetch_array($result33,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."33.".'</b>'.$row33['question'].'</p>';
		echo '<input id="opt" type="radio" name="q33" value="a">'.$row33['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q33" value="b">'.$row33['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q33" value="c">'.$row33['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q33" value="d">'.$row33['D'].'<br/>';
		echo '<hr>';
			$result34=mysqli_query($connect,"select * from entrytest where qID='34'");
	$row34=mysqli_fetch_array($result34,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."34.".'</b>'.$row34['question'].'</p>';
		echo '<input id="opt" type="radio" name="q34" value="a">'.$row34['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q34" value="b">'.$row34['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q34" value="c">'.$row34['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q34" value="d">'.$row34['D'].'<br/>';
		echo '<hr>';
			$result35=mysqli_query($connect,"select * from entrytest where qID='35'");
	$row35=mysqli_fetch_array($result35,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."35.".'</b>'.$row35['question'].'</p>';
		echo '<input id="opt" type="radio" name="q35" value="a">'.$row35['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q35" value="b">'.$row35['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q35" value="c">'.$row35['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q35" value="d">'.$row35['D'].'<br/>';
		echo '<hr>';
			$result36=mysqli_query($connect,"select * from entrytest where qID='36'");
	$row36=mysqli_fetch_array($result36,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."36.".'</b>'.$row36['question'].'</p>';
		echo '<input id="opt" type="radio" name="q36" value="a">'.$row36['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q36" value="b">'.$row36['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q36" value="c">'.$row36['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q36" value="d">'.$row36['D'].'<br/>';
		echo '<hr>';
			$result37=mysqli_query($connect,"select * from entrytest where qID='37'");
	$row37=mysqli_fetch_array($result37,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."37.".'</b>'.$row37['question'].'</p>';
		echo '<input id="opt" type="radio" name="q37" value="a">'.$row37['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q37" value="b">'.$row37['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q37" value="c">'.$row37['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q37" value="d">'.$row37['D'].'<br/>';
		echo '<hr>';
			$result38=mysqli_query($connect,"select * from entrytest where qID='38'");
	$row38=mysqli_fetch_array($result38,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."38.".'</b>'.$row38['question'].'</p>';
		echo '<input id="opt" type="radio" name="q38" value="a">'.$row38['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q38" value="b">'.$row38['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q38" value="c">'.$row38['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q38" value="d">'.$row38['D'].'<br/>';
		echo '<hr>';
			$result39=mysqli_query($connect,"select * from entrytest where qID='39'");
	$row39=mysqli_fetch_array($result39,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."39.".'</b>'.$row39['question'].'</p>';
		echo '<input id="opt" type="radio" name="q39" value="a">'.$row39['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q39" value="b">'.$row39['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q39" value="c">'.$row39['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q39" value="d">'.$row39['D'].'<br/>';
		echo '<hr>';
			$result40=mysqli_query($connect,"select * from entrytest where qID='40'");
	$row40=mysqli_fetch_array($result40,MYSQLI_ASSOC);
		echo '<p id="question">'.'<b>'."40.".'</b>'.$row40['question'].'</p>';
		echo '<input id="opt" type="radio" name="q40" value="a">'.$row40['A'].'<br/>';
		echo '<input id="opt" type="radio" name="q40" value="b">'.$row40['B'].'<br/>';
		echo '<input id="opt" type="radio" name="q40" value="c">'.$row40['C'].'<br/>';
		echo '<input id="opt" type="radio" name="q40" value="d">'.$row40['D'].'<br/>';
		echo '<hr>';
		echo '<br/>'.'<br/>';
	?>
		<input id="submittest" type="submit" name="sumit" value="submit">
		<br/><br/><br/><br/><br/><br/>
	</div>
	<br/><br/><br/>
	</form>
	<div id="testtime" align="center">
		Time Left:<br/><b>00:30:45</b>
	</div>
	
	
	<div id="adminheader" align="center">
		ADMISSION PORTAL
	</div>


</body>
</html>