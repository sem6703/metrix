<?php
header ("Content-Type: text/html; charset=utf-8");
?>

<!DOCTYPE html> 
<head>
	<title>Метрические книги 1881-1918</title>
	<link rel="chortcut icon" type="image/x-icon" href="favicon.ico">
	<style>
  *:not(hr), *::after, *::before {box-sizing: border-box;margin:0;padding:0;border:0}ul {list-style-type: none}
body{padding: 33px 0;background: linear-gradient(rgba(0,0,0,0.9), blue); 
text-align: center;
color: white; font-family: sans-serif;
}
.d3{padding: 0 22px;text-align: left;color: black;}
.d3:nth-child(odd){background:white;}
.d3:nth-child(even){background:#fed;}	
	
tt  {color: gray;}/*номера в списе*/
.vo {font-size: 30px; color: blue;}/*новорожденый*/
.d2 {padding-left: 30px;/*полоса списа светлая*/
     background-color: #f0f0f0;
	 text-align: left;
	 color: black;
	 }

.d4 {padding-left: 30px;/*полоса списа зеленая*/
     background-color: white;
	 text-align: left;
	 color: black;
	 }	
.d4:nth-child(odd){background:white;}
.d4:nth-child(even){background:#fed;}		 
	 
.p8 {padding-left: 46px;}/*нано-фотка позиция*/

.bell {text-align: center; margin: 0 auto;}	/*ячейки*/ 

.well {text-align: left;}/*еще ячейки*/


.pb {background-color: #f0f8ff;/*предбанник*/
	text-align: left;
	width: 90%;
	padding-left: 46px;
	border: blue solid 2px;
	overflow: auto;
	}
.bkt {background-color: transparent;}/*акты*/
#ajx0 {width: 80%; height: 100px;h0eight: 350px; overflow: auto; background: #00bfff;  text-align: left;}
#ajx1 {background-color: purple; padding: 6px;}
#ajx2 {background-color: purple; padding: 6px;}
#ajx3 {background-color: white; font-size: 16px;}
#ajx4 {background-color: black; padding: 6px;}
.palec {color: blue; /*акт а-ля ссылка*/
    text-decoration: underline; cursor: pointer;}

.acti { /*подсветка в бане*/
    color: #000; /* Цвет активных ссылок */
	font-weight: bold;
	background-color: lime;
   }
  

.palec{cursor: pointer;text-decoration: none;
border-bottom:1px solid black;
}
td{border:1px solid navy;}
.ihead{padding: 5px 0; background: #f0f8ff}
.ileft{padding: 0 12px; text-align: left;}
.icenter{text-align: center;}

.a:has(mark){text-decoration: none;}
.a{text-decoration: underline; text-decoration-color: green;}
label{padding: 0 0 0 12px;}
mark{background: springgreen;}
.nom{text-decoration: underline;cursor: pointer;}
.buts button{margin:2px;padding:5px 23px;font-size:20px; cursor:pointer;border-radius:6px;}
.buts span{padding:5px;font-size:20px;}
.alf button{margin:2px;padding:5px;font-size:15px;cursor:pointer;border-radius:6px;}
table{width: 100%;
		background:#e0ffff;
		border-collapse: separate;
		border:4px solid blue;
		color:black;
		}
[color='red']{display: none}
[color='blue']{display: none}

	</style>
<script src="jq/jquery-2.1.0.min.js"></script>
</head>
<body>

<center>
<?php
//include('config.php');
//$cu=mysqli_connect(k127001,kroot,kempty,kphote);// 
//$cu=mysqli_connect("127.0.0.1","root","","petux");
//$cu=mysqli_connect("127.0.0.1","root","","mk24");
$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'здесь могла быть ваша ава';	
}else{
//--------------------------------------------   
	$r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima`"); //
	//$num=intval(mysqli_num_rows($r) / 50);//замер базы в страницах
	$num=intval(mysqli_num_rows($r) / 5);//замер базы в страницах	
}
//-----------------------------------
	mysqli_close($cu);  
?>

<script>
var curxx='i';// в списе подсвеченный эл
var levmax=<?php echo "$num" ?>;// страниц в базе групп
var oldxx=0;
function fy(x,n,s,e){
	//$('#ajx2').load('goat.php?i='+n+'&t='+s);// табла
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// табла
	$('#ajx1').load('spis.php?k=1&e='+e+'&pg='+lev+'&id='
		+x.id.replace("i", "j"));// баня медленно грузится
	/**/
	if (!!oldxx) { 
		var u=oldxx.id;
		//u=u.replace("j", "i");
		if(!!document.getElementById(u))
			document.getElementById(u).style.backgroundColor='transparent';
	}
	
	if (!!x) {
		var u=x.id; //	
		//u=u.replace("j", "i");
		if(!!document.getElementById(u)){
		document.getElementById(u).style.backgroundColor='lime';//'yellow';
		curxx=u;
		}
	}
	oldxx=x;
}


function fb(x,n,s,e,pig){// клик на бане
	//$('#ajx2').load('goat.php?i='+n+'&t='+s);// табла
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// табла
	$('#ajx1').load('spis.php?k=1&e='+e+'&pg='+pig+'&id='
		+x.id);// баня медленно грузится
		
	if (!!oldxx) { // освещение в списе
		var u=oldxx.id;
		u=u.replace("j", "i");// по-другому невыйдешь на близнеца
		if(!!document.getElementById(u))// не факт что лев несъебался
			document.getElementById(u).style.backgroundColor='transparent';		
	}
	if (!!x) {//
		var u=x.id.replace("j", "i"); //спис подсвечу			
		if(!!document.getElementById(u)){
		  document.getElementById(u).style.backgroundColor='lime';//'yellow';
		  curxx=u;
		}
	}
	oldxx=x;
	/**/
}

function fj(y,n,s,e,pig){//из бани
	//$('#ajx2').load('goat.php?i='+n+'&t='+s);// табла
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// табла
	$('#ajx1').load('spis.php?k=1&e='+e+'&pg='+pig+'&id='+y);// баня медленно грузится	
	let u;
	/**/
	if (!!oldxx) { // освещение в списе
		u=oldxx.id;// oldxx может только в списе(j нет в имени)
		if(!!document.getElementById(u))// не факт что лев несъебался
		{document.getElementById(u).style.backgroundColor='transparent';		
		}
	}
	u=y.replace("j", "i"); //спис подсвечу	
	if(!!document.getElementById(u)){
		  document.getElementById(u).style.backgroundColor='red';//'yellow';//
		  oldxx=document.getElementById(u);
		  curxx=u;
	}
	
}
</script>
<b>Метрические книги. 1881-1918.</b><br>
Условные обозначения:
<b>R</b>-родился; R-родил; r-воспреемник новорожденного; <b>M</b>-вступил в брак; M-родитель новобрачного; m-свидетель на бракосочетании; <b>D</b>-умер; d-родственник умершего.
<div id="ajx0"> o</div>

<script>
function leventer(){//текущая страница списа (лев)
//alert('xa'+lev+'xa'+levmax+'xa');
	$('#ajx3').load('lev.php?k='+lev);//num.innerHTML='lev';
	//$('#ajx0').load('spis.php?k=50&pg='+lev);
	$('#ajx0').load('spis.php?k=5&pg='+lev);
	}

var lev=0;// страница ноль

leventer();
</script>

<?php




?>
</div><!-- управление львом -->
<button onclick="lev=0;leventer();"> 0 </button>
<button onclick="lev=(lev>9)?(lev-10):0;leventer();"> &lt;&lt; </button>
<button onclick="lev=(lev>0)?(lev-1):0;leventer();"> &lt; </button>
<span id=ajx3>0</span>
<button onclick="lev=(lev<levmax)?(lev+1):levmax;leventer();"> &gt; </button>
<button onclick="lev=(lev<levmax-10)?(lev+10):levmax;leventer();"> &gt;&gt; </button>
<button onclick="lev=levmax;leventer();"> <?php echo "$num" ?> </button>
<br>
<button onclick="lev=1;leventer();"> А </button>
<button onclick="lev=7;leventer();"> Б </button>
<button onclick="lev=19;leventer();"> В </button>
<button onclick="lev=25;leventer();"> Г </button>
<button onclick="lev=33;leventer();"> Д </button>
<button onclick="lev=39;leventer();"> Е </button>
<button onclick="lev=42;leventer();"> Ж </button>
<button onclick="lev=43;leventer();"> З </button>
<button onclick="lev=49;leventer();"> И </button>
<button onclick="lev=51;leventer();"> К </button>
<button onclick="lev=74;leventer();"> Л </button>
<button onclick="lev=80;leventer();"> М </button>
<button onclick="lev=88;leventer();"> Н </button>
<button onclick="lev=92;leventer();"> О </button>
<button onclick="lev=97;leventer();"> П </button>
<button onclick="lev=110;leventer();"> Р </button>
<button onclick="lev=113;leventer();"> С </button>
<button onclick="lev=126;leventer();"> Т </button>
<button onclick="lev=130;leventer();"> У </button>
<button onclick="lev=131;leventer();"> Ф </button>
<button onclick="lev=140;leventer();"> Х </button>
<button onclick="lev=142;leventer();"> Ц </button>
<button onclick="lev=142;leventer();"> Ч </button>
<button onclick="lev=145;leventer();"> Ш </button>
<button onclick="lev=147;leventer();"> Щ </button>
<button onclick="lev=147;leventer();"> Э </button>
<button onclick="lev=147;leventer();"> Ю </button>
<button onclick="lev=147;leventer();"> Я </button>



<div id=ajx1 class=pb> o</div><!-- предбанник -->
<div id=ajx2></div><!-- табла -->
<div id=ajx4 style="color: white;"></div><!-- табла -->


<script>/* закоментчено
<button onclick="fb(ix20,3,'numr318d6r',18,0);"> * </button>
<a href="/buka.php">сопоставить буквы страницем</a>
width: 80%;  background: green; text-align: left;
*/</script>

<?php  //include 'peps.php'// это разложение на столбы строки номера группы
?>//
</body>
</html>



