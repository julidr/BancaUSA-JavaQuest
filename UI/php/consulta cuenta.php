<!DOCTYPE html>
<html>
<head>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  	<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
  	<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
	<META NAME="Author" CONTENT="P. Steven Puerto Montaño, Juliana Diaz, Felix Moreno">
	<title>BancaUSA.com</title>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="../CSS/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="../CSS/bootstrap-theme.min.css">

	<!-- Latest compiled and minified JavaScript -->
	<script src="ui/js/bootstrap.min.js"></script>

	<!--Icono-->
	<link rel="SHORTCUT ICON" href="..\Img\Pestaña.png">

	<!--estilo-->
	<link rel="stylesheet" type= "text/css" href="..\CSS\Style2.css">
	<script type="text/javascript" src="../JS/clock.js"></script>
</head>
<body>	
	<?php 
	session_start();
	$connection = mysqli_connect('localhost', 'root', '','banca');
	$connection2 = mysqli_connect('localhost', 'root', '','banca');
	$query="call consultaCuenta('".$_SESSION['numIden']."');";
	$result=mysqli_query($connection, $query);
	if (mysqli_num_rows($result)>0) {
		$row=mysqli_fetch_assoc($result);
		$_SESSION['id']=$row['cedula_cliente'];
	}
	else
	{
		echo "<script> alert('Cliente No Existe') 
		document.location=('../../estadoCuenta.html') </script>";
		mysqli_close($connection);
	}
	mysqli_close($connection);
	?>
	<div id = "head">
		</div>
		<div id = "menu">
			<ul class="nav nav-pills">
		  		<li role="presentation" class="active"><a href="consulta cuenta.php"><img src="../Img/consultaEstado.png" id="icons">&nbsp Estado de Cuenta</a></li>
				<li role="presentation"><a href="../../estadoCuenta.html"><img src="../Img/volver.png" id="icons">&nbspVolver</a></li>
				<li role="presentation" id="clockbox"></li>
			</ul>
		</div>
	<div id = "container">
	<div id="contenido">
		<br>
		<label><u>Nombre: </u></label> <label id="nombreCliente"><?php echo " ".$row['nombre_cliente'];?></label><br>
		<label><u>Apellido: </u></label><label id="apellidoCliente"><?php echo " ".$row['apellido_cliente'];?></label><br>
		<label><u>Cedula: </u></label><label id="cedulaCliente"><?php echo " ".$row['cedula_cliente'];?></label><br><br>
		<div id="informacion"class="row">
			<frameset>
			<legend>Cuenta</legend>
			<div id="tablaCuentas">
					<table class="table">
						<thead>
		      				<tr>
		       					<th>Numero Cuenta</th>
		       					<th>Saldo Disponible</th>
		       					<th>Mas detalles</th>
		      				</tr>
		      				<br>
		      				<form id="formDetalles" role="form" method="Post" action="cuentaDetalle.php">
							<?php

									for ($i=0; $i <mysqli_num_rows($result); $i++) { 
										echo "<tr><td>".$row['numero_cuenta']."</td>";
										echo "<td>".$row['saldoActual_cuenta']."</td>";
										echo "<td><button type='submit' name='Detalles' value='".$row['Cuenta_id']."'>Mas Detalles</button></td></tr>";
										$row = mysqli_fetch_assoc($result);					
									}
							?>
						</form>
						</thead>
						<tbody>
						</tbody>
					</table>
			<div id="bot">
			<hr>
			<p>Copyright © 2015. Todos los derechos reservados.</p>
		</div>
				</div>
		</div>
     

    </div>
	</div>
</body>
</html>
