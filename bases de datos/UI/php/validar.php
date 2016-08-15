<?php
if (isset($_POST["transfe"])) {

	$tipoOpcion=$_POST["opcion"];
	if ($tipoOpcion==1) {
		header('Location: ../../consignacion.php');
	}
	if ($tipoOpcion==2) {
		header('Location: ../../retiro.php');
	}
	if ($tipoOpcion==3) {
		header('Location: ../../transferenciaCuenta.php');
	}
	if ($tipoOpcion==4) {
		header('Location: ../../pagoTarjeta.php');
	}
	if ($tipoOpcion==5) {
		header('Location: ../../pagoServicios.php');
	}
	if ($tipoOpcion==6) {
		header('Location: ../../pagoPrestamos.php');
	}
};
?>