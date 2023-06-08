<?php
header ("Content-Type: text/html; charset=utf-8");



$sz=11;//7;//5;//
if (($_POST['pg'])) $pg=$_POST['pg']; else $pg=0;// страница
if (($_POST['ava'])) $avaid=$_POST['ava']; else $avaid=0;//


	$a=array(xa=>'xaxaxa');

//**********************************************************
$cu=mysqli_connect("127.0.0.1","root","","pet3");
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


$su_grz=mysqli_query($cu,"SELECT * FROM `grz` ORDER BY `nom` LIMIT ".
(int)($pg*$sz).",".(int)$sz); //5
$a['txt']='';
$n=0;	
while ($grz=mysqli_fetch_assoc($su_grz)){
$n++;	
	if ($grz['fot']>0){
			
			$fote=rec($cu,"SELECT * FROM fote WHERE id=".(int)$grz['fot']);	

			$a['txt'].="<div class='d3' onclick='fox(".$grz['id'].")'>";
			
			//$a['txt'].= " onclick=\"fx(".$grz['id'].");\">";//		
			$a['txt'].= $fote['img']." <tt>";
			$a['txt'].= ($pg*$sz+$n)."</tt> ".$grz['nom'];
			}
			else
			{// id='dj1'
			$a['txt']= "<div class='d3' id='di$n' onclick='fox(".$grz['id'].")'> <tt>".($pg*$sz+$n)."</tt> ".$grz['nom'];//
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
			

		$avis.='" onclick="event.stopPropagation();';///
		$avis.='foy('.$ava['id'].');">'.$role.' </a>';	


			}// аватары
		$a['txt'].= $avis.'</div>'; 
/**/
	}//while

	//-----------------------------------
	mysqli_close($cu);   
	}
//**************************************************************

 $a['g']=$g;
	
echo json_encode($a);

?>

