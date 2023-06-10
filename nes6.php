<?php
header ("Content-Type: text/html; charset=utf-8");

include 'var6.php';
// вход строка с айди аватары	
// выход портрет
$avaid=(isset($_GET['i']))?($_GET['i']):-1;	

$cu=mysqli_connect("127.0.0.1","root","",$cubd);// см в include 'var6.php'
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

	$grz=rec($cu,"SELECT * FROM `grz` WHERE `id`=".(int)$ava['g']);

	$fote=rec($cu,"SELECT * FROM `fote` WHERE `id`=".(int)$grz['fot']);
	
echo "<div class='pot'>";
//$fote['img']=str_replace('<img', '<img class="dd" ', $fote['img']);
echo $fote['img'];
echo "</div>";	
//----------------------------------
	mysqli_close($cu); 
}	
?>
