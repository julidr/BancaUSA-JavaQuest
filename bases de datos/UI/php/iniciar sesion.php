<?php
session_start();
if (isset($_POST["inicioSe"])) {
$connection = mysqli_connect('localhost', 'root', '','banca');
$numeroUsuario=$_POST["cedula"];
$claveVir=$_POST["pwd"];
if ($numeroUsuario=="TheCoolAdmin" && $claveVir=="JuFeSte") {
	header('Location: ../../indexAdmin.html');
}
else
{
	$query="call iniciarSesion('".$numeroUsuario."','".$claveVir."');";
	$result=mysqli_query($connection, $query);
	$row=mysqli_fetch_assoc($result);
	if ($row['val']==1) {
		$_SESSION['usuario']=$row['nombre']." ".$row['apellido'];
		$_SESSION['id']=$_POST["cedula"];
		header('Location: ../../indexCliente.php');
		
	}
	else
	{
		echo "<html>";
	echo "<body>";
	echo "<script>";
	echo "alert('El Usuario No Existe o la Contraseña esta Mal escrita');";
	echo "document.location=('../../index.html')";
	echo "</script>";
	echo "</body>";
	echo "</html>";
	}

};
mysqli_close($connection);
};
?>