<?php
header ("Content-Type: text/html; charset=utf-8");

$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//-------------------------------------------- .'\r\n' 
$w1=(isset($_POST['img']))?($_POST['img']):'';
//$w1=(isset($_POST['img']))?(preg_replace('/"/','\"',$_POST['img']).'\r\n'):'';
$w2=(isset($_POST['who']))?($_POST['who']):'Задница';
$w3=(isset($_POST['txt']))?($_POST['txt']):'';
$v=mysqli_query($cu,"INSERT INTO `fote` (`img`, `who`) VALUES('".$w1."','".$w2."')");
//
/*
ePJlzd/HDVSlQsZNnT4BAQAOw==\">\r\n', 'jiraf')");
*/
/*

 */
  


$k=mysqli_query($cu,"SELECT `id1` FROM `fote` ORDER BY `id1` DESC LIMIT 1");
$k=mysqli_fetch_assoc($k);

//$w=(isset($_GET['img']))?(preg_replace('"','\"',$_GET['img']).'\r\n'):'';
//$v=mysqli_query($cu,"INSERT INTO `gru` (`img`, `who`) VALUES($w1,$w2)");
//ima,fote,txt,use,fn`id`
$t=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `id` DESC LIMIT 1");
$t=mysqli_fetch_assoc($t);
//echo $t['fn'].$k['id1'];
$s="INSERT INTO `gru` (`ima`, `phote`, `txt`, `use`, `fn`) VALUES
('".$w2."', '".$k['id1']."', '".$w3."', 0, 'fx(".($t['id']+1).")')";
echo $w1;
$k=mysqli_query($cu,$s);//
$s="INSERT INTO `peps` (`g`) VALUES(0)";
$k=mysqli_query($cu,$s);// добавил для обьема перед полной перезаписью
$rrr=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima`");
$n=1;
while ($r=mysqli_fetch_assoc($rrr)){
	$i=$r['id'];
	$s="UPDATE `peps` SET g='$i' WHERE id='$n'";
	$k=mysqli_query($cu,$s);
	//$n=$n+1;
	$n++;
	
}
//----------------------------------
	mysqli_close($cu); 
}	
?>
