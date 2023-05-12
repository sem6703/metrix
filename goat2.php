<?php
header ("Content-Type: text/html; charset=utf-8");

$x=$_GET;
$t="numr148p1915r";  // дистрикт с иными
if ( isset($_GET['t'])){ $t = $_GET['t'];}

$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu)
	{
		echo 'база ноу коннект';	
	}
else
	{
	//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
	//--------------------------------------------   
	$t=mysqli_real_escape_string($cu,$t);// от инъекции
	$agu=array();//$agu=[];// вызов функции из клика

	$s_j="SELECT * FROM `test` WHERE `link` LIKE '%$t' ORDER BY `code`";
	$jjj=mysqli_query($cu,$s_j);//
	while ($jj=mysqli_fetch_assoc($jjj)){//// перебрать иных		
		// из пепса надо вытащит всего лишь айди группы. айди разложить на строку столбец
		$s_r="SELECT * FROM `peps` WHERE g=".$jj['g'];

		$rrr=mysqli_query($cu,$s_r);// с пепса
		$rr=mysqli_fetch_assoc($rrr);//
		$m=$rr['id'];

		$sz=5;
		
		$yy=(($m-1)-($m-1)%$sz)/$sz;//столбец. учел что нумерация с единицы
		$xx=($m-1) % $sz;// строка		
		$agu[]='<span onclick="'.'fj(\'jx'.$jj['id'].'\', '.$jj['code'].', \''.$t.'\','.$xx.','.$yy.');'.'">';//
		}

	$ccc=mysqli_query($cu,"SELECT * FROM `kok` WHERE `link`='$t'"); //

	$c=mysqli_fetch_assoc($ccc);
	   

	$c['txt']=str_replace("bgcolor=#ffbbff class=well", "bgcolor=#ff0000 class=well", $c['txt']);
	$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);
	$num=round(count($fu)/2);
	//----------------------------------
	$hhh=mysqli_query($cu,"SELECT * FROM `head` WHERE `code`='".substr($t,-1)."'"); 
	$h=mysqli_fetch_assoc($hhh); //шапка  
	//-----------------------------------
	mysqli_close($cu);   
	}
?>

<?php // светлый иной
	$i=0;
	if ( isset($_GET['i'])){ $i = (int)$_GET['i'];}
	if ($i==99) 
		{$i=0;}// темный иной
	else
		{$i=($i+$num)%$num;}//гарантируем что $i  меньше количества маркеров	
?>

<?php  // аяксо вывод
	echo "<table border=1 bgcolor=#e0ffff width=90% class='bell' cellspacing=0 bordercolor=blue>";
	print_r($h['hat']);
	
	$c['txt']=str_replace("sign00.jpg", $c['fot'], $c['txt']);
	//$c['txt']=preg_replace(/sign00.jpg/,$c['fot'],$c['txt']);
	$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);

	$fu[$i*2-1]="<mark>".$fu[$i*2-1]."</mark>";
	$ii=1;
	while ($ii<count($fu)){ $fu[$ii]=$agu[(int)($ii/2)].$fu[$ii].'</span>'; $ii=$ii+2; }
	echo join('',$fu);

	echo "</table>";
	echo "<script>";
	echo "ajx5.style.backgroundImage=\"url(".$c['fot'].")\";";
	echo "</script>";
	
	
?>
