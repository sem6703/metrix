<?php
header ("Content-Type: text/html; charset=utf-8");


// создание кнопок сопоставления
$cu=mysqli_connect("127.0.0.1","root","","pet3");//$cu=mysqli_connect("127.0.0.1","root","","pet4");//
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
//получить тип акта

$numr=rec($cu,"SELECT * FROM `acts` WHERE id=".$act);

switch($numr['type']){
//******************************************************
case 1:	
	$s="UPDATE `acts` SET txt='$txt' WHERE id='$act'";
	$f=mysqli_query($cu,$s);
// создание кнопок	
// создание акта
$s="SELECT * FROM `ava` WHERE `act`=$act";///  авы всех групп в акте	
$avav=mysqli_query($cu,$s);
	echo "<div id='git1'>";
	
	echo "<div class='like'><div class='bla_r'><div class='blatop'>Хз</div>";
	echo "<button class='x3'><b>хз</b></button></div></div>";
	while($ava=mysqli_fetch_assoc($avav)){
		
		$d="SELECT * FROM `grz` WHERE id=".$ava['g'];
		if ($ava['bj']>0){
		$d="SELECT * FROM `grz` WHERE id=".$ava['bj'];
		}
		$grs=mysqli_query($cu,$d);
		$gr=mysqli_fetch_assoc($grs);

		echo "<div class='like'>";
		echo "<div class='bla_r' data-g='".$gr['id']."'";
		echo " data-id='".$ava['id']."'";
		echo " data-bj='".$ava['bj']."'";
		echo ">";		
		echo "<div class='blatop'>".$gr['nom'];//
		echo "</div>";		
		echo "<button class='bn1'><b>R</b></button>";
		echo "<button class='bn1'>R</button>";
		echo "<button class='bn1'>r</button>";		

		echo "</div>";		
		echo "</div>";		
	}
	echo "</div>";//
	break;
///*********************************************************
case 2:
	$s="UPDATE `acts` SET txt='$txt' WHERE id='$act'";
	$f=mysqli_query($cu,$s);
// создание кнопок	
// создание акта
$s="SELECT * FROM `ava` WHERE `act`=$act";///  авы всех групп в акте	
$avav=mysqli_query($cu,$s);
	echo "<div id='git2'>";
	
	echo "<div class='like'><div class='bla_m'><div class='blatop'>Хз</div>";
	echo "<button class='x3'><b>хз</b></button></div></div>";
	while($ava=mysqli_fetch_assoc($avav)){
		
		$d="SELECT * FROM `grz` WHERE id=".$ava['g'];
		if ($ava['bj']>0){
		$d="SELECT * FROM `grz` WHERE id=".$ava['bj'];
		}
		
		$grs=mysqli_query($cu,$d);
		$gr=mysqli_fetch_assoc($grs);
		
		echo "<div class='like'>";
		echo "<div class='bla_m' data-g='".$gr['id']."'";
		echo " data-id='".$ava['id']."'";
		echo " data-bj='".$ava['bj']."'";
		echo ">";
		echo "<div class='blatop'>".$gr['nom'];
		echo "</div>";		
		echo "<button class='bn2'><b>M</b></button>";
		echo "<button class='bn2'>M</button>";
		echo "<button class='bn2'>m</button>";		

		echo "</div>";		
		echo "</div>";		
	}
	echo "</div>";//
	break;
//*******************************************************
case 3:
	$s="UPDATE `acts` SET txt='$txt' WHERE id='$act'";
	$f=mysqli_query($cu,$s);
// создание кнопок	
// создание акта
$s="SELECT * FROM `ava` WHERE `act`=$act";///  авы всех групп в акте	
$avav=mysqli_query($cu,$s);
	echo "<div id='git3'>";
	
	echo "<div class='like'><div class='bla_d'><div class='blatop'>Хз</div>";
	echo "<button class='x3'><b>хз</b></button></div></div>";
	while($ava=mysqli_fetch_assoc($avav)){
		
		$d="SELECT * FROM `grz` WHERE id=".$ava['g'];
		if ($ava['bj']>0){
		$d="SELECT * FROM `grz` WHERE id=".$ava['bj'];
		}
		$grs=mysqli_query($cu,$d);
		$gr=mysqli_fetch_assoc($grs);
		echo "<div class='like'>";
		echo "<div class='bla_d' data-g='".$gr['id']."'";
		echo " data-id='".$ava['id']."'";
		echo " data-bj='".$ava['bj']."'";
		echo ">";
		echo "<div class='blatop'>".$gr['nom'];
		echo "</div>";		
		echo "<button class='bn3'><b>D</b></button>";
		echo "<button class='bn3'>d</button>";	

		echo "</div>";		
		echo "</div>";		
	}
	echo "</div>";
}//switch

echo $act;

//----------------------------------
	mysqli_close($cu); 
}	
?>
