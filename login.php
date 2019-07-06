<?php
header ("Content-Type: text/html; charset=utf-8");
require "db.php";

$data=$_POST;
if ( isset($data['do_login']))
{
// здесь логиним
	$errors=array();
	$user=R::findOne('user','login = ?',array($data['login']));
	if ($user)
	{
		if (password_verify($data['password'],$user->password))
		{
			//ok, логиним
			$_SESSION['logged_user']=$user;
			
		} else
		{
			$errors[]=$data['password'].' Неверный пароль';
		}
		
	} else
	{
		$errors[]=$data['login'].' Пользователь не найден';
	}
		
	


	if (empty($errors))
	{
		header('location: /');
		echo '<div style="color: green;">Вы успешно зашли.</div><br>';
		
	} else
	{
		echo '<div style="color: red;">'.array_shift($errors).'</div><br>';
	}
}

?>

   <form action="/login.php" method="POST">
   <p>
		<strong  style="font-size: 72px;">Логин</strong>:
		<input type="text" name="login" style="font-size: 72px;" value="<?php echo @$data['login'] ?>">
        <br>
		<strong  style="font-size: 72px;">Пароль</strong>:
		<input type="password" name="password" style="font-size: 72px;" value="<?php echo @$data['password'] ?>">
		<br>
		<button type="submit" name="do_login" style="font-size: 72px;">Войти</button>
   </p>    
   </form>














