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
		$connection = mysqli_connect('localhost', 'root', '','banca');
			$query="select * from cliente where cedula_cliente='".$_SESSION['id']."'";
			$result=mysqli_query($connection, $query);
			$row=mysqli_fetch_assoc($result);
	?>
	<div id = "head">
		</div>
		<div id = "menu">
			<ul class="nav nav-pills">
				<li role="presentation"><a href="indexCliente.php"><img src="ui/Img/inicio2.png" id="icons">&nbsp Inicio</a></li>
				<li role="presentation" class="active"><a href="miPerfil.php"><img src="ui/Img/perfil.png" id="icons">&nbsp Mi Perfil</a></li>
		  		<li role="presentation"><a href="misCuentas.php"><img src="ui/Img/cuenta2.png" id="icons">&nbsp Mis Cuentas</a></li>
				<li role="presentation"><a href="resumen.php"><img src="ui/Img/movimientos2.png" id="icons">&nbsp Resumen de Movimientos</a></li>
				<li role="presentation"><a href="transferencias.php"><img src="ui/Img/transaccion2.png" id="icons">&nbsp Realizar Transacción</a></li>
				<li role="presentation"><a href="index.html"><img src="ui/Img/salir2.png" id="icons">&nbsp Cerrar Sesión</a></li>
				<li role="presentation" id="clockbox"></li>
			</ul>
		</div>
	<h3>&nbsp<img src="ui/Img/usuario.png" id="icons"> <?php echo "<span class='label label-info'>".$_SESSION['usuario']."</span>" ?></h3>
	<div id = "container">	
		<div id="contenido">
			<h3>Información Perfil</h3>
			<div id="informacionPerfil" >
				<h4><span class='label label-info'>Documento de Identidad</span></h4> <p id="id"><?php echo $_SESSION['id'] ?></p>
				<h4><span class='label label-info'>Nombre</span></h4> <p id="nombreCliente"><?php echo $row['nombre_cliente'] ?></p>
				<h4><span class='label label-info'>Apellido</span> </h4><p id="apellidoCliente"><?php echo $row['apellido_cliente'] ?></p>
				<h4><span class='label label-info'>Direccion</span></h4> <p id="direccionCliente"><?php echo $row['direccion_cliente'] ?></p>
				<h4><span class='label label-info'>Telefono</span></h4> <p id="telefonoCliente"><?php echo $row['telefono_cliente'] ?></p>
				<h4><span class='label label-info'>Email</span> </h4><p id="emailCliente"><?php echo $row['email_cliente'] ?></p>
				
			</div>
			<br><br>
			<div id="cambioClave">
				<br><br>
				<h3>Cambiar Clave</h3><br>
				<button type="submit" class="btn btn-default" id="cambiaVirtual"name="cambiaVirtual" onclick="location.href='cambioVirtual.php'">Cambiar Clave</button>
			</div>	
		</div>
    	<br>
		<div id="bot2">
			<img src="ui/Img/bot.png">
		</div>
	</div>
	<?php
		mysqli_close($connection);
	?>
</body>
</html>