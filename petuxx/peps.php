<?php
include('config.php');
$cu=mysqli_connect(k127001,kroot,kempty,kphote);// коннектикум=mysqli_connect("127.0.0.1","root","","phote");
if (!$cu){
	echo 'здесь могла быть ваша ава';	
}else{
//----------------------------------
   mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------   

$r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima`"); //

$n=0;	
while ($j=mysqli_fetch_assoc($r)){
	$n++;
    echo $j['id'].' '.($n%50).' '.(int)($n/50).'<br>';
	mysqli_query($cu,"INSERT INTO `peps`(`g`, `xx`, `yy`) VALUES (".$j['id'].",".($n%50).",".(int)($n/50).")");
}//
//----------------------------------
	mysqli_close($cu);   
}?>

