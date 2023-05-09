<?php
header ("Content-Type: text/html; charset=utf-8");
$d23=array('d2','d3');//// зебра для списа
$pga=100;
$p2='';
$sizon=5;//50
if (isset($_GET['pg'])) $pga=$_GET['pg'];// онмер страницы
if (isset($_GET['k'])) $k20=$_GET['k']; else $k20=1;//1;// одну или 50
if (isset($_GET['e'])) $e=$_GET['e']-1; else $e=0;// строка




//include('config.php');
//$cu=mysqli_connect(k127001,kroot,kempty,kphote);// коннектикум
//$cu=mysqli_connect("127.0.0.1","root","","petux");
//$cu=mysqli_connect("127.0.0.1","root","","mk24");
$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'здесь могла быть ваша ава';	
}else{
//----------------------------------
   mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------   
$start=$pga*$sizon+$e;
if ($k20==$sizon)$pagesz=$sizon; else $pagesz=1;//1;
$r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima` LIMIT ".(int)$start.",".(int)$pagesz); //

$n=0;	
while ($j=mysqli_fetch_assoc($r)){
	$n++;	
	$pin="<font color=red> gru".$j['id']." </font>"."<font color=blue> *$n </font>";
	
    
	if ($j['phote']>0)$fot=mysqli_query($cu,"SELECT * FROM fote WHERE id1=".(int)$j['phote']);
	if ($j['phote']>0){
			$cfot=mysqli_fetch_assoc($fot);	
			echo "<div class='d4' id='di$n'>".$cfot['img']." <tt>".($n+$start)."</tt> ".$pin.$j['ima'];
			}
			else
			{
			echo "<div class='".$d23[$n%2]." p8' id='di$n'> <tt>".($n+$start)."</tt> ".$pin.$j['ima'];//
			}
   $d=mysqli_query($cu,"SELECT * FROM `test` WHERE `g`='".(int)$j['id']."' ORDER BY `god`"); //все акты персоны
   $fa='';
   while ($k=mysqli_fetch_assoc($d)){//	
		$p2=preg_replace("/.+#/","",$k['link']);
	   $kk=$k['act'];// подмена символов буквами
	   if ($kk=='&#9415;')$kk='<b>R</b>';
	   if ($kk=='&#9401;')$kk='<b>D</b>';
	   if ($kk=='&#9410;')$kk='<b>M</b>';   
	   $fa.=' <a class=palec'
		   .' title="'.$k['god']
		   .' '.$k['coop']
		   .' |as: '.$k['read1'];
	   
	   if ($k20!=1)$fa.='"  id="ix'.($k['id']); else $fa.='"  id="jx'.($k['id']);
	   
	   
	   $fa.='" onclick="';
	   $fa.=($k20==$sizon)?'fy':'fb';
	   
	   $fa.='(this,'.$k['code'].",'$p2',";
	   
	   $fa.=($k20==$sizon)?$n:($e+1).",$pga";
	   
	   $fa.=");"
	   .'"> '
	   .$kk//
	   .' </a>';
		}
		   
		echo $fa.'</div>';   	
}
//----------------------------------
	mysqli_close($cu);   
}

if ( isset($_GET['id'])) echo "<script>var v=document.getElementById('".$_GET['id']."'); if (!!v) v.classList.add('acti');</script>";	
if ( $k20==$sizon) echo "<script>var v=document.getElementById(curxx); if (!!v) v.classList.add('acti');</script>";	

?>

