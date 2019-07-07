<?php
header ("Content-Type: text/html; charset=utf-8");
// это локалхост-9 авторизация и пагинация в метрике
require "db.php";

?>

<!DOCTYPE html> 
<head>
	<title>L8 Метрические книги Актуши 1881-1918</title>
	<link rel="chortcut icon" type="image/x-icon" href="favicon.ico">
	<style>
	tt  {color: gray;}
	

.mi {font-size: 100px;}	
.vo {font-size: 30px; color: blue;}
.d1 {width: 75%;
     border: red dashed 3px;}

.d2 {padding-left: 30px;
     background-color: #f0f0f0;
	 text-align: left;
	 color: black;
	 }
.d3 {padding-left: 30px;
     background-color: #f0f8ff;
	 text-align: left;
	 color: black;
	 }	
.d4 {padding-left: 30px;
     background-color: #7df480;
	 text-align: left;
	 color: black;
	 }	
.bell {text-align: center; margin: 0 auto;}	 
.well {text-align: left;}
.p8 {padding-left: 46px;}
.pb {background-color: #f0f8ff;
	display: none; /*block;*/
	text-align: left;
	width: 90%;
	padding-left: 46px;
	border: blue solid 2px;
	}
.bkt {background-color: transparent;}

	</style>

</head>
<body>

<?php if (isset($_SESSION['logged_user'])):?>
Привет, <?php echo $_SESSION['logged_user']->login; ?>!
<a href="/logout.php">Выйти</a><hr><center>

<?php
$super=10; // страниц в турбо режиме
if (isset($_POST['page'])) {$page=$_POST['page'];} else {$page=0;} 
if (isset($_POST['pred']))$page--;
if (isset($_POST['next']))$page++;
if (isset($_POST['pred2']))$page-=$super;
if (isset($_POST['next2']))$page+=$super;

//print_r("Страница $page из $num<hr>");
?>

<script>
var oldx=0;
var oldpb=0;
function f(x,y){
	if (!!oldx) {
		var u=oldx.id;
		var k3 = u.replace("i", "j"); 
		var k3 = k3.replace("j", "i");
		var k4 = k3.replace("i", "j");
		document.getElementById(k3).style.backgroundColor='transparent';
		document.getElementById(k4).style.backgroundColor='transparent';
	}
	if (!!x) {
		var u=x.id;
		var k1 = u.replace("i", "j"); 
		var k1 = k1.replace("j", "i");
		var k2 = k1.replace("i", "j");		
		document.getElementById(k1).style.backgroundColor='yellow';
		document.getElementById(k2).style.backgroundColor='yellow';		
	}
	oldx=x;
	
	if (!!oldpb) oldpb.style.display='none';
	if (!!y) y.style.display='block';
	oldpb=y;
}
</script>
<b>Метрические книги Актуши. 1881-1918.</b><br>
Условные обозначения:
<b>R</b>-родился; R-родил; r-воспреемник новорожденного; <b>M</b>-вступил в брак; M-родитель новобрачного; m-свидетель на бракосочетании; <b>D</b>-умер; d-родственник умершего.
<div id="d1" style="width: 80%; height: 350px; overflow: auto; background: #00bfff;  text-align: left;"> 
<?php




$aaa=array();
//echo "$page <br>";
$d23=array('d2','d3');
//include('config.php');
$cu=mysqli_connect(k127001,kroot,kempty,kphote);// коннектикум=mysqli_connect("127.0.0.1","root","","phote");

