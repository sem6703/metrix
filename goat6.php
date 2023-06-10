<?php
header ("Content-Type: text/html; charset=utf-8");

include 'var6.php';
// вход акт
// выход заполненная хтмл таблица акта

$h="<a href=\"sign00.jpg\" target=\"_blank\" style=\"cursor: pointer;\">\r\n <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-camera-fill\" viewBox=\"0 0 16 16\">\r\n<path d=\"M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z\"></path>\r\n <path d=\"M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z\"></path>\r\n </svg></a>";// фотик
if ($_POST['act']){	
	$t = $_POST['act'];//
	if ($_POST['i']){$i=$_POST['i'];}else{$i=1;}
	$a=array(xa=>'xaxaxa');


//**********************************************************
$cu=mysqli_connect("127.0.0.1","root","",$cubd);// см в include 'var6.php'
if (!$cu)
	{
		echo 'база ноу коннект';	
	}
else
	{
	//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
	//--------------------------------------------   
	
		function rec($cu, $s){// читать запись
			$e=mysqli_query($cu,$s);		
			return mysqli_fetch_assoc($e);
		}
//*************************************
$waw=rec($cu,"SELECT * FROM `ava` WHERE `id`=".(int)$i);
$svet=($t==$waw['act'])?$waw['svet']:0;
//***************
$agu=array();//$agu=[];// вызов функции из клика
	
	$s_j="SELECT * FROM `ava` WHERE `act`=".(int)$t." ORDER BY `svet`";
	$su_ava=mysqli_query($cu,$s_j);//
	
	while ($ava=mysqli_fetch_assoc($su_ava)){//// перебрать иных		
		// надо вытащит всего лишь айди группы. айди разложить на строку столбец
		$peps=rec($cu,"SELECT * FROM `koys` WHERE g=".$ava['g']);
		
		$m=$peps['id']-1;	
		$yy=($m-$m%$sz)/$sz;//столбец. учел что нумерация с единицы
		$xx=$m % $sz;// строка		

		$agu[]='<span onclick="'.'foj('.$ava['id'].');'.'">';		
		}

	$kok=rec($cu,"SELECT * FROM `acts` WHERE `id`=$t");   

	$kok['txt']=str_replace("bgcolor=#ffbbff class=well", "bgcolor=#ff0000 class=well", $kok['txt']);
	$fu=preg_split("/<mark>|<\/mark>/", $kok['txt']);
	$num=round(count($fu)/2);
	//----------------------------------
	$su_numr=mysqli_query($cu,"SELECT * FROM `acts` WHERE `id`=$t");
	$numr=mysqli_fetch_assoc($su_numr);
	$su_head=mysqli_query($cu,"SELECT * FROM `head` WHERE `id`=".$numr['type']);
	$hat=mysqli_fetch_assoc($su_head); //шапка  	
//
//*************************************
	//-----------------------------------
	mysqli_close($cu);   
	}
//**************************************************************
// аяксо вывод
	
	$a['txt']="<table cellspacing=0>";
	$a['txt'].=($hat['hat']);	
	
	if(empty($kok['fam'])){
	$kok['txt']=str_replace('yyy','', $kok['txt']);// фотик
	}else{
	$kok['txt']=str_replace('yyy',$h, $kok['txt']);// фотик
	$kok['txt']=str_replace("sign00.jpg", $kok['fam'], $kok['txt']);	
	}
	//$kok['txt']=str_replace("sign00.jpg", $kok['fot'], $kok['txt']);
	
	$fu=preg_split("/<mark>|<\/mark>/", $kok['txt']);
	$fu[$svet*2-1]="<mark>".$fu[$svet*2-1]."</mark>";
		
	$ii=1;
	while ($ii<count($fu))
		{$fu[$ii]=$agu[(int)($ii/2)].'<span class="a">'.$fu[$ii].'</span></span>'; $ii=$ii+2;}
	$a['txt'].= join('',$fu);//echo
	$a['txt'].= "</table>";//echo
	
	
	$a['fot']=$kok['fot'];
	$a['id']=$kok['id'];	
	$a['txt2']=$kok['txt'];	
//**************************************
echo json_encode($a);
}


