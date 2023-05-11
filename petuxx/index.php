<?php
header ("Content-Type: text/html; charset=utf-8");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
.palec{
	cursor: pointer;text-decoration: none;
	border-bottom:1px solid black;
	}
td{border:1px solid navy;}
.ihead{padding: 5px 0; background: #f0f8ff;}
.ileft{padding: 0 12px; text-align: left;}
.icenter{text-align: center;}
.a:has(mark){text-decoration: none;}
.a{
	text-decoration: underline; 
	text-decoration-color: green;
	cursor: pointer;
	}
label{padding: 0 0 0 12px;}
mark{background: springgreen;}
.nom{text-decoration: underline;cursor: pointer;}
.buts button{margin:2px;padding:5px 23px;font-size:20px; cursor:pointer;border-radius:6px;}
.buts span{padding:5px;font-size:20px;}
.alf button{
	margin:2px;
	padding:5px;
	font-size:15px;
	cursor:pointer;
	border-radius:6px;
	}
table{width: 100%;
	background:#e0ffff;
	border-collapse: separate;
	border:4px solid blue;}
.vo{font-size: 30px;}	

img{transform:translate(0,2px)}
[color='red']{display: none;}
[color='blue']{display: none}
.acti { /*подсветка в предбаннике*/
    color: #000; /* Цвет активных ссылок */
	font-weight: bold;
	background-color: lime;
   }
.win{
	margin:0 auto;
	width:80%;
	display: grid; 
	grid-template: 444px / 3fr 2fr;
	border:2px solid white;
	border-radius: 15px 30px 30px 15px;
	}
#ajx0{background: #fed;overflow-y: scroll;border-radius: 15px 0 0 15px;}
#ajx1{margin:44px auto 0;padding: 15px 0;width:90%;background: white;border-radius: 12px;}	
#ajx2{}
#ajx3{}
#ajx4{margin:44px auto 0;width:90%; color: black; background: yellow;}
#ajx5{background: lime; background-image: url(old-ruf.jpg); background-size: cover;border-radius: 0 30px 30px 0;}
	</style>

</head>
<body text="black" bgcolor="white">


<?php
$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//--------------------------------------------   
	$r=mysqli_query($cu,"SELECT * FROM `gru` ORDER BY `ima`"); //
	$num=intval(mysqli_num_rows($r) / 5);//замер базы в страницах	
}
//-----------------------------------
	mysqli_close($cu);  
?>

<header style="margin:0 auto;text-align: center;max-width:666px;">
	<h1>Метрические книги. 1881-1918.</h1>	
	Условные обозначения: 
	<b>R</b>-родился; R-родил; r-воспреемник новорожденного; 
	<b>M</b>-вступил в брак; M-родитель новобрачного; m-свидетель на бракосочетании; 
	<b>D</b>-умер; d-родственник умершего.	
</header>


<section>
	<div class="win">	
		<div id="ajx0"></div>
		<div id="ajx5" style="
		"></div>
	</div>

	<article>
		<div class="buts">
			<button onclick="lev=0;leventer();"> 0 </button>
			<button onclick="lev=(lev>0)?(lev-1):0;leventer();"> &lt; </button>
			<span id="ajx3">0</span>
			<button onclick="lev=(lev<levmax)?(lev+1):levmax;leventer();"> &gt; </button>
			<button onclick="lev=levmax;leventer();"> <? echo $num; ?> </button>
		</div>
		<div class="alf">
			<button onclick="lev=0;leventer();"> А </button>
			<button onclick="lev=0;leventer();"> Б </button>
			<button onclick="lev=0;leventer();"> В </button>
			<button onclick="lev=0;leventer();"> Г </button>
			<button onclick="lev=0;leventer();"> Д </button>
			<button onclick="lev=0;leventer();"> Е </button>
			<button onclick="lev=0;leventer();"> Ж </button>
			<button onclick="lev=0;leventer();"> З </button>
			<button onclick="lev=0;leventer();"> И </button>
			<button onclick="lev=0;leventer();"> К </button>
			<button onclick="lev=1;leventer();"> Л </button>
			<button onclick="lev=1;leventer();"> М </button>
			<button onclick="lev=1;leventer();"> Н </button>
			<button onclick="lev=1;leventer();"> О </button>
			<button onclick="lev=1;leventer();"> П </button>
			<button onclick="lev=1;leventer();"> Р </button>
			<button onclick="lev=2;leventer();"> С </button>
			<button onclick="lev=2;leventer();"> Т </button>
			<button onclick="lev=2;leventer();"> У </button>
			<button onclick="lev=2;leventer();"> Ф </button>
			<button onclick="lev=2;leventer();"> Х </button>
			<button onclick="lev=2;leventer();"> Ц </button>
			<button onclick="lev=2;leventer();"> Ч </button>
			<button onclick="lev=2;leventer();"> Ш </button>
			<button onclick="lev=2;leventer();"> Щ </button>
			<button onclick="lev=2;leventer();"> Э </button>
			<button onclick="lev=2;leventer();"> Ю </button>
			<button onclick="lev=2;leventer();"> Я </button>
		</div>
	</article>
