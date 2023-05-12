<?php
header ("Content-Type: text/html; charset=utf-8");


	
$ww=(isset($_GET['i']))?(int)($_GET['i']):-1;	


$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------  
	$vvv=mysqli_query($cu,"SELECT * FROM `gru` WHERE `id`=".$ww); 
	$v=mysqli_fetch_assoc($vvv);
	$fff=mysqli_query($cu,"SELECT * FROM `fote` WHERE `id1`=".(int)$v['phote']); 
	$ff=mysqli_fetch_assoc($fff);
	
echo "<div class='pot'>";
echo $ff['img'];
echo "</div>";	

echo "<script>";
echo "ajx6.innerHTML=`".$v['txt']."`;";
echo "</script>";
//----------------------------------
	mysqli_close($cu); 
}	



?>
