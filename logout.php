<?php
header ("Content-Type: text/html; charset=utf-8");
require "db.php";
// quit 
unset($_SESSION['logged_user']);
header('location: /');
?>