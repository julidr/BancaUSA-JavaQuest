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
          			<li role="presentation" class="active"><a><img src="ui/Img/cuenta.png" id="icons">&nbsp Mas Detalles</a></li>
				 	<li role="presentation"><a href="misCuentas.php"><img src="ui/Img/volver.png" id="icons">&nbsp Volver</a></li>
				 	<li role="presentation" id="clockbox"></li>
				</ul>

			</div >
			<h3><b>&nbsp<img src="ui/Img/usuario.png" id="icons"> <?php echo "<span class='label label-info'>".$_SESSION['usuario']."</span>" ?></h3>
	<div id = "container">
			<br>
			<div id="informacion"class="row">
				<frameset>
				<center><legend>Detalle Cuenta</legend></center>
					<div id="tablaCuentas">
						<table class="table">
							<thead>
					      		<tr>
					       			<th>Numero Cuenta</th>
					       			<th>Saldo</th>
					      		</tr>
								<?php
									$connection = mysqli_connect('localhost', 'root', '','banca');
									$query="select numero_cuenta, saldoActual_cuenta, cuenta_id from cuenta t1 inner join cliente t2 on t1.cliente_id=t2.cliente_id where cedula_cliente='".$_SESSION['id']."' and cuenta_id=".$_POST["Detalles"];
									$result=mysqli_query($connection, $query);
									while ($row = mysqli_fetch_assoc($result)){
										echo "<tr><td><center>".$row['numero_cuenta']."</center></td>";
										echo "<td><center>".$row['saldoActual_cuenta']."</center></td></tr>";
									}
								?>
							</thead>
						</table>
					</div>
				</frameset>
			</div>
			<br><hr><br>
			<div id="informacion"class="row">
			<frameset>
			<center><legend>Detalle Creditos</legend></center>
				<div id="tablaDetalle2">
					<table class="table">
						<thead>
							<br>
								<tr>
			       					<th>Tipo de Credito</th>
			       					<th>Descripcion Credito</th>
			       					<th>Monto del Credito</th>
			       					<th>Limite</th>
			       					<th>Cuotas</th>
			      				</tr>
								<?php
									$query2="select tipo_credito, descripcion_credito,monto_credito,limiteTarjeta ,cuota from credito where cuenta_id=".$_POST["Detalles"];
									$result2=mysqli_query($connection, $query2);
									while ($row2 = mysqli_fetch_assoc($result2)){
										echo "<tr><td><center>".$row2['tipo_credito']."</center></td>";
										echo "<td><center>".$row2['descripcion_credito']."</center></td>";
										echo "<td><center>".$row2['monto_credito']."</center></td>";
										echo "<td><center>".$row2['limiteTarjeta']."</center></td>";
										echo "<td><center>".$row2['cuota']."</center></td></tr>";
									}
								?>	
						</thead>
					</table>
				</div>
			</frameset>
			</div>

			<br><hr><br>

			<div id="informacion"class="row">
			<frameset>
			<center><legend>Detalle Movimiento</legend></center>
				<div id="tablaDetalle">
					<table class="table">
						<center><h5><u>Movimientos de Consignacion</u></h5></center>
						<thead>
								<tr>
			       					<th>Monto</th>
			       					<th>Fecha</th>
			      				</tr>
								<?php
									$query3="select monto_transferencia,fecha_transferencia from transaccion where cuenta_id=".$_POST["Detalles"]." and tipo_transferencia='consignacion'" ;
									$result3=mysqli_query($connection, $query3);
									while ($row3 = mysqli_fetch_assoc($result3)){
										echo "<tr><td><center>".$row3['monto_transferencia']."</center></td>";
										echo "<td><center>".$row3['fecha_transferencia']."</center></td></tr>";
									}
								?>	
						</thead>
					</table>
					<br><hr><br>
					<table class="table">
						<center><h5><u>Movimientos de Retiro</u></h5></center>
						<thead>
								<tr>			       					
			       					<th>Monto</th>
			       					<th>Fecha</th>
			      				</tr>
								<?php
									$query4="select monto_transferencia,fecha_transferencia from transaccion where cuenta_id=".$_POST["Detalles"]." and tipo_transferencia='retiro'" ;
									$result4=mysqli_query($connection, $query4);
									while ($row4 = mysqli_fetch_assoc($result4)){
										echo "<tr><td><center>".$row4['monto_transferencia']."</center></td>";
										echo "<td><center>".$row4['fecha_transferencia']."</center></td></tr>";
									}
								?>	
						</thead>
					</table>
					<br><hr><br>
					<table class="table">
						<center><h5><u>Movimientos de Transferencias</u></h5></center>
						<thead>
								<tr>
			       					<th>Monto</th>
			       					<th>Cuenta Destino</th>
			       					<th>Fecha</th>
			      				</tr>
								<?php
									$query5="select monto_transferencia,cuentaDestino ,fecha_transferencia from transaccion where cuenta_id=".$_POST["Detalles"]." and tipo_transferencia='transferenciaCuenta'";
									$result5=mysqli_query($connection, $query5);
									while ($row5 = mysqli_fetch_assoc($result5)){
										echo "<tr><td><center>".$row5['monto_transferencia']."</center></td>";
										echo "<td><center>".$row5['cuentaDestino']."</center></td>";
										echo "<td><center>".$row5['fecha_transferencia']."</center></td></tr>";
									}
								?>	
						</thead>
					</table>
					<br><hr><br>
					<table class="table">
						<center><h5><u>Movimientos de Pago Tarjetas</u></h5></center>
						<thead>
								<tr>
			       					<th>Tarjeta</th>
			       					<th>Monto</th>
			       					<th>Fecha</th>
			      				</tr>
								<?php
									$query6="select t3.numero_credito, monto_transferencia,fecha_transferencia from transaccion t1 inner join pago_tarjeta t2 on t1.transaccion_id=t2.transaccion_id inner join credito t3 on t2.credito_id=t3.credito_id where t1.cuenta_id=".$_POST["Detalles"]." and tipo_transferencia='pagoTarjeta'";
									$result6=mysqli_query($connection, $query6);
									while ($row6 = mysqli_fetch_assoc($result6)){
										echo "<tr><td><center>".$row6['numero_credito']."</center></td>";
										echo "<td><center>".$row6['monto_transferencia']."</center></td>";
										echo "<td><center>".$row6['fecha_transferencia']."</center></td></tr>";
									}
								?>	
						</thead>
					</table>
					<br><hr><br>
					<table class="table">
						<center><h5><u>Movimientos de Servicios</u></h5></center>
						<thead>
								<tr>
			       					<th>Numero de Recibo</th>
			       					<th>Nombre de la Empresa</th>
			       					<th>Monto</th>
			       					<th>Fecha</th>
			      				</tr>
								<?php
									$query7="select codigoRecibo,empresa,monto_transferencia,fecha_transferencia from transaccion where cuenta_id=".$_POST["Detalles"]." and tipo_transferencia='pagoServicio'";
									$result7=mysqli_query($connection, $query7);
									while ($row7 = mysqli_fetch_assoc($result7)){
										echo "<tr><td><center>".$row7['codigoRecibo']."</center></td>";
										echo "<td><center>".$row7['empresa']."</center></td>";
										echo "<td><center>".$row7['monto_transferencia']."</center></td>";
										echo "<td><center>".$row7['fecha_transferencia']."</center></td></tr>";
									}
								?>	
						</thead>
					</table>
					<br><hr><br>
					<table class="table">
						<center><h5><u>Movimientos de Prestamos</u></h5></center>
						<thead>
								<tr>
			       					<th>Prestamo que se pago</th>
			       					<th>Monto</th>
			       					<th>Fecha</th>
			      				</tr>
								<?php
									$query8="select t3.numero_credito, monto_transferencia,fecha_transferencia from transaccion t1 inner join pago_prestamo t2 on t1.transaccion_id=t2.transaccion_id inner join credito t3 on t2.credito_id=t3.credito_id where t1.cuenta_id=".$_POST["Detalles"]." and tipo_transferencia='pagoPrestamo'";
									$result8=mysqli_query($connection, $query8);
									while ($row8 = mysqli_fetch_assoc($result8)){
										echo "<tr><td><center>".$row8['numero_credito']."</center></td>";
										echo "<td><center>".$row8['monto_transferencia']."</center></td>";
										echo "<td><center>".$row8['fecha_transferencia']."</center></td></tr>";
									}
								?>
						</thead>
					</table>
				</div>
			</frameset>
			</div><br><br>
			<!--<center><button type='submit' name='Mas detalles' onclick="location.href='misCuentas.php'">Volver a Mis Cuentas</button></center>
		<div id="bot">-->
			<div id="bot">
			<hr>
			<img src="ui/Img/bot.png">
		</div>
		</div>
	</div>
	<?php
		mysqli_close($connection);
	?>
</body>
</html>