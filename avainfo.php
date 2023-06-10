<?php
header ("Content-Type: text/html; charset=utf-8");

include 'var6.php';
// вход акт
// выход заполненная хтмл таблица акта

if ($_POST['ava']){	
	$ava = $_POST['ava'];//

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
$v=rec($cu,"SELECT * FROM `ava` WHERE `id`=$ava");
//$a['rq']="SELECT * FROM `ava` WHERE `id`=$ava";
$a['rq']="SELECT * FROM `koys` WHERE `g`=".(int)$v['g'];
$a['g']=$v['g'];
$a['act']=$v['act'];
$a['god']=$v['god'];
$a['coop']=$v['coop'];
$a['he']=$v['he'];
$a['role']=$v['role'];
$a['svet']=$v['svet'];
$w=rec($cu,"SELECT * FROM `koys` WHERE `g`=".(int)$v['g']);
$a['id']=$w['id'];
$a['pg']=(($w['id']-1)-($w['id']-1)%$sz)/$sz;
$a['koy']=($w['id']-1)%$sz;//
/*      */
	//-----------------------------------
	mysqli_close($cu);   
	}

//**************************************
echo json_encode($a);
}


