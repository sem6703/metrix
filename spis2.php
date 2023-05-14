<?php
header ("Content-Type: text/html; charset=utf-8");

$pga=100;
$p2='';
$sz=5;//50
if (isset($_GET['pg'])) $pga=$_GET['pg'];// онмер страницы
if (isset($_GET['k'])) $k20=$_GET['k']; else $k20=1;//1;// одну или 50
if (isset($_GET['e'])) $e66=$_GET['e']; else $e66=0;// строка
$ww=(isset($_GET['id']))?(int)(preg_replace("/ix|jx/","",$_GET['id'])):-1;
$ban=$k20==$sz;// куда строки выдавать 5-в лист 1-в п/б


$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
   mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------   
$start=$pga*$sz+$e66;


$pagesz=($ban)?$sz:1;
$r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima` LIMIT ".(int)$start.",".(int)$pagesz); //

$n=0;	
while ($j=mysqli_fetch_assoc($r)){
	$n++;	
	$pin="<font color=red> gru".$j['id']." </font>"."<font color=blue> *$n </font>";
	

	if ($j['phote']>0){
			$fot=mysqli_query($cu,"SELECT * FROM fote WHERE id1=".(int)$j['phote']);
			$cfot=mysqli_fetch_assoc($fot);	
			echo "<div class='d3' id='di$n'";
			echo " onclick=\"".$j['fn']."\">";
			echo $cfot['img']." <tt>";
			echo ($n+$start)."</tt> ".$pin.$j['ima'];
			}
			else
			{
			echo "<div class='d3 p8' id='di$n'> <tt>".($n+$start)."</tt> ".$pin.$j['ima'];//
			}
   $d=mysqli_query($cu,"SELECT * FROM `test` WHERE `g`='".
		(int)$j['id']."' ORDER BY `god`"); //все акты персоны
   $fa='';
   while ($k=mysqli_fetch_assoc($d)){//	
		$p2=preg_replace("/.+#/","",$k['link']);// numr4d		
		$kk=$k['act'];// подмена символов буквами
		if ($kk=='&#9415;')$kk='<b>R</b>';
		if ($kk=='&#9401;')$kk='<b>D</b>';
		if ($kk=='&#9410;')$kk='<b>M</b>';   
		$fa.=' <a class="palec';
		$fa.=($ww==$k['id'])?' acti':'';
		$fa.='" title="'.$k['god']
			.' '.$k['coop']
			.' |as: '.$k['read1'];
		if (!$ban)$fa.='"  id="ix'.($k['id']); else $fa.='"  id="jx'.($k['id']);

		$fa.='" onclick="event.stopPropagation();';

		$fa.=($ban)?'fy':'fb';

		$fa.='(this,'.$k['code'].",'$p2',";

		$fa.=($ban)?($n-1):($e66).",$pga";

		$fa.=");"
		   .'"> '
		   .$kk//
		   .' </a>';
			}
		   
		echo $fa.'</div>';   	
}



	$s_u="SELECT * FROM `test` WHERE `id`=".(int)$ww;	
	$uuu=mysqli_query($cu,$s_u);	
	$u=mysqli_fetch_assoc($uuu);
	$vvv=mysqli_query($cu,"SELECT * FROM `gru` WHERE `id`=".(int)$u['g']); 
	$v=mysqli_fetch_assoc($vvv);
//----------------------------------
	mysqli_close($cu); 
	
echo "<script>";	
echo "wanted.innerHTML=".$ww.";";
echo "ajx6.innerHTML=`".$v['txt']."`;";	
echo "</script>";	
}
?>

