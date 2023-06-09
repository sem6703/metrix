<?php
header ("Content-Type: text/html; charset=utf-8");



$sz=11;//7;//5;//
if (($_POST['g'])) $g=$_POST['g']; else $g=0;// група
if (($_POST['ava'])) $avaid=$_POST['ava']; else $avaid=0;//


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

if($g==0){// если група незашла в параметрах извлечь самому
	$ava=rec($cu,"SELECT * FROM `ava` WHERE id=$avaid");
	$g=$ava['g'];}

$koy=rec($cu,"SELECT * FROM `koys` WHERE g=$g");
$m=$koy['id']-1;

$pg=($m-$m%$sz)/$sz;//столбец. учел что нумерация с единицы
$koy=$m % $sz;// строка	

$grz=rec($cu,"SELECT * FROM `grz` ORDER BY `nom` LIMIT ".(int)($pg*$sz+$koy).",1");	
	if ($grz['fot']>0){
			
			$fote=rec($cu,"SELECT * FROM fote WHERE id=".(int)$grz['fot']);	

			$a['txt']="<div class='d3'>";
			
		
			$a['txt'].= $fote['img']." <tt>";
			$a['txt'].= ($pg*$sz+$koy+1)."</tt> ".$grz['nom'];
			}
			else
			{// id='dj1'
			$a['txt']= "<div class='d3'> <tt>".($pg*$sz+$koy+1)."</tt> ".$grz['nom'];//
			}
   $d=mysqli_query($cu,"SELECT * FROM `ava` WHERE `g`='".
		(int)$grz['id']."' ORDER BY `god`"); //все акты персоны
   $avis='';// накопитель аватар
   while ($ava=mysqli_fetch_assoc($d)){//	
		$role=$ava['role'];// подмена цифр буквами
		if ($role==1)$role='<b>R</b>';
		if ($role==7)$role='<b>D</b>';
		if ($role==4)$role='<b>M</b>';
		if ($role==8)$role='d';
		if ($role==2)$role='R';		
		if ($role==3)$role='r';
		if ($role==5)$role='M';
		if ($role==6)$role='m';	
		
		$avis.=' <a class="pec';// начало авы
		$avis.=($avaid==$ava['id'])?' acti':'';
		$avis.='" title="'.$ava['god']
			.' '.$ava['coop']
			.' |as: '.$ava['he'];
			

		$avis.='" onclick="';///event.stopPropagation();
		$avis.='fob('.$ava['id'].');">'.$role.' </a>';	


			}// аватары
		$a['txt'].= $avis.'</div>'; 
/**/


	//-----------------------------------
	mysqli_close($cu);   
	}
//**************************************************************

 $a['g']=$g;
	
echo json_encode($a);

?>