</section>


<section>	
	<div id="ajx1">
	</div>	
	
	
	<div id="ajx4">	
	</div>
</section>

<footer>
По материалам сайта <a href="https://www.familysearch.org" style="color: #ffff00">familysearch.org</a>
</footer>

<script src="jq/jquery-2.1.0.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", ()=>{
	$('#ajx4').load('goat2.php?i=4&t=numr1r');// баня
	$('#ajx1').load('spis2.php?k=1&e=1&pg=0&id=jx4');//п.б	
	});

function leventer(){//текущая страница списа (лев)
	$('#ajx3').load('lev.php?coun1t='+lev);// счетчик
	$('#ajx0').load('spis2.php?k=5&pg='+lev);// лист
	}

var lev=0;// страница ноль

leventer();

var curxx='i';// в списе подсвеченный эл
var levmax=<?php echo "$num" ?>;// страниц в базе групп
var old=0;


function fy(x,n,s,e){// клик на листе
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// баня
	$('#ajx1').load('spis2.php?k=1&e='+e+'&pg='+lev+'&id='
		+x.id.replace("i", "j"));// п/б

	// клик на элементе гарантирует его наличие
	if(old)old.style.backgroundColor='transparent';
	x.style.backgroundColor='lime';
	old=x;	
}


function fb(x,n,s,e,pig){// клик на предбане
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// баня
	$('#ajx0').load('spis2.php?k=5&pg='+pig);// лист
	$('#ajx3').load('lev.php?coun1t='+pig);// счетчик
	lev=pig;// страница
	
	if (!!old) { // освещение в списе
		var u=old.id;
		u=u.replace("j", "i");// по-другому невыйдешь на близнеца
		if(!!document.getElementById(u))// не факт что лев несъебался
			document.getElementById(u).style.backgroundColor='transparent';		
	}
	if (!!x) {//
		var u=x.id.replace("j", "i"); //спис подсвечу			
		if(!!document.getElementById(u)){
		  document.getElementById(u).style.backgroundColor='yellow';//'yellow';
		  curxx=u;
		}
	}
	old=x;
}


function fj(y,n,s,e,pig){//клик на бани
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// баня
	$('#ajx1').load('spis2.php?k=1&e='+e+'&pg='+pig+'&id='+y);// п/б
	$('#ajx0').load('spis2.php?k=5&pg='+pig);// лист
	$('#ajx3').load('lev.php?coun1t='+pig);// счетчик	
	lev=pig;
	
	let u;
	/*
	if (!!old) { // освещение в листе
		u=old.id;// old может только в списе(j нет в имени)
		if(!!document.getElementById(u))// не факт что лев несъебался
		{document.getElementById(u).style.backgroundColor='transparent';		
		}
	}*/
	if(old)old.style.backgroundColor='transparent';
	u=y.replace("j", "i"); //лист подсвечу	
	if(!!document.getElementById(u)){
		  document.getElementById(u).style.backgroundColor='red';//'yellow';//
		  old=document.getElementById(u);
		  curxx=u;
	}	
}
</script>

</body>
</html>



