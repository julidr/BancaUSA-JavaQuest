<?php
$connection = mysqli_connect('localhost', 'root', '','banca');
$query="select clave_cuenta from cuenta where numero_cuenta='".$_POST['selCue']."'";
$result=mysqli_query($connection, $query);
$row=mysqli_fetch_assoc($result);
if ($row['clave_cuenta']==$_POST['claveAntigua']) {
	$connection2 = mysqli_connect('localhost', 'root', '','banca');
	$query2="update cuenta set clave_cuenta='".$_POST['claveNueva']."' where numero_cuenta='".$_POST['selCue']."';";
	$result=mysqli_query($connection2, $query2);
	mysqli_close($connection2);
	echo "Cambio Exito";
	header('location: ../../miPerfil.php');
}
else
{
	echo "<html>";
	echo "<body>";
	echo "<script>";
	echo "alert('la Clave de la Cuenta es erronea');";
	echo "document.location=('../../cambioVirtual.php')";
	echo "</script>";
	echo "</body>";
	echo "</html>";
}
mysqli_close($connection);

?>
