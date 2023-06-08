<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/x-icon" href=
  
"data:image/gif;base64,R0lGODlhEAAQAPcAAP///7O2srC5tZqqpZiqpoeZlq69vay5uam2tqizs6WyraOuqri7uLrKxay6sbG7s7C8t7C6to2on0d9bEdsY1NoZZypqrG9vKi1s6e0raWwrLq9vL/Dv7O1r7O3sq24tLO4trrCv215dl2DeTBCQWR6eKW3t6a1sqq1rqmzrbrBvKO0rMLGwMC+t7O6sK23sLa4tYiOjUNXU8nV1cnZ2LfGw6y4tK20rqm0rbvFvUVkWlNybH+Iiayyp8DEvMLFwLbWySs3N1ZtabnGxaazsKaxrKexraSvqqewqLi/unmFgFNraSo9PT5fWUdpYWmAeY/FsiYsLEpiWr/HxLC5tKqyraWuqaKuoKezp7W5sra4sLu/uU5hXT5VUylAP15ybnmpmzA6O1Z1bWBuaJmknLfBubnCvrC8s6u2r7i9ta+yqK20qZ2hmn6Nhi9HQ156cWyYjT5JSkhZWTVGQzZLSD1TT2B0cG2Lgq+6s7m/tquyqKStoqmvo7K2q5ammmyJgnKbj0NZVztMSys9OyM5NyE4ODdJRFp6ba+6sbnBuK21q6Wuoaatoqquo6Kso3ORiWqXik5mY3yKiltxa6Ovp6+8sbjHu7LAt7rDua+2qqSsoKeso6asoqeuppKfmF6HfDdQS52qqIehl7zGwbW/urbAurG+tbG+tLzDurK2rKWsoKiwpaixpqy2qry+tHGZjF9sZ8DHwZilnrS7trHBuLLBurK+t7K9s7m8tLCzqq+zqK6zpqyxpry9smWbkF5lY7rDu6exq7C8tLfDu7fDurG+sra9tay0rK+zqrO0q6ispLa4rmaTiG5zbrbBt6ewp666sbK9trbDu7nDurK+sbfAua63s662r7G3sKmxqbG0q1l9dIB+e7W/t6q0rK27sLG8srPDtbG/sa+4q7G5uq+4tq+2sa60rKqxqX+WjKKtpa24rKu1q6m0qAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewAAACwAAAAAEAAQAAAI/wABMNigIkeSLGnyJMKECoBDhw04rNChRIsaPYoypcJlrJpDBx1Y7FiyZc2eRZpU5TpmjRyABx5a8GDChQ0fRptW6UJ2rVwACB9c9GjSpU2fRpxY7UqGzZyACCBe+HDixY0fR51a8VKW7dwACSFg/Hjy5c2fR55c9VqmDR2BCSJiAIECBg4gSJ9e+WK2LV0BCiNkBIkSJk6gSKBg/WrGTZ2BCiRmCJEiRo4gSaFiAXPWbd0BCyVoDJkyZs6gSaJkBXvmjR2CCyZqEKFChg4hSqNmCYP2rV0CDCdsFKlSpk6hSqRo0YoGDoCCDChuGLFixo4hS6VqDZMWDsACDSlwHB25cubOoUumbBGbJu6hQyRY0OBBdObUrWLUxgEICAA7">

  <title>BD</title>
  <style>
  *:not(hr), *::after, *::before {font-family: sans-serif; box-sizing: border-box;margin:0;padding:0;border:0}ul {list-style-type: none}
table{margin: 4px auto;}  
tr:first-child{background:blue;color:white; font-weigth:900;}
td{padding: 4px;border:1px solid teal;}
h1,h2{text-align:center;}
table{margin: 4px auto;}  
table:nth-child(4n+1){border:3px solid black;}
table:nth-child(4n+3){border:3px solid purple;}
  </style>  
</head>
<body text="black" bgcolor="white">
<h1>База данных состоит из шести таблиц.</h1>
<?php
//header ("Content-Type: text/html; charset=utf-8");

// вход тип акта
// добавление акта

