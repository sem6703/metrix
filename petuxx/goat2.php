<?php
header ("Content-Type: text/html; charset=utf-8");

$x=$_GET;
$t="numr148p1915r";  // дистрикт с иными
if ( isset($_GET['t'])){ $t = $_GET['t'];}


//include('config.php');
//$cu=mysqli_connect(k127001,kroot,kempty,kphote);// коннектикум
//$cu=mysqli_connect("127.0.0.1","root","","petux");
//$cu=mysqli_connect("127.0.0.1","root","","mk24");
$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu)
	{
		echo 'здесь могла быть ваша ава';	
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
	while ($jj=mysqli_fetch_assoc($jjj)){//$jj=mysqli_fetch_assoc($jjj);// перебрать иных
		// из пепса надо вытащит всего лишь айди группы. айди разложить на строку столбец
		$s_r="SELECT * FROM `peps` WHERE g=".$jj['g'];
		$rrr=mysqli_query($cu,$s_r);//
		$rr=mysqli_fetch_assoc($rrr);//


		$sz=5;
		$yy=($rr['id']-$rr['id']%$sz)/$sz;//столбец
		$xx=$rr['id'] % $sz;// строка

		

		$agu[]='<span onclick="'.'fj(\'jx'.$jj['id'].'\', '.$jj['code'].', \''.$t.'\','.$xx.','.$yy.');'.'">';//
		}

	$r4=mysqli_query($cu,"SELECT * FROM `kok` WHERE `link`='$t'"); //

	$c=mysqli_fetch_assoc($r4);
	   

	$c['txt']=str_replace("bgcolor=#ffbbff class=well", "bgcolor=#ff0000 class=well", $c['txt']);
	$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);
	$num=round(count($fu)/2);
	//----------------------------------
	$r5=mysqli_query($cu,"SELECT * FROM `head` WHERE `code`='".substr($t,-1)."'"); // тащим шапку
	$c2=mysqli_fetch_assoc($r5); // тащим тащм шапку  
	//$c2=mysqli_fetch_assoc($r5); // тащим тащм шапку  второй вариант	
	//-----------------------------------
	mysqli_close($cu);   
	}
?>

<?php // светлый иной
$i=0;
if ( isset($_GET['i'])){ $i = (int)$_GET['i'];}
if ($i==99) {$i=0;}// темный иной
else
{$i = ($i + $num ) % $num ;}//гарантируем что $i  меньше количества маркеров	
?>

<?php  // аяксо вывод
	echo '<span style="color: white;"> '.$t.' </span>';

	echo "<table border=1 bgcolor=#e0ffff width=90% class='bell' cellspacing=0 bordercolor=blue>";
	print_r($c2['hat']);
	$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);

	$fu[$i*2-1]="<mark>".$fu[$i*2-1]."</mark>";
	$ii=1;
	while ($ii<count($fu)){ $fu[$ii]=$agu[(int)($ii/2)].$fu[$ii].'</span>'; $ii=$ii+2; }
	echo join('',$fu);

	echo "</table>";
?>
