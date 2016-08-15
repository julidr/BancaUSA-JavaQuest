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
	<link rel="SHORTCUT ICON" href="..\Img\xampp.jpg">

	<!--estilo-->
	<link rel="stylesheet" type= "text/css" href="..\CSS\Style.css">
</head>
<body>
	<?php
			if(isset($_POST["Confirmar"])){
			$connection = mysqli_connect('localhost', 'root', '','banca');
			$respuestita=$_POST["respuesta"];
			$query="select t2.claveVirtual_cuenta from cliente t1 
						inner join cuenta t2 on t1.Cliente_id=t2.Cliente_id
						inner join pregunta t3 on t2.Cuenta_id= t3.Cuenta_id where t3.respuesta_pregunta= '".$respuestita."';";
			$result=mysqli_query($connection, $query);
			if (mysqli_num_rows($result)==0) {
							echo "<script> alert('Respuesta Incorrecta'); document.location=('../../index.html') </script>";
			}
			$row=mysqli_fetch_assoc($result);
			mysqli_close($connection);
			};
	?>
	<div id = "container">
		<div id = "head">
		</div>	
		<div id = "menu">
			<ul class="nav nav-tabs">
		  		<li role="presentation" class="active"><a>Recordar Clave</a></li>
			</ul>
		</div>
		<br>
		<?php
		if (mysqli_num_rows($result)>0) {
		echo "<script type='text/javascript'>

			alert('Su clave es: ".$row['claveVirtual_cuenta']."'); 
			document.location=('../../index.html');
			
			</script>";
		}
		 ?>

	<div id="bot">
			<hr>
			<p>Copyright © 2015. Todos los derechos reservados.</p>
		</div>
</div>

</body>
</html>