$cu=mysqli_connect("127.0.0.1","root","","pet3");
if (!$cu){
	echo 'база ноу коннект';	
}else{
//----------------------------------
	mysqli_query($cu,"SET NAMES utf8"); 
//-------------------------------------------- 
		function rec($cu, $s){// читать запись
			$e=mysqli_query($cu,$s);		
			return mysqli_fetch_assoc($e);
		}
//*************************************

echo "<h2>ava</h2>";		
echo "<table cellspacing='0'><tr>";
$a=array('id','g','act','god','coop','he','role','svet','bj');

foreach ($a as $i){	

	echo "<td  style=''>"
	.$i
	.'</td>';
}
echo '</tr>';

	$kok=mysqli_query($cu,"SELECT * FROM `ava`");
	while ($i=mysqli_fetch_assoc($kok)){
echo "<tr><td>"
.$i['id']
."</td><td>"
.$i['g']
."</td><td>"
.$i['act']
."</td><td>"
.$i['god']
."</td><td>"
.$i['coop']
."</td><td>"
.$i['he']
."</td><td>"
.$i['role']
."</td><td>"
.$i['svet']

."</td><td>"
.$i['bj']

."</td></tr>";

	}
echo "</table>";	
//**************************** таблица 2
echo "<h2>grz</h2>";
echo "<table cellspacing='0'><tr>";
$a=array('id','nom','fot','txt','usa');
foreach ($a as $i){
	echo "<td>"
	.$i
	.'</td>';
}
echo '</tr>';

	$kok=mysqli_query($cu,"SELECT * FROM `grz`");
	while ($i=mysqli_fetch_assoc($kok)){
echo "<tr><td>"
.$i['id']
."</td><td>"
.$i['nom']
."</td><td>"
.$i['fot']
."</td><td>"
.$i['txt']
."</td><td>"
.$i['usa']
."</td></tr>";
	}
echo "</table>";		
//**************************** таблица 3
echo "<h2>acts</h2>";
echo "<table cellspacing='0'><tr>";
$a=array('id','god','txt','fot','fam','code','type','tc');
foreach ($a as $i){
	echo "<td>"
	.$i
	.'</td>';
}
echo '</tr>';

	$k=mysqli_query($cu,"SELECT * FROM `acts`");
	while ($i=mysqli_fetch_assoc($k)){
echo "<tr><td>"
.$i['id']
."</td><td>"
.$i['god']
."</td><td style=''>"
.htmlspecialchars(substr($i['txt'],0,20))
."</td><td>"
.$i['fot']
."</td><td>"
.$i['fam']
."</td><td>"
.$i['code']
."</td><td>"
.$i['type']
."</td><td>"
.$i['tc']


."</td></tr>";
	}
echo "</table>";		
//**************************** таблица 4
echo "<h2>fote</h2>";
echo "<table cellspacing='0'><tr>";
$a=array('id','img','who');
foreach ($a as $i){
	echo "<td>"
	.$i
	.'</td>';
}
echo '</tr>';

	$k=mysqli_query($cu,"SELECT * FROM `fote`");
	while ($i=mysqli_fetch_assoc($k)){
echo "<tr><td>"
.$i['id']
."</td><td>"
.htmlspecialchars(substr($i['img'],0,20))
."</td><td>"
.$i['who']
."</td></tr>";
	}
echo "</table>";		
//**************************** таблица 5
echo "<h2>head</h2>";
echo "<table cellspacing='0'><tr>";
$a=array('id','hat','code');
foreach ($a as $i){
	echo "<td>"
	.$i
	.'</td>';
}
echo '</tr>';

	$k=mysqli_query($cu,"SELECT * FROM `head`");
	while ($i=mysqli_fetch_assoc($k)){
echo "<tr><td>"
.$i['id']
."</td><td>"
.htmlspecialchars(substr($i['hat'],0,20))
."</td><td>"
.$i['code']
."</td></tr>";
	}
echo "</table>";		
//**************************** таблица 6
echo "<h2>koys</h2>";
echo "<table cellspacing='0'><tr>";
$a=array('id','g');
foreach ($a as $i){
	echo "<td>"
	.$i
	.'</td>';
}
echo '</tr>';
		
echo "</table>";		
	
//----------------------------------
	mysqli_close($cu); 
}	

?>

</body>
</html>


