<?php
header ("Content-Type: text/html; charset=utf-8");

// вход группа
//	выход портрет
	
$gid=(isset($_POST['i']))?($_POST['i']):-1;
	
$cu=mysqli_connect("127.0.0.1","root","","pet3");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------  
		function rec($cu, $s){// читать запись
			$e=mysqli_query($cu,$s);		
			return mysqli_fetch_assoc($e);
		}
//******************
	$grs=rec($cu,"SELECT * FROM `grz` WHERE `id`=".$gid);	
	$fote=rec($cu,"SELECT * FROM `fote` WHERE `id`=".(int)$grs['fot']);
	
	$a=array(img=>$fote['img'],txt=>$grs['txt']);
	echo json_encode($a);
//----------------------------------
	mysqli_close($cu); 
}	



?>
