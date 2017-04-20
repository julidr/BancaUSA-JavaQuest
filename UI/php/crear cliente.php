<?php
if (isset($_POST["creCli"])) {
$connection = mysqli_connect('localhost', 'root', '','banca');
$cedula=$_POST["cedula"];
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$direccion=$_POST["direccion"];
$telefono=$_POST["telefono"];
$email=$_POST["email"];
$numeroCuenta=$_POST["numeroCuenta"];
$claveCuenta=$_POST["claveCuenta"];
$claveVirtual=$_POST["claveVirtual"];
$saldo=$_POST["saldo"];
$tipoPre=$_POST["tipoPre"];
$resPre=$_POST["resPre"];
$queryPru="select cedula_cliente from cliente where cedula_cliente='".$cedula."';";
$queryPru2="select numero_cuenta from cuenta where numero_cuenta='".$numeroCuenta."';";
$result=mysqli_query($connection, $queryPru);
$result2=mysqli_query($connection, $queryPru2);
if (mysqli_num_rows($result)>0) {
	echo "<html>";
	echo "<body>";
	echo "<script> alert('Usuario Ya Existe') 
	document.location=('../../crearCliente.html') </script>";
	echo "</body>";
	echo "</html>";
}
elseif (mysqli_num_rows($result2)>0) {
	echo "<html>";
	echo "<body>";
	echo "<script> alert('Numero de Cuenta Ya Existe') 
	document.location=('../../crearCliente.html') </script>";
	echo "</body>";
	echo "</html>";
}
else
{
	$query="insert into cliente (cedula_cliente, nombre_cliente, apellido_cliente, direccion_cliente, telefono_cliente, email_cliente) values ("."'".$cedula."','".$nombre."','".$apellido."','".$direccion."','".
 	$telefono."','".$email."')";
	$query2="insert into cuenta (Cliente_id, numero_cuenta, clave_cuenta, claveVirtual_cuenta, saldoActual_cuenta)
	values ("."LAST_INSERT_ID(),'".$numeroCuenta."','".$claveCuenta."','".$claveVirtual."','".$saldo."');"; 
	$query3="insert into pregunta (tipo_pregunta, respuesta_pregunta, Cuenta_id)
	values ('".$tipoPre."','".$resPre."', LAST_INSERT_ID())";
	mysqli_query($connection, $query);
	mysqli_query($connection, $query2);
	mysqli_query($connection, $query3);
	mysqli_close($connection);
	header('Location: ../../indexAdmin.html');
}
};
?>