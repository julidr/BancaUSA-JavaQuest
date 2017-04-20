<!DOCTYPE html>
<html>
<head>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
  <script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
  <script type="text/javascript" src="ui/js/java.js"></script>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
	<META NAME="Author" CONTENT="P. Steven Puerto Montaño, Juliana Diaz, Felix Moreno">
	<title>BancaUSA.com</title>

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
	$connection = mysqli_connect('localhost', 'root', '','banca');
	$query="select * from log_cliente;"; 
	$result=mysqli_query($connection, $query);
	$row=mysqli_fetch_assoc($result);
	$query2="select * from log_cuenta;"; 
	$result2=mysqli_query($connection, $query2);
	$row2=mysqli_fetch_assoc($result2);
	$query3="select * from log_credito;"; 
	$result3=mysqli_query($connection, $query3);
	$row3=mysqli_fetch_assoc($result3);
	$query4="select * from log_transaccion;"; 
	$result4=mysqli_query($connection, $query4);
	$row4=mysqli_fetch_assoc($result4);
	mysqli_close($connection);
	?>
	<div id = "head">
		</div>
					<div id = "menu">
						<ul class="nav nav-pills">
					  		<li role="presentation"><a href="indexAdmin.html"><img src="ui/Img/inicio2.png" id="icons">&nbsp Inicio</a></li>
					  		<li role="presentation"><a href="crearCliente.html"><img src="ui/Img/cliente2.png" id="icons">&nbsp Registro Nuevo Cliente</a></li>
					  		<li role="presentation"><a href="crearCredito.html"><img src="ui/Img/createMoney2.png" id="icons">&nbsp Solicitud Prestamos</a></li>
					  		<li role="presentation"><a href="estadoCuenta.html"><img src="ui/Img/consultaEstado2.png" id="icons">&nbsp Consulta Estado de Cuenta</a></li>
					  		<li role="presentation" class="active"><a href="logs.php"><img src="ui/Img/logs.png" id="icons">&nbsp Logs</a></li>
							<li role="presentation"><a href="index.html"><img src="ui/Img/salir2.png" id="icons">&nbspSalir</a></li>
							<li role="presentation" id="clockbox"></li>
						</ul>
					</div>
	<div id = "container">
					<br>
					<center><legend>Log's</legend></center>
					<br>
		<div id="contenido">

				<div id="informacion"class="row">
				<frameset>
				<center><legend>Log Cliente</legend></center>
					<div id="tablaCuentas">
						<table class="table">
							<thead>
					      		<tr>
					       			<th>Cedula</th>
					       			<th>Nombre</th>
					       			<th>Apellido</th>
					       			<th>Direccion</th>
					       			<th>Telefono</th>
					       			<th>Email</th>
					       			<th>Fecha</th>
					       			<th>Tipo</th>
					      		</tr>

								<tr id="resumenTr">
									<?php

										for ($i=0; $i <mysqli_num_rows($result); $i++) { 
										echo "<tr><td>".$row['cedula']."</td>";
										echo "<td>".$row['nombre']."</td>";
										echo "<td>".$row['apellido']."</td>";
										echo "<td>".$row['direccion']."</td>";
										echo "<td>".$row['telefono']."</td>";
										echo "<td>".$row['email']."</td>";
										echo "<td>".$row['fecha']."</td>";
										echo "<td>".$row['tipo']."</td>";
										$row = mysqli_fetch_assoc($result);					
										}
									?>
								</tr>
							</thead>
						</table>
					</div>
				</frameset>
			</div>

			<br><hr><br>

			<div id="informacion"class="row">
				<frameset>
				<center><legend>Log Cuenta</legend></center>
					<div id="tablaCuentas">
						<table class="table">
							<thead>
					      		<tr>
					       			<th>Cliente Id</th>
					       			<th>Numero Cuenta</th>
					       			<th>Clave</th>
					       			<th>Clave Virtual</th>
					       			<th>Saldo</th>
					       			<th>Fecha</th>
					      		</tr>
								<tr id="resumenTr">
									<?php

										for ($j=0; $j <mysqli_num_rows($result2); $j++) { 
										echo "<tr><td>".$row2['Cliente_id']."</td>";
										echo "<td>".$row2['numero']."</td>";
										echo "<td>".$row2['clave']."</td>";
										echo "<td>".$row2['claveVirtual']."</td>";
										echo "<td>".$row2['saldoActual']."</td>";
										echo "<td>".$row2['fecha']."</td>";
										echo "<td>".$row2['tipo']."</td>";
										$row2 = mysqli_fetch_assoc($result2);					
										}
									?>
								</tr>
							</thead>
						</table>
					</div>
				</frameset>
			</div>

			<br><hr><br>

			<div id="informacion"class="row">
				<frameset>
				<center><legend>Log Transaccion</legend></center>
					<div id="tablaCuentas">
						<table class="table">
							<thead>
					      		<tr>
					       			<th>Cuenta id</th>
					       			<th>Cuenta Destino</th>
					       			<th>Tipo de Transaccion</th>
					       			<th>Monto</th>
					       			<th>Empresa</th>
					       			<th>Codigo Recibo</th>
					       			<th>Fecha</th>
					       			<th>Tipo</th>
					      		</tr>
								<tr id="resumenTr">
									<?php

										for ($m=0; $m <mysqli_num_rows($result4); $m++) { 
										echo "<tr><td>".$row4['Cuenta_id']."</td>";
										echo "<td>".$row4['cuentaDestino']."</td>";
										echo "<td>".$row4['tipo_transferencia']."</td>";
										echo "<td>".$row4['monto']."</td>";
										echo "<td>".$row4['empresa']."</td>";
										echo "<td>".$row4['codigoRecibo']."</td>";
										echo "<td>".$row4['fecha']."</td>";
										echo "<td>".$row4['tipo']."</td>";
										$row4 = mysqli_fetch_assoc($result4);					
										}
									?>
								</tr>
							</thead>
						</table>
					</div>
				</frameset>
			</div>

			<br><hr><br>

			<div id="informacion"class="row">
				<frameset>
				<center><legend>Log Credito</legend></center>
					<div id="tablaCuentas">
						<table class="table">
							<thead>
					      		<tr>
					       			<th>Cuenta Id</th>
					       			<th>Tipo de Credito</th>
					       			<th>Numero Credito</th>
					       			<th>Monto</th>
					       			<th>Descripcion</th>
					       			<th>LimiteTarjeta</th>
					       			<th>cuota</th>
					       			<th>Fecha</th>
					       			<th>Tipo</th>
					      		</tr>
								<tr id="resumenTr">
									<?php

										for ($k=0; $k <mysqli_num_rows($result3); $k++) { 
										echo "<tr><td>".$row3['Cuenta_id']."</td>";
										echo "<td>".$row3['tipo_credito']."</td>";
										echo "<td>".$row3['numero_credito']."</td>";
										echo "<td>".$row3['monto']."</td>";
										echo "<td>".$row3['descripcion']."</td>";
										echo "<td>".$row3['limiteTarjeta']."</td>";
										echo "<td>".$row3['cuota']."</td>";
										echo "<td>".$row3['fecha']."</td>";
										echo "<td>".$row3['tipo']."</td>";
										$row3 = mysqli_fetch_assoc($result3);					
										}
									?>
								</tr>
							</thead>
						</table>
					</div>
				</frameset>
			</div>

				<div id="bot">
					<hr>
					<img src="ui/Img/bot.png">
				</div>

		</div>

	</div>
</body> 