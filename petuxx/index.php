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
.palec{cursor: pointer;text-decoration: none;
border-bottom:1px solid black;
}
td{border:1px solid navy;}
.ihead{padding: 5px 0; background: #f0f8ff}
.ileft{padding: 0 12px; text-align: left;}
.icenter{text-align: center;}
mark{}
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
		border:4px solid blue;}
.vo{font-size: 30px;}	

img{transform:translate(0,2px)}
[color='red']{display: none;}
[color='blue']{display: none}

	</style>

</head>
<body text="black" bgcolor="white">


<?php
$cu=mysqli_connect("127.0.0.1","root","","kura24");
if (!$cu){
	echo 'здесь могла быть ваша ава';	
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
Условные обозначения: <b>R</b>-родился; R-родил; r-воспреемник новорожденного; <b>M</b>-вступил в брак; M-родитель новобрачного; m-свидетель на бракосочетании; <b>D</b>-умер; d-родственник умершего.	
	</header>


<section>
	<div style="
	margin:0 auto;
	width:80%;
	display:grid; 
	grid-template: 444px / 3fr 2fr;
	border:2px solid white;
	border-radius: 15px 30px 30px 15px;
	">
	
<!-- <div id="ajx0"> o</div> -->
	<div id="ajx0" style="background: #fed;overflow-y: scroll;border-radius: 15px 0 0 15px;"></div>
	<div style="background: lime; background-image: url(old-ruf.jpg); background-size: cover;
	border-radius: 0 30px 30px 0;
	"></div>
	</div>

<article>
<div class="buts">
<button onclick="lev=0;leventer();"> 0 </button>
<button onclick="lev=(lev>0)?(lev-1):0;leventer();"> &lt; </button>
<span id="ajx3" style="background:red;">0</span>
<button onclick="lev=(lev<levmax)?(lev+1):levmax;leventer();"> &gt; </button>
<button onclick="lev=levmax;leventer();"> <? echo $num; ?> </button>
</div>
<div class="alf">
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
</div>
</article>
</section>


<section>	
	 <div id="ajx1" style="margin:44px auto 0;padding: 15px 0;width:90%;background: white;border-radius: 12px;">
		<div class="d3 p8" id="di3"> <tt>3. </tt> 
		<span onclick="fy(this,3, 'numr202d7r',3);" class="nom">Лякина Пераскева Андреева</span> 
		<label>
		 <a class="palec" title="1899 Анна |as: Лякина Пераскева Андреева" id="ix9798" onclick="fy(this,3, 'numr202d7r',3);"><b>R</b></a>
		 <a class="palec" title="1900 Васса |as: Лякина Пераскева Андреева" id="ix9799" onclick="fy(this,3, 'numr62d7r',3);"><b>R</b></a>
		 <a class="palec" title="1902 Анна |as: Лякина Пераскева Андреева" id="ix9800" onclick="fy(this,3, 'numr660d8r',3);"><b>R</b></a>
		 <a class="palec" title="1903 Василий |as: Лякина Пераскева Андреева" id="ix9801" onclick="fy(this,3, 'numr588d8r',3);"><b>R</b></a>
		 <a class="palec" title="1905  |as: Лякина Пераскева Андреева" id="ix9802" onclick="fy(this,5, 'numr37p1905r',3);"><b>r</b></a>
		 <a class="palec" title="1907 Петр |as: Лякина Параскева Андреева" id="ix9803" onclick="fy(this,3, 'numr136p1905r',3);"><b>R</b></a>
		 <a class="palec" title="1909 Анна |as: Лякина Пераскева Андреева" id="ix9804" onclick="fy(this,3, 'numr283d8r',3);"><b>R</b></a>
		 <a class="palec" title="1911 Александр |as: Лякина Пераскева Андреева" id="ix9805" onclick="fy(this,3, 'numr284p1905r',3);"><b>R</b></a>
		 <a class="palec" title="1912   |as: Лякина Пераскева Андреева" id="ix9806" onclick="fy(this,3, 'numr185d8r',3);"><b>R</b></a>
		</label> 
		</div>
	</div>	
	
	
	<div id="ajx4" style="margin:44px auto 0;width:90%; color: black; background: red;">	
	</div>
</section>



<script src="jq/jquery-2.1.0.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", ()=>{
	$('#ajx4').load('goat2.php?i=4&t=numr1r');// баня
	$('#ajx1').load('spis.php?k=1&e=1&pg=0&id=jx4');//лист	
	});

function leventer(){//текущая страница списа (лев)
///alert('xa'+lev+'xa'+levmax+'xa');
	$('#ajx3').load('lev.php?coun1t='+lev);//'+lev);//
	$('#ajx0').load('spis.php?k=5&pg='+lev);
	}

var lev=0;// страница ноль

leventer();
</script>
<script>
var curxx='i';// в списе подсвеченный эл
var levmax=<?php echo "$num" ?>;// страниц в базе групп
var oldxx=0;
function fy(x,n,s,e){
	
	//alert(x,' ',n,' ',s,' ',e);
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

</body>
</html>



