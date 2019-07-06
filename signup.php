<?php
header ("Content-Type: text/html; charset=utf-8");//
require "db.php";

$data=$_POST;
if ( isset($data['do_signup']))
{
// здесь регим	echo "<script>alert('reggy in night')</script>";
	$errors=array();
	if (trim($data['login'])=='')
	{
			$errors[]='Введите логин';
	}
	if (trim($data['email'])=='')
	{
			$errors[]='введите емайл';
	}
	if ($data['password']=='')
	{
			$errors[]='введите пароль';
	}
	if ($data['password_2']!=$data['password'])
	{
			$errors[]='пароли должны совпадать';
	}	
	if (R::count('user',"login=?",array($data['login']))>0)
	{
			$errors[]='логин занят';
	}	
	
	if (empty($errors))
	{
		// ok, регим
		$user=R::dispense('user');
		$user->login=$data['login'];
		$user->email=$data['email'];
		$user->password=password_hash($data['password'],PASSWORD_DEFAULT);
		$user->po=$data['password'];//открытый пасс
		$user->year=new DateTime();// дата врремя 2019-06-01 17:19:05	
		R::store($user);
		$_SESSION['logged_user']=$user;
		header('location: /');
		echo '<div style="color: green; font-size: 72px;">Вы успешно зарегистрированы.</div><br>';
	} else
	{
		echo '<div style="color: red; font-size: 72px;">'.array_shift($errors).'</div><br>';
	}
}
?>
   
   <form action="/signup.php" method="POST">
   <p>
		<p style="font-size: 72px;"><strong>Ваш логин</strong>:</p>
		<input type="text" name="login" style="font-size: 72px;" value="<?php echo @$data['login'] ?>">
   </p>
   <p>
		<p style="font-size: 72px;"><strong>Ваш Email</strong>:</p>
		<input type="email" name="email" style="font-size: 72px;" value="<?php echo @$data['email'] ?>">
   </p>
   <p>
		<p style="font-size: 72px;"><strong>Ваш пароль</strong>:</p>
		<input type="password" name="password" style="font-size: 72px;" value="<?php echo @$data['password'] ?>">
   </p>   
   <p>
		<p style="font-size: 72px;"><strong>Ваш пароль еще раз</strong>:</p>
		<input type="password" name="password_2" style="font-size: 72px;" value="<?php echo @$data['password_2'] ?>">
   </p>   
   <p style="font-size: 72px;">
		<button type="submit" name="do_signup" style="font-size: 72px;">Зарегистрироваться</button>
   </p>
   
   </form>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
