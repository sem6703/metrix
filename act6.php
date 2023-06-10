<?php
header ("Content-Type: text/html; charset=utf-8");

include 'var6.php';
// вход тип акта
// добавление акта

$cu=mysqli_connect("127.0.0.1","root","",$cubd);// см в include 'var6.php'
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//-------------------------------------------- 

	$type=(isset($_POST['type']))?($_POST['type']):'3';		
	$god='1918';
	$kok=mysqli_query($cu,"SELECT * FROM `acts`");
	$n=mysqli_num_rows($kok)+1;

	if($type==1)$txt=
'				<tr>\r\n				<td bgcolor="white" class="icenter">\r\n				<a href="sign00.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n				</svg></a><br>\r\n				</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="vo"><mark>xXx</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<mark>xXx</mark><br>\r\n				и законная жена его<br>\r\n				<mark>xXx</mark><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <mark>xXx</mark><br>\r\n				крестьянская девица <mark>xXx</mark></td></tr>';	
	
	if($type==2)$txt=
'				<tr><td bgcolor="white" class="icenter">\r\n				<a href="sign00.jpg" target="_blank" style="cursor: pointer;">\r\n				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n		  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>\r\n		  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>\r\n				</svg></a><br>				\r\n				</td><td>15</td><td><b> 10 нояб 1914</b></td><td class="ileft">\r\n				села крестьянин\r\n				<h4><mark>xXx</mark></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td>\r\n				<h2>18</h2>p.1896</td><td class="ileft">\r\n				временно-проживающая в селе крестьянская девица\r\n				<h4><mark>xXx</mark></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td><h2>16</h2>p.1897</td><td class="ileft">\r\n				<strong>по жениху:</strong>\r\n				села крестьяне <mark>xXx</mark><br>\r\n				<mark>xXx</mark><br>\r\n				<strong>по невесте:</strong>\r\n				села крестьяне <mark>xXx</mark><br>\r\n				<mark>xXx</mark><br>\r\n				</td></tr>';
	if($type==3)$txt=
'				<tr><td bgcolor="white" class="icenter">\r\n					<a href="sign00.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n						</svg>\r\n					</a></td>\r\n				<td></td><td>29</td><td>4 сент 1900</td><td>6</td><td class="ileft">\r\n				д билетного солдата<br>\r\n				<mark>xXx</mark><br>\r\n				дочь<br>\r\n				<span class="vo"><mark>xXx</mark></span><br>\r\n				</td><td></td><td><span class="vo">1г2м</span></td><td>от коклюша<br><br></td></tr>';
	$fot='sign01.jpg';
	$code='r';
	if($type==2)$code='m';
	if($type==3)$code='d';
		
	$s="INSERT `acts` (god,txt,fot,code,type) VALUES ('$god','$txt','$fot','$code','$type')";
	$kok=mysqli_query($cu,$s);

//----------------------------------
	mysqli_close($cu); 
}	
?>