if (!$cu){
	echo 'здесь могла быть ваша ава';	
}else{
//----------------------------------
   mysqli_query($cu,"SET NAMES utf8");  //
//----------------------------------   
	$r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima`"); //
	$pagesz=50;
	//$num=ceil(mysqli_num_rows($r) / $pagesz);
	$num=intval(mysqli_num_rows($r) / $pagesz);
	//$num=152;
	
	
	if (isset($_POST['pred3']))$page=0;
	if (isset($_POST['next3']))$page=$num;	
	//------------------
	if (isset($_POST['goto']))$page=(int)$_POST['goto'];
	
//--------------------------------
/*
	if (isset($_POST['the_v']))$page=19;
	if (isset($_POST['the_g']))$page=25;
	if (isset($_POST['the_d']))$page=33;
	if (isset($_POST['the_e']))$page=39;
	if (isset($_POST['the_zh']))$page=42;
	if (isset($_POST['the_z']))$page=43;
	if (isset($_POST['the_i']))$page=49;
	if (isset($_POST['the_k']))$page=51;
	if (isset($_POST['the_l']))$page=74;
	if (isset($_POST['the_m']))$page=80;
	if (isset($_POST['the_n']))$page=88;
	if (isset($_POST['the_o']))$page=92;
	if (isset($_POST['the_p']))$page=97;
	if (isset($_POST['the_r']))$page=110;
	
	
	if (isset($_POST['the_s']))$page=113;
	if (isset($_POST['the_t']))$page=126;
	if (isset($_POST['the_f']))$page=131;
	if (isset($_POST['the_h']))$page=140;
	if (isset($_POST['the_ch']))$page=142;
	if (isset($_POST['the_sh']))$page=145;
		*/
	
	//$page=($page+$num)%$num;
	if ($page<0)$page=0;
	if ($page>$num)$page=$num;
	//print_r("num=$num ");print_r(" Страница $page из $num<hr>");
	
	
	
	
	
	$start=$page*$pagesz;

   $r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima` LIMIT ".(int)$start.",".(int)$pagesz); //

   //$os=array(749,1714,1890,1956,4917,4928,4984,5133,5175,5551,5599,6429);
   $os=array(750,1715,1891,1957,4918,4929,4985,5134,5176,5552,5600,6430);
   $n=0;
   $p=0;
   while ($j=mysqli_fetch_assoc($r))
	   //print_r('mysqli_query($cu,"UPDATE `gru` SET `ima`=\''.$j['ima'].'\' WHERE id='.$j['id'].'");<br>');    
   
   {$n++;//print_r("<div class='".." p8' id='di$n'><tt>$n</tt> ".$j['ima']." <font color=#00bfff>id=".$j['id']."</font>");
    $fax='';
   $s8=$j['ima'];
		if (True){
			//$p++;
			//$s2=;//$s2
			//mysqli_query($cu,"UPDATE `gru` SET `phote`=".$p." WHERE `id`=".$j['id']);
			if ($j['phote']>0)$fot=mysqli_query($cu,"SELECT * FROM fote WHERE id1=".(int)$j['phote']);//
			//$fot=mysqli_query($cu,"SELECT * FROM fote WHERE id1=$p");//
			$zap=mysqli_query($cu,"SELECT * FROM `test` WHERE `g`=".(1+$n)); // взял сущность в которой все записи относящиеся к группе $n
			
			//$s4="<font color=red> gru".$j['id']." </font>";
			$s4="";
			if ($j['phote']>0){
			$cfot=mysqli_fetch_assoc($fot);	
			
			print_r("<div class='d4' id='di$n'>".$cfot['img']." <tt>".($n+$start)."</tt> ".$s4.$j['ima']);}//." ----".$j['phote'].$s2."  ");}	
			else{
			print_r("<div class='".$d23[$n%2]." p8' id='di$n'> <tt>".($n+$start)."</tt> ".$s4.$j['ima']);}//." ----".$j['phote'].$s2." ");}
		
   $s="SELECT * FROM `test` WHERE `g`='".(int)$j['id']."' ORDER BY `god`";
   $d=mysqli_query($cu,$s); //
   while ($k=mysqli_fetch_assoc($d)){//
   $p2=preg_replace("/.+#/","",$k['link']);
	$v=$k['code'];
	$s2='" class="bkt';// фон прозрачный

   $kk=$k['act'];// подмена символов буквами
   if ($kk=='&#9415;')$kk='<b>R</b>';
   if ($kk=='&#9401;')$kk='<b>D</b>';
   if ($kk=='&#9410;')$kk='<b>M</b>';
   //print_r(

   $fa=' <a target="main"'
   .' href="koza.php?i='.$k['code']
   .'&t='
   .$p2
   .'&svet=i'.$k['id']
   .'" title="'.$k['god']
   .' '.$k['coop']
   .' |as: '.$k['read1']
   .'"  id="i'.$k['id']
   .$s2
   .'" onclick="'
   .'f(this,'."pb$n".');'
   .'"> '
   .$kk//$k['act']
   .' </a>';
   
   $fa2=' <a target="main"'
   .' href="koza.php?i='.$k['code']
   .'&t='
   .$p2
   .'&svet=i'.$k['id']
   .'" title="'.$k['god']
   .' '.$k['coop']
   .' |as: '.$k['read1']
   .'"  id="j'.$k['id']
   .$s2
   .'" onclick="'
   .'f(this,'."pb$n".');'
   .'"> '
   .$kk//$k['act']
   .' </a>';   

   print_r($fa);// событие
   $fax=$fax.$fa2;   
   }		
		
		print_r('</div>');// 
		$aaa[]="<div id=\"pb"."$n"."\" class=\"pb\"><tt>".($n+$start)." </tt>$s8 $fax</div>";// предбанник
		}
        else { 
}   
   }
//-----------------------------------
	mysqli_close($cu);		
}

