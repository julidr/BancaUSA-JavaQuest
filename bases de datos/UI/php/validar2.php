<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" /> 
	<META NAME="Author" CONTENT="P. Steven Puerto Montaño, Juliana Diaz, Felix Moreno">
	<title>BancaUSA.com</title>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="../CSS/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="../CSS/bootstrap-theme.min.css">

	<!-- Latest compiled and minified JavaScript -->
	<script src="../js/bootstrap.min.js"></script>

	<!--Icono-->
	<link rel="SHORTCUT ICON" href="..\Img\Pestaña.png">

	<!--estilo-->
	<link rel="stylesheet" type= "text/css" href="..\CSS\Style2.css">
	<script type="text/javascript" src="../JS/clock.js"></script>
</head>
<body>
	<div id = "head">
		</div>

			
		<div id = "menu">
			<ul class="nav nav-pills">
		  		<li role="presentation" class="active"><a><img src="../Img/recordar2.png" id="icons">&nbsp Confirmación</a></li>
		  		<li role="presentation" id="clockbox"></li>
				
			</ul>
		</div>
	<div id = "container">
		<br>
	<?php
			if(isset($_POST["AceptarCambio"])){
			$connection = mysqli_connect('localhost', 'root', '','banca');
			$docId=$_POST["idDoc"];
			$query="select t1.cedula_cliente, t3.tipo_pregunta from cliente t1 
						inner join cuenta t2 on t1.Cliente_id=t2.Cliente_id
						inner join pregunta t3 on t2.Cuenta_id= t3.Cuenta_id where t1.cedula_cliente= '".$docId."';";
			$result=mysqli_query($connection, $query);
			$row=mysqli_fetch_assoc($result);
			if (mysqli_num_rows($result)==0) {
				echo "<script> alert('Documento Inexistente'); document.location=('../../recordarClave.html') </script>";
			};
			echo "<form role='form' method='Post' action='../php/respuestaClave.php'>";
			echo "<center><label>Pregunta</label></center>";
			if ($row['tipo_pregunta']=='Nacimiento') {
				echo "<input class='form-control' value='Cual es su lugar de Nacimiento?' disabled>";
			}
			elseif ($row['tipo_pregunta']=='Mascota') {
				echo "<input class='form-control' value='Cual es el nombre de su Mascota?' disabled>";
			}
			else
			{
				echo "<input class='form-control' value='Cual es su color Favorito?' disabled>";
			}
			echo "<br>";
			echo "<center><label>Ingrese la Respuesta</label></center>";
			echo "<input type='text' class='form-control' id='respuesta' name='respuesta' placeholder='EX: Casa' >";
			echo "<br>";
			echo "<center><button type='submit' class='btn btn-default' id='Confirmar' name='Confirmar'>Confirmar</button></center>";
			echo "</form>";
			mysqli_close($connection);
			};
	?>

	<div id="bot">
			<hr>
			<img src="../Img/bot.png">
		</div>
</div>

</body>
</html>