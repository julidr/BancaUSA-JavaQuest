<?php
if (isset($_POST["crePrestamo"])) {
$connection = mysqli_connect('localhost', 'root', '','banca');
$connection3 = mysqli_connect('localhost', 'root', '','banca');
$numCuenta=$_POST['numeroCuenta'];
$tipoCredito=$_POST['tipoCredito'];
$Monto=$_POST['Monto'];
$descrip=$_POST['descripcionPrestamo'];
$limite=$_POST['limiteTarjeta'];
$cuota=$_POST['numCuota'];
$numTaPre=$_POST['numTaPre'];
$query1="select Cuenta_id, numero_cuenta from cuenta where numero_cuenta='".$numCuenta."';";
$queryPru="select numero_credito from credito where numero_credito='".$numTaPre."';";
$resultPru=mysqli_query($connection3, $queryPru);
$result1=mysqli_query($connection, $query1);
if (mysqli_num_rows($result1)>0 && mysqli_num_rows($resultPru)==0) {
	$connection2 = mysqli_connect('localhost', 'root', '','banca');
	$row1=mysqli_fetch_assoc($result1);
	$query2="insert into credito (tipo_credito,monto_credito, descripcion_credito, limiteTarjeta, Cuenta_id, cuota, numero_credito)
	values ('".$tipoCredito."','".$Monto."','".$descrip."','".$limite."','".$row1['Cuenta_id']."','".$cuota."','".$numTaPre."');";
	mysqli_query($connection2, $query2);
	mysqli_close($connection2);
	mysqli_close($connection);
	header('Location: ../../indexAdmin.html');
}
elseif (mysqli_num_rows($resultPru)>0) {
	echo "<html>";
	echo "<body>";
	echo "<script> alert('Numero de Tarjeta o Prestamo ya Existe') 
	document.location=('../../crearCredito.html') </script>";
	echo "</body>";
	echo "</html>";
	mysqli_close($connection);
}
else
{
	echo "<html>";
	echo "<body>";
	echo "<script> alert('Numero de Cuenta No Existe') 
	document.location=('../../crearCredito.html') </script>";
	echo "</body>";
	echo "</html>";
	mysqli_close($connection);
}
};
?>