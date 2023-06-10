<?php
header ("Content-Type: text/html; charset=utf-8");

include 'var6.php';
// сопоставление редактируется юзером
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

$txt=(isset($_POST['txt']))?($_POST['txt']):'';
$act=(isset($_POST['act']))?($_POST['act']):'';
	
$s="SELECT * FROM `ava` WHERE `act`=$act";///  авы всех групп в акте	
$avav=mysqli_query($cu,$s);

echo "[";//avon=
while($ava=mysqli_fetch_assoc($avav)){
echo "{id:".$ava['id'].
",g:".$ava['g'].
",act:".$ava['act'].
",god:'".$ava['god'].
"',coop:'".$ava['coop'].
"',he:'".$ava['he'].
"',role:".$ava['role'].
",svet:".$ava['svet'].
",bj:".$ava['bj'].
"},";
}
echo "];";
///*********************************************************

//----------------------------------
	mysqli_close($cu); 
}	
?>
