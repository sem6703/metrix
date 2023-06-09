<?php
header ("Content-Type: text/html; charset=utf-8");

// добавление персоны
$cu=mysqli_connect("127.0.0.1","root","","pet3");//$cu=mysqli_connect("127.0.0.1","root","","pet4");//
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//-------------------------------------------- 
$img=(isset($_POST['img']))?($_POST['img']):'';// иконка
$who=(isset($_POST['who']))?($_POST['who']):'Синица';// имя иконки
$txt=(isset($_POST['txt']))?($_POST['txt']):'';
$v=mysqli_query($cu,"INSERT INTO `fote` (`img`, `who`) VALUES('".$img."','".$who."')");
$ico=mysqli_insert_id($cu);// айди новой иконки
$s="INSERT INTO `grz` (`nom`, `fot`, `txt`, `usa`) VALUES
	('".$who."', '".$ico."', '".$txt."', 0)";
$k=mysqli_query($cu,$s);////
echo mysqli_insert_id($cu);// последняя добавленпч група уходит в след форму

$s="INSERT INTO `koys` (`g`) VALUES(0)";// пох что добавить, значение будет перезаписано
$k=mysqli_query($cu,$s);// добавил для обьема перед полной перезаписью
//********************
//********************
$su_grs=mysqli_query($cu,"SELECT * FROM `grz` ORDER BY `nom`");
$n=1;
while ($grs=mysqli_fetch_assoc($su_grs)){
	$i=$grs['id'];
	$s="UPDATE `koys` SET g='$i' WHERE id='$n'";	
	$k=mysqli_query($cu,$s);
	$n++;
	}	
//----------------------------------
	mysqli_close($cu); 
}	
?>
