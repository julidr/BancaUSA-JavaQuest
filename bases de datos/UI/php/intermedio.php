<?php 
	session_start();
	$_SESSION['numIden']=$_POST['documento'];
	echo $_SESSION['numIden'];
	header('Location: consulta cuenta.php');
?>