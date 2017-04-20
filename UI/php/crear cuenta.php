<?php
if (isset($_POST["creCue"])) {
$connection = mysqli_connect('localhost', 'root', '','banca');
$cedula=$_POST['cedula'];
$numCuenta=$_POST['numeroCuenta']; 
$claveCuenta=$_POST['claveCuenta'];
$saldo=$_POST['saldo'];
$query="call buscarCliente('".$cedula."');";
$queryPru="select numero_cuenta from cuenta where numero_cuenta='".$numCuenta."';";
$resultPru=mysqli_query($connection, $queryPru);
$result=mysqli_query($connection, $query);
if (mysqli_num_rows($result)>0 && mysqli_num_rows($resultPru)==0) {
	$connection2 = mysqli_connect('localhost', 'root', '','banca');
	$row=mysqli_fetch_assoc($result);
	$query2="insert into cuenta (Cliente_id, numero_cuenta, clave_cuenta, claveVirtual_cuenta, saldoActual_cuenta)
	values ('".$row['Cliente_id']."','".$numCuenta."','".$claveCuenta."','".$row['claveVirtual_cuenta']."','".$saldo."');";
	mysqli_query($connection2, $query2);
	mysqli_close($connection2);
	mysqli_close($connection);
	header('Location: ../../indexAdmin.html');
}
elseif (mysqli_num_rows($resultPru)>0) {
	echo "<html>";
	echo "<body>";
	echo "<script> alert('Numero de Cuenta Existente') 
	document.location=('../../crearCuenta.html') </script>";
	echo "</body>";
	echo "</html>";
	mysqli_close($connection);
}
else
{
	echo "<html>";
	echo "<body>";
	echo "<script> alert('Cliente No Existe') 
	document.location=('../../crearCuenta.html') </script>";
	echo "</body>";
	echo "</html>";
	mysqli_close($connection);
}
};
?>