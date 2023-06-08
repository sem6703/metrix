<?php
header ("Content-Type: text/html; charset=utf-8");


// вход строка с айди аватары	
// выход аннотация

$avaid=(isset($_GET['i']))?(int)($_GET['i']):-1;	


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

	$ava=rec($cu,"SELECT * FROM `ava` WHERE `id`=".(int)$avaid);

	$grs=rec($cu,"SELECT * FROM `grz` WHERE `id`=".(int)$ava['g']);
	
	echo $grs['txt']; // аннотация
//----------------------------------
	mysqli_close($cu); 
}	
?>
