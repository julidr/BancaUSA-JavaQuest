<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" /> 
	<META NAME="Author" CONTENT="P. Steven Puerto Montaño, Juliana Diaz, Felix Moreno">
	<title>BancaUSA.com</title>
	<script type="text/javascript" src="UI/JS/java.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="ui/CSS/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="ui/CSS/bootstrap-theme.min.css">

	<!-- Latest compiled and minified JavaScript -->
	<script src="ui/js/bootstrap.min.js"></script>

	<!--Icono-->
	<link rel="SHORTCUT ICON" href="ui\Img\Pestaña.png">

	<!--estilo-->
	<link rel="stylesheet" type= "text/css" href="ui\CSS\Style2.css">
	<script type="text/javascript" src="ui/JS/clock.js"></script>
</head>
<body>	
	<?php
		session_start();
		$connection2 = mysqli_connect('localhost', 'root', '','banca');
		$query0="select cliente_id from cliente where cedula_cliente='".$_SESSION['id']."'";
		$result0=mysqli_query($connection2, $query0);
		$row0 = mysqli_fetch_assoc($result0);
		$_SESSION['cliente_id']=$row0['cliente_id'];
		mysqli_close($connection2);
	?>
	<div id = "head">
		</div>
			<div id = "menu">
				<ul class="nav nav-pills">
					<li role="presentation"><a href="indexCliente.php"><img src="ui/Img/inicio2.png" id="icons">&nbsp Inicio</a></li>
					<li role="presentation"><a href="miPerfil.php"><img src="ui/Img/perfil2.png" id="icons">&nbsp Mi Perfil</a></li>
			  		<li role="presentation"><a href="misCuentas.php"><img src="ui/Img/cuenta2.png" id="icons">&nbsp Mas Detalles</a></li>
					<li role="presentation" class="active"><a href="resumen.php"><img src="ui/Img/movimientos.png" id="icons">&nbsp Resumen de Movimientos</a></li>
					<li role="presentation"><a href="transferencias.php"><img src="ui/Img/transaccion2.png" id="icons">&nbsp Realizar Transacción</a></li>
					<li role="presentation"><a href="index.html"><img src="ui/Img/salir2.png" id="icons">&nbsp Cerrar Sesión</a></li>
					<li role="presentation" id="clockbox"></li>
				</ul>
			</div >
			<h3>&nbsp<img src="ui/Img/usuario.png" id="icons"> <?php echo "<span class='label label-info'>".$_SESSION['usuario']."</span>" ?></h3>
	<div id = "container">
			<frameset>
			<center><legend>Detalle Cuenta</legend></center>
				<div id="tablaDetalle">	
					
						<table id="resumen" class="table">
							<thead>
				      				<tr>
				       					<th>Numero Cuenta</th>
				       					<th>Cuenta Destino</th>
				       					<th>Monto</th>
				       					<th>Fecha</th>
				       					<th>Tipo Transferencia</th>
				       					<th>Numero Credito</th>
				       					<th>Empresa</th>
				       					<th>Codigo Recibo</th>
				      				</tr>
									<?php
										$connection = mysqli_connect('localhost', 'root', '','banca');
										$query="select * from resumen_movimientos where cliente_id=".$_SESSION['cliente_id']." or destino_id=".$_SESSION['cliente_id'] ;
										$result=mysqli_query($connection, $query);
										while ($row = mysqli_fetch_assoc($result)){
											echo "<tr><td><center>".$row['numero_cuenta']."</center></td>";
											echo "<td><center>".$row['destino']."</center></td>";
											echo "<td><center>".$row['monto']."</center></td>";
											echo "<td><center>".$row['fecha']."</center></td>";
											echo "<td><center>".$row['tipo']."</center></td>";
											echo "<td><center>".$row['num_credito']."</center></td>";
											echo "<td><center>".$row['empresa']."</center></td>";
											echo "<td><center>".$row['codigo']."</center></td></tr>";
										}
										mysqli_close($connection);
									?>	
									<br>
							</thead>
					 	</table>
				</div>
			</frameset>

<br>
		<div id="bot">
			<hr>
			<img src="ui/Img/bot.png">
		</div>
	</div>
</body>
</html>