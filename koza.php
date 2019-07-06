<?php
header ("Content-Type: text/html; charset=utf-8");
// 7
?>
<!DOCTYPE html><html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width, initial-scale=1'><!--[if lt IE 9]><meta http-equiv='X-UA-Compatible' content='IE=edge'><![endif]--><style>html{height:100%;font-family:sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;font-size:10px;-webkit-tap-highlight-color:transparent}*,:after,:before{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}body{height:100%;margin:0;font-family:'Helvetica Neue',Helvetica,Arial,sans-serif;font-size:14px;line-height:1.42857143;color:#333;background-color:#fff}button,h3,input{font-family:inherit}h3{font-weight:500;line-height:1.1;color:inherit;margin-top:0;margin-bottom:20px;font-size:24px}.authform{width:300px;background-color:#e1e5ec;padding:25px 27px;margin: 0 auto;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px}

.vo {font-size: 30px; color: blue;}
.v5 {color: blue;}
.bell {text-align: center; margin: 0 auto;}
.well {text-align: left;}
   .acti {
    color: #000; /* Цвет активных ссылок */
	font-weight: bold;
	background-color: lime;
   }
</style><title>Kоза!</title></head><body bgcolor=red style='text-align: center'><center>

<?php
$x=$_GET;
$t="numr148p1915r";
if ( isset($_GET['t'])){ $t = $_GET['t'];}

include('config.php');
$cu=mysqli_connect(k127001,kroot,kempty,kphote);// коннектикум=mysqli_connect("127.0.0.1","root","","phote");
if (!$cu){
	echo 'здесь могла быть ваша ава';	
}else{
//----------------------------------
   mysqli_query($cu,"SET NAMES utf8"); 
//--------------------------------------------   
 if ( isset($x['da'])){ //!$_GET
 }
$t=mysqli_real_escape_string($cu,$t);// от инъекции
//--------------------------------------------
   $r4=mysqli_query($cu,"SELECT * FROM `kok` WHERE `link`='$t'"); //
   $c=mysqli_fetch_assoc($r4);
   $fu=preg_split("/<mark>|<\/mark>/", $c['txt']);
   $num=round(count($fu)/2);
//----------------------------------
   $r5=mysqli_query($cu,"SELECT * FROM `head` WHERE `code`='".substr($t,-1)."'"); // тащим шапку
   $c2=mysqli_fetch_assoc($r5); // тащим тащм шапку
//-----------------------------------
	mysqli_close($cu);		
}

?>

<?php
$i=0;
if ( isset($_GET['i'])){ $i = (int)$_GET['i'];}
if ($i==99) {$i=0;}// чужак
else
{$i = ($i + $num ) % $num ;}//гарантируем что $i  меньше количества маркеров	
?>


<?php

echo "	
<table border=1 bgcolor=#e0ffff width=90% class='bell' cellspacing=0 bordercolor=blue>";

print_r($c2['hat']);

$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);
print_r('<br>');// ('i='.round($i));//
for ($j=1; $j<$num;$j++){	
	$fu[$i*2-1]="<mark>".$fu[$i*2-1]."</mark>";
	echo join('',$fu);
	$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);
	break;
}

echo "</table>";

if ( isset($_GET['svet'])) echo "<script>var v=document.getElementById('".$_GET['svet']."'); if (!!v) v.classList.add('acti');</script>";//

?>
</center></body></html>
