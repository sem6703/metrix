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
.fot {
background-image:url("data:image/png;base64,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");
background-position: center center;
background-repeat: no-repeat;
width: 30px;
height: 22px;	
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
	if ($c['fam']>''){// впихиваю фотик
		$tx=preg_split("/<br>|<br\/>/",$fu[0]);
		$tx[0]=$tx[0].'<a target="_blank" href="'.$c['fam'].'"><div class=fot></div></a>';
		$fu[0]=join('<br>',$tx);}
	echo join('',$fu);
	$fu=preg_split("/<mark>|<\/mark>/", $c['txt']);
	break;
}

echo "</table>";

if ( isset($_GET['svet'])) echo "<script>var v=document.getElementById('".$_GET['svet']."'); if (!!v) v.classList.add('acti');</script>";//

?>
</center></body></html>
