<?php
header ("Content-Type: text/html; charset=utf-8");


	
$ww=(isset($_GET['i']))?(int)(preg_replace("/ix|jx/","",$_GET['i'])):-1;	


$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------  
	$s_u="SELECT * FROM `test` WHERE `id`=".(int)$ww;	
	$uuu=mysqli_query($cu,$s_u);	
	$u=mysqli_fetch_assoc($uuu);
	$vvv=mysqli_query($cu,"SELECT * FROM `gru` WHERE `id`=".(int)$u['g']); 
	$v=mysqli_fetch_assoc($vvv);
	$fff=mysqli_query($cu,"SELECT * FROM `fote` WHERE `id1`=".(int)$v['phote']); 
	$ff=mysqli_fetch_assoc($fff);
	
echo "<div class='pot'>";
echo $ff['img'];
echo "</div>";	
//----------------------------------
	mysqli_close($cu); 
}	



?>
