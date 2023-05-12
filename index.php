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
	<title>Metrix</title>
	<style>

*:not(hr), *::after, *::before {box-sizing: border-box;margin:0;padding:0;border:0}ul {list-style-type: none}
body{padding: 33px 0;background-image: linear-gradient(rgba(0,0,0,0.9), #013301); 
	background-color: #013301;
	background-repeat: no-repeat;
	text-align: center;
	color: white; font-family: sans-serif;
	}
.d3{padding: 0 22px;text-align: left;color: black;}
.d3:nth-child(odd){background:white;}
.d3:nth-child(even){background:#fed;}
#ajx0 .d3:hover{background: cyan;}
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
	grid-template: 145px 80px/ 3fr 3fr;
	border:2px solid white;
	border-radius: 15px 30px 0px 15px;
	}
#ajx0{background: #fed;overflow-y: scroll;border-radius: 15px 0 0 0;}
#ajx1{padding: 15px 0;background: white;border-radius: 0 0 0 12px;
	display:flex;align-items:center;border-top:2px solid purple;}	
#ajx2{}
#ajx3{}
#ajx4{margin:4px auto 0;max-width:1080px; color: black; background: yellow;}
#ajx5{background: #013301; background-image: url(sign00.jpg); 
	background-size: cover;border-radius: 0 30px 0 0;
	background-position: center center;}
#ajx6{overflow-y: scroll; color: black;background: #fed;border-radius: 0 0 0px 0;}
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


	<article>

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
			<button onclick="lev=1;leventer();"> К </button>
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
		<div class="buts">
			<button onclick="lev=0;leventer();"> 0 </button>
			<button onclick="lev=(lev>0)?(lev-1):0;leventer();"> &lt; </button>
			<span id="ajx3">0</span>
			<button onclick="lev=(lev<levmax)?(lev+1):levmax;leventer();"> &gt; </button>
			<button onclick="lev=levmax;leventer();"> <? echo $num; ?> </button>
		</div>		
	</article>
	<div class="win">	
		<div id="ajx0"></div>
		<div id="ajx5"></div>
		<div id="ajx1"></div>
		<div id="ajx6">Стихия, которая покровительствует Быку, может смягчать или усиливать его качества. Всего в восточном гороскопе пять стихий, у каждой свой характер и преимущества (огонь, вода, металл, дерево, земля). Бык — символ трудолюбия и выносливости, терпения и упорства.</div>
	</div>
</section>


<section>	
		
	
	
	<div id="ajx4">	
	</div>
</section>

<footer>
По материалам сайта <a href="https://www.familysearch.org" style="color: #ffff00">familysearch.org</a>
</footer>

<footer id="wanted">4</footer>

<script src="jq/jquery-2.1.0.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", ()=>{
	$('#ajx4').load('goat2.php?i=4&t=numr1r');// баня
	$('#ajx1').load('spis2.php?k=1&e=1&pg=0&id=ix4');//п.б	
	$('#ajx0').load('spis2.php?k=5&pg=0&id=ix4');// лист	
	});

function leventer(){//текущая страница списа (лев)
	$('#ajx3').load('lev.php?coun1t='+lev);// счетчик
	$('#ajx0').load('spis2.php?k=5&pg='+lev+'&id='+wanted.innerHTML);// лист
	}

var lev=0;// страница ноль

leventer();


var levmax=<?php echo "$num" ?>;// страниц в базе групп



function fy(x,n,s,e){// клик на листе
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// баня
	$('#ajx1').load('spis2.php?k=1&e='+e+'&pg='+lev+'&id='+x.id);// п/б
	$('#ajx0').load('spis2.php?k=5&pg='+lev+'&id='+x.id);// лист		
}


function fb(x,n,s,e,pig){// клик на предбане
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// баня
	$('#ajx1').load('spis2.php?k=1&e='+e+'&pg='+pig+'&id='+x.id);// п/б	 
	$('#ajx0').load('spis2.php?k=5&pg='+pig+'&id='+x.id);// лист
	$('#ajx3').load('lev.php?coun1t='+pig);// счетчик
	lev=pig;// страница
}


function fj(y,n,s,e,pig){//клик на бани
	$('#ajx4').load('goat2.php?i='+n+'&t='+s);// баня
	$('#ajx0').load('spis2.php?k=5&pg='+pig+'&id='+y);// лист
	$('#ajx1').load('spis2.php?k=1&e='+e+'&pg='+pig+'&id='+y);// п/б	
	$('#ajx3').load('lev.php?coun1t='+pig);// счетчик	
	lev=pig;
}
</script>

</body>
</html>



