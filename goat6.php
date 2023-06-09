<?php
header ("Content-Type: text/html; charset=utf-8");

// вход акт
// выход заполненная хтмл таблица акта
//echo 'tuyry ar6ia54i6aizy67azzr5s7kost5om7st5ok7st8osxo tksdt68o';
$sz=11;//7;//5;//
if ($_POST['act']){	
	$t = $_POST['act'];//
	if ($_POST['i']){$i=$_POST['i'];}else{$i=1;}
	$a=array(xa=>'xaxaxa');


//**********************************************************
$cu=mysqli_connect("127.0.0.1","root","","pet3");//$cu=mysqli_connect("127.0.0.1","root","","pet4");//
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
		// из пепса надо вытащит всего лишь айди группы. айди разложить на строку столбец
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
	$kok['txt']=str_replace("sign00.jpg", $kok['fot'], $kok['txt']);
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


