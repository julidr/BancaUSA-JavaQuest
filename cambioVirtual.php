<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" /> 
	<META NAME="Author" CONTENT="P. Steven Puerto Montaño, Juliana Diaz, Felix Moreno">
	<title>BancaUSA.com</title>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  	<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
 	 <script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>



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
		  		<li role="presentation" class="active"><a><img src="ui/Img/cambiar.png" id="icons">&nbsp Cambio Clave</a></li>
		  		<li role="presentation"><a href="miPerfil.php"><img src="ui/Img/volver.png" id="icons">&nbsp Volver</a></li>
		  		<li role="presentation" id="clockbox"></li>
			</ul>
		</div>
	<div id = "container">
		<h6>Bienvenido a Bancausa: &nbsp <?php echo $_SESSION['usuario'] ?></h6>
			
			<br>
			<h4>Cambio de Clave </h4>
			
				<fieldset>
					<form id="cambioClaveV" name="cambioClaveV" method="Post" align="center" action='ui/php/cambioClave.php'>


						<legend>Cambio de Clave</legend>
						<?php
						$query2="call consultaCuenta('".$_SESSION['id']."');";
						$result2=mysqli_query($connection, $query2);
						$row2=mysqli_fetch_assoc($result2);
						echo "<select id='selCue' name='selCue' class='form-control'>";
						for ($i=0; $i <mysqli_num_rows($result2); $i++) {
						echo "<option value=".$row2['numero_cuenta'].">".$row2['numero_cuenta']."</option>";
						$row2 = mysqli_fetch_assoc($result2);
						}
						echo "</select>"; 
													?>
						<br>
						<label id="claveAn" >Clave Antigua:</label>
	   				    <input type="password" class="form-control" id="claveAntigua" name="claveAntigua" placeholder="Ex: 1026293165">
	   				    <br>
	   				    <label id="claveAn" >Clave Nueva:</label>
	   				    <input type="password" class="form-control" id="claveNueva" name="claveNueva" placeholder="Ex: 1026293165">
	   				    <br>
	   				    <label id="claveAn" >Confirmar Clave:</label>
	   				    <input type="password" class="form-control" id="confClave" name="confClave" placeholder="Ex: 1026293165">
	   				    <br>

						<button type="submit" class="btn btn-default" id="aceptarCambio" name="aceptarCambio">Aceptar</button>
					</form>
				</fieldset>
			

		<hr>	
		<center><img src="ui/Img/bot.png"></center>
	
    	<br>
		
	</div>
	<?php
		mysqli_close($connection);
	?>
</body>
</html>