$ki=' style="font-size: 33px;"';
?>
</div>

   <form action="/" method="POST"  style="width: 75%; text-align: left;">
   <p> 
		<input type="hidden" name="page" <?php echo $ki ?> value=<?php echo "$page" ?>>
		<button type="submit" name="pred3" <?php echo $ki ?> value="pred3"> 0 </button>
		<button type="submit" name="pred2" <?php echo $ki ?> value="pred2"> << </button>
		<button type="submit" name="pred" <?php echo $ki ?> value="pred"> < </button>
		<b><span <?php echo $ki ?>> <?php echo "$page" ?> </span></b>
		<button type="submit" name="next" <?php echo $ki ?> value="next"> > </button>
		<button type="submit" name="next2" <?php echo $ki ?> value="next2"> >> </button>
		<?php /*<button type="submit" name="next3" <?php echo $ki ?> value="next3"> 150 </button>*/ ?>
		<button type="submit" name="next3" <?php echo $ki ?> value="next3"> <?php echo "$num" ?> </button>
		&nbsp;&nbsp;&nbsp;&nbsp;
		
		<button type="submit" name="goto" value="1"> А </button>
		<button type="submit" name="goto" value="7"> Б </button>
		
		<button type="submit" name="goto" value="19"> В </button>
		<button type="submit" name="goto" value="25"> Г </button>
		<button type="submit" name="goto" value="33"> Д </button>
		<button type="submit" name="goto" value="39"> Е </button>
		<button type="submit" name="goto" value="42"> Ж </button>
		<button type="submit" name="goto" value="43"> З </button>
		<button type="submit" name="goto" value="49"> И </button>
		<button type="submit" name="goto" value="51"> К </button>
		<button type="submit" name="goto" value="74"> Л </button>
		<button type="submit" name="goto" value="80"> М </button>
		<button type="submit" name="goto" value="88"> Н </button>
		<button type="submit" name="goto" value="92"> О </button>
		<button type="submit" name="goto" value="97"> П </button>
		<button type="submit" name="goto" value="110"> Р </button>
		<button type="submit" name="goto" value="113"> С </button>
		<button type="submit" name="goto" value="126"> Т </button>
		<button type="submit" name="goto" value="131"> Ф </button>
		<button type="submit" name="goto" value="140"> Х </button>
		<button type="submit" name="goto" value="142"> Ч </button>
		<button type="submit" name="goto" value="145"> Ш </button>		
		
   </p>    
   </form>
   
<?php
for ($ii=0; $ii<count($aaa); $ii++){print_r($aaa[$ii]);}// предбанник
?>

<IFRAME  id="main" name="main" width="100%" height="1000px" marginwidth="0" marginheight="0" 
 framespacing="0" border="0" frameborder="0"><br>

<script>
//aa=d1.getElementsByTagName('a'); height="1000px"
 // for (let i=0; i<aa.length; i++){aa[i].style.backgroundColor='white';}
</script>

<?php else : ?>
<a href="/login.php"  style="font-size: 72px;">Авторизация</a>&nbsp;&nbsp;
<a href="/signup.php" style="font-size: 72px;">Регистрация</a>
<?php endif; ?>


<!-- Yandex.Metrika counter --> <script type="text/javascript" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(53394175, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true, trackHash:true }); </script> <noscript><div><img src="https://mc.yandex.ru/watch/53394175" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
</body>
</html>



