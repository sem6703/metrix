<?php
header ("Content-Type: text/html; charset=utf-8");

// добавление аватары
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

	$g=(isset($_POST['g']))?($_POST['g']):'';		
	$act=(isset($_POST['act']))?($_POST['act']):'';
// пушим в аватары
	$s="INSERT `ava` (bj,act) VALUES ($g,$act)";	
	$f=mysqli_query($cu,$s);
	$n=mysqli_insert_id($cu);
// вписываем в группы  //
	$d="UPDATE `grz` SET usa=usa+1 WHERE `id`=$g";	
	$f=mysqli_query($cu,$d);	
// выгружаю в редактирование акт

$kok=rec($cu,"SELECT * FROM `acts` WHERE `id`=$act");

echo ($kok['txt']);
//----------------------------------
	mysqli_close($cu); 
}	
?>
