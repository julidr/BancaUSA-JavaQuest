<?php
	$connection2 = mysqli_connect('localhost', 'root', '','banca');
		$query0="call trans4('".$_POST["selCue"]."','".$_POST["claveV"]."','".$_POST["numeroCuenta"]."','".$_POST["monto"]."','6',@num);";
		$result=mysqli_query($connection2, $query0);

		$row=mysqli_fetch_assoc($result);
		if ($row['num']=="1")
		{
			 echo "<html>";
			echo "<body>";
			echo "<script>";
			echo "alert('El Numero de Cuenta Destino No Existe');";
			echo "document.location=('../../../pagoPrestamos.php')";
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
			echo "document.location=('../../../pagoPrestamos.php')";
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
			echo "document.location=('../../../pagoPrestamos.php')";
			echo "</script>";
			echo "</body>";
			echo "</html>";
			mysqli_close($connection2);
		}
		elseif ($row['num']==5) {
			echo "<html>";
			echo "<body>";
			echo "<script>";
			echo "alert('No es ningun credito');";
			echo "document.location=('../../../pagoPrestamos.php')";
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