$(function(){
	$("#creCli").on("click", function(){
		$("#formCrearClie").validate ({
			rules:{
				cedula:{required:true,minlength:5,maxlength:45},
				nombre:{required:true,minlength:3,maxlength:100},
				apellido:{required:true,minlength:3,maxlength:100},
				direccion:{minlength:5,maxlength:45},
				telefono:{minlength:5,maxlength:45,digits:true},
				email:{minlength:5,maxlength:45,email:true},

				numeroCuenta:{required:true,minlength:5,maxlength:45,digits:true},
				claveCuenta:{required:true,minlength:5,maxlength:45},
				claveVirtual:{required:true,minlength:5,maxlength:45},
				saldo:{required:true,digits:true},

				tipoPre:{required:true},
				resPre:{required:true},
			},
			messages:{
				cedula:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				nombre:{required:"Campo Obligatorio",minlength:"Minimo 3",maxlength:"Maximo 100"},
				apellido:{required:"Campo Obligatorio",minlength:"Minimo 3",maxlength:"Maximo 100"},
				direccion:{minlength:"Minimo 5",maxlength:"Maximo 45"},
				telefono:{minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				email:{minlength:"Minimo 5",maxlength:"Maximo 45",email:"Formato no Valido"},

				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				claveCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				claveVirtual:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				saldo:{required:"Es necesario indicar un saldo incial",digits:"Solo Valores Numericos"},

				tipoPre:{required:"Es necesario seleccionar una opcion"},
				resPre:{required:"Es necesario responder a la pregunta"},
			}
		});
	});
});

$(function(){
	$("#crePrestamo").on("click", function(){
		$("#formCrearCredi").validate ({
			rules:{
				numeroCuenta:{required:true,minlength:5,maxlength:45,digits:true},
				tipoCredito:{required:true},
				Monto:{required:true,digits:true},
				descripcionPrestamo:{minlength:4,maxlength:45},
				limiteTarjeta:{digits:true},
				numTaPre:{required:true,minlength:5,maxlength:45,digits:true},
			},
			messages:{
				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				tipoCredito:{required:"Campo Obligatorio"},
				Monto:{required:"Es necesario colocar un monto de Prestamo",digits:"Solo Numeros"},
				descripcionPrestamo:{minlength:"Minimo 4",maxlength:"Maximo 45"},
				limiteTarjeta:{digits:"Solo Numeros"},
				numTaPre:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
			}
		});
	});
});

$(function(){
	$("#creCue").on("click", function(){
		$("#formCrearCuen").validate ({
			rules:{
				cedula:{required:true,minlength:5,maxlength:45},
				numeroCuenta:{required:true,minlength:5,maxlength:45,digits:true},
				claveCuenta:{required:true,minlength:5,maxlength:45},
				saldo:{required:true,digits:true},
			},
			messages:{
				cedula:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				claveCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				saldo:{required:"Es necesario colocar un monto de Prestamo",digits:"Solo Numeros"},
			}
		});
	});
});


$(function(){
	$("#aceptarCambio").on("click", function(){
		$("#cambioClaveV").validate ({
			rules:{
				claveAntigua:{required:true,minlength:5,maxlength:45},
				claveNueva:{required:true,minlength:5,maxlength:45},
				confClave:{required:true,minlength:5,maxlength:45, equalTo:"#claveNueva"},
				
			},
			messages:{
				claveAntigua:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				claveNueva:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				confClave:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45", equalTo:"No son Iguales"},
				
			}
		});
	});
});





$(function(){
	$("#consignaA").on("click", function(){
		$("#consignaForm").validate ({
			rules:{
				numeroCuenta:{required:true,minlength:5,maxlength:45,digits:true},
				cuentaDestino:{required:true,minlength:5,maxlength:45,digits:true},
				monto:{required:true,digits:true},
				clave:{required:true,minlength:5,maxlength:45},
				
			},
			messages:{
				cuentaDestino:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				monto:{required:"Campo Obligatorio",digits:"Solo Numeros"},
				clave:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
			}
		});
	});
});

$(function(){
	$("#retiroA").on("click", function(){
		$("#retiroForm").validate ({
			rules:{
				numeroCuenta:{required:true,minlength:5,maxlength:45},
				monto:{required:true,digits:true},
				clave:{required:true,minlength:5,maxlength:45},
				
			},
			messages:{
				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				monto:{required:"Campo Obligatorio",digits:"Solo Numeros"},
				fechaRetiro:{required:"Campo Obligatorio"},
				clave:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
			}
		});
	});
});

$(function(){
	$("#pagoServicio").on("click", function(){
		$("#serviciosForm").validate ({
			rules:{
				numeroCuenta:{required:true,minlength:5,maxlength:45},
				nombreEmpresa:{required:true,minlength:5,maxlength:45},
				numeroRecibo:{required:true,digits:true},
				monto:{required:true,digits:true},
				fechaServicio:{required:true},
				
			},
			messages:{
				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				nombreEmpresa:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				numeroRecibo:{required:"Campo Obligatorio",digits:"Solo Numeros"},
				monto:{required:"Campo Obligatorio",digits:"Solo Numeros"},
				fechaServicio:{required:"Campo Obligatorio"},
			}
		});
	});
});

$(function(){
	$("#pagoPrestamo").on("click", function(){
		$("#prestamoForm").validate ({
			rules:{
				numeroCuenta:{required:true,minlength:5,maxlength:45,digits:true},
				numeroCuentaDestino:{required:true,minlength:5,maxlength:45},
				monto:{required:true,digits:true},
				claveV:{required:true,minlength:5,maxlength:45},
				
			},
			messages:{
				numeroCuenta:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45",digits:"Solo Numeros"},
				numeroCuentaDestino:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
				monto:{required:"Campo Obligatorio",digits:"Solo Numeros"},
				claveV:{required:"Campo Obligatorio",minlength:"Minimo 5",maxlength:"Maximo 45"},
	
			}
		});
	});
});

