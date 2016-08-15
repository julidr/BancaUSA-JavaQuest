<?php
	$connection2 = mysqli_connect('localhost', 'root', '','banca');
		$query0="call trans3('".$_POST["selCue"]."','".$_POST["clave"]."','".$_POST["monto"]."','".$_POST["nombreEmpresa"]."','".$_POST["numeroRecibo"]."','5',@num);";
		$result=mysqli_query($connection2, $query0);
		$row=mysqli_fetch_assoc($result);
		if ($row['num']=="1")
		{
			 echo "<html>";
			echo "<body>";
			echo "<script>";
			echo "alert('El Numero de Cuenta Destino No Existe');";
			echo "document.location=('../../../pagoServicios.php')";
			echo "</script>";
			echo "</body>";
			echo "</html>";
			mysqli_close($connection2);
		}
		elseif ($row['num']==2) {
			echo "<html>";
			echo "<body>";
			echo "<script>";
			echo "alert('Clave Erronea');";
			echo "document.location=('../../../pagoServicios.php')";
			echo "</script>";
			echo "</body>";
			echo "</html>";
			mysqli_close($connection2);
		}
		elseif ($row['num']==3) {
			echo "<html>";
			echo "<body>";
			echo "<script>";
			echo "alert('No Hay Dinero Suficiente');";
			echo "document.location=('../../../pagoServicios.php')";
			echo "</script>";
			echo "</body>";
			echo "</html>";
			mysqli_close($connection2);
		}
		else
		{
			mysqli_close($connection2);
			header('Location: ../../../transferencias.php');
		}

?>