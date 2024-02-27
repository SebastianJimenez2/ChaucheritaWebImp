<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mi Chauchera</title>
<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</head>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: ui-sans-serif, system-ui;
}

html {
  font-family: ui-sans-serif, system-ui;
}

body {
  background-color: var(--color-bg);
  color: var(--color-texto);

}

:root {
  --color-bg: #181A20;
  --color-boton-1: #FCD434;
  --color-boton-2: #1a1d25;
  --color-inactivo: #868F9E;
  --color-texto: #F1F2F7;
  --color-negativo: #db143c;
  --color-positivo: #5ECC8B;
  --hover-seleccionar: rgba(255, 255, 255, 0.4);
  --box-shadow: 0 1px 3px rgba(43,49,57,0.12), 
  0 1px 2px rgba(43,49,57,1);
  --transition-boton: transform 0.2s ease, box-shadow 0.2s ease;
  --transform-boton: perspective(400px) translateZ(0);
  --transform-boton-active: perspective(400px) translateY(6px) translateZ(0) scale(0.9);

}

label{
  font-size: 1.0rem;
  margin-bottom: 0.5rem;
  font-family: ui-sans-serif, system-ui;
}


.color-texto {
  color: var(--color-texto);
}

.header_pagina_principal {
  display: flex;
  justify-content: space-between;
  background-color: var(--color-bg);
  color: var(--color-texto);
  padding: 1rem;
}
.header_pagina_principal a{ 
  color:white;
  text-decoration: none;  
}
.main_pagina_principal {
  padding: 0 1rem 1rem 1rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}


.contenedor-resumen {
  width: 100%;

}

.contenedor_default {
  background-color: var(--color-boton-2);
  border-radius: 30px;
  padding: 1rem 1.2rem;
  margin: 0 0 1rem 0;
  width: 100%;
  box-shadow: var(--box-shadow);
  border: solid 2px rgb(43,49,57);
  
}

.header_contenedor {
  display: flex;
  justify-content: space-between;
  align-items: center;
}


.boton {
  border-radius: 50px;
  border: none;
  padding: 10px 15px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  color: var(--color-texto);
  background-color: transparent;
  transition: var(--transition-boton);
  transform: var(--transform-boton);
  cursor: pointer;
  font-weight: bolder;
  width: 50%;
}
.header_pagina_principal .contenedor_derecha {
  display: flex;
  gap: 0.5rem;
}
.btn-regresar{
  background: var(--color-boton-2);
  border: none;
  color: var(--color-texto);
  margin: 0 10px;
  height: 40px;
  width: 40px;
  border-radius: 100%;
  cursor: pointer;
  box-shadow: var(--box-shadow);
  transition: var(--transition-boton);
  transform: var(--transform-boton);
}

.btn-confirmacion {
  display: flex;
  justify-content: center;
  vertical-align: middle;
  gap: 50px;
}
.boton:active{
  transform: var(--transform-boton-active);
}



.boton2 {
  background-color: var(--color-boton-2);
}

.boton1 {
  background-color: var(--color-boton-1);
  color: var(--color-bg);
}
.boton1:hover{
  background-color: #e0b300;
}
.boton-cancelar{
  background-color: var(--color-negativo);
}

.color_inactivo_boton {
  background-color: var(--color-inactivo);
}

.usuario_shortcut {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: var(--color-boton-2);
  border-radius: 50px;
  width: fit-content;
  padding: 5px 10px;
  box-shadow: var(--box-shadow);
}

.usuario_shortcut img {
  border-radius: 50%;
  margin-right: 10px;
}

.header_contenedor .boton2 {
  width: fit-content;
  height: fit-content;
  padding: 0.5rem;
  border-radius: 100%;
}

.icono {
  color: var(--color-texto);
}

.contenedor-cuenta-dashboard {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 10px;
  cursor: pointer;
}

.contenedor-cuenta-dashboard:hover {
  background: var(--hover-seleccionar);
  border-radius: 0.5rem;
}

.balance {
  display: flex;
  align-items: center;
  justify-content: left;
  margin: 1rem 0;
}

.balance h1 {
  margin-left: 1rem;
}
.card-cuenta{
  border: 1px solid #555;
  padding: 10px;
  border-radius: 10px;
  display:flex;
  flex-direction: column;
  text-align: center;
}
.botones_transacciones {
  margin-top: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1rem;
}
.botones_transacciones a {
  text-decoration: none;
  color:black;
  background-color: #FCD434;
  padding: 5px 10px;
  border-radius: 15px;
}
.transaccion {
  display: grid;
  /*grid de 5 columnas*/
  grid-template-columns: 0.25fr 0.5fr 1fr 1fr 1fr 1fr;
  align-items: center;
  /*alinear horizontalmente en el centro cada grid*/
  justify-items: center;
  background-color: var(--color-boton-2);
  border-radius: 30px;
  margin: 2rem 0 0 0;
}

/*
.transaccion:last-child {
  margin: 0;
}
*/
.retiro_color {
  color: var(--color-negativo);
}

.deposito_color {
  color: var(--color-positivo);
}

#transacciones {
  overflow: hidden;
}

.ocultar {
  display: none;

}

.mostrar {
  display: block;
}

.cuentas{
  display: flex;
  flex-direction: column;
  gap: 10px;
  justify-content: space-between;
  align-items: center;
  padding: 1rem;
  flex-wrap: wrap;

}

.concepto {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}

.dash_head {
  max-width: 458px;
}

.clasificacion {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1rem;
  padding: 1rem;
}

.transaccion .cuenta{
  display: flex;
  flex-direction: column;
  align-items: center;

}

.transaccion_responsive {
  display: none;
  padding: 0.5rem;
}


.transaccion_responsive>* {
  display: grid;
  grid-template-columns: 1fr 1fr;
  margin-top: 1rem;
  gap: 0.5rem;
}

.transaccion_responsive .boton {
  width: fit-content;
  display: flex;
}
/*hovers*/
.boton1:hover {
  background-color: #cc9b00; 
}

.color_inactivo_boton:hover {
  background-color: #6e7681; 
}

.usuario_shortcut:hover {
  background-color: #2c333d; 
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
}


.boton2:hover {
  background-color: #2c333d; 
  color: #F1F2F7; 
}


.boton-cancelar:hover {
  background-color: #950c29; 
}


.retiro_color:hover {
  color: #950c29; 
}

.deposito_color:hover {
  color: #4CAF50; 
}

.cuentas .boton:hover {
  background-color: #2c333d; 
}

.clasificacion .boton:hover {
  background-color: #2c333d; 
}

@media (max-width: 430px) {
  .transaccion {
    display: none;
  }

  .botones_transacciones .icono {
    font-size: 1.5rem;
    margin: 0;
  }

  .transaccion_responsive {
    display: block;

  }
}

@media (max-width: 489px) {
  .cuentas .boton {
    flex-direction: column;
  }

  .clasificacion .boton {
    flex-direction: column;
  }
}

@media (min-width: 700px) {
  .contenedor-resumen .contenedor_default {
    margin: 0;
  }

  .contenedor-resumen {
    display: grid;
    grid-template-areas:
      "contenedor_default contenedor_default"
      "grid_abajo grid_abajo"
    ;
    gap: 16px;
    max-width: 1080px;
  }

  .grid_abajo {
    grid-area: grid_abajo;
  }


}

@media (min-width: 800px) {}

.contenedor-configuracion{
  padding: 10px 150px;

}
.contenedor-configuracion a{
  text-decoration: none;
  color:white;
}
</style>

<body>
	<!-- nav -->
	<header class="header_pagina_principal">
		<button class="boton boton2 usuario_shortcut">
			<img src="https://picsum.photos/30" alt="imagen de usuario">
			<p>Usuario</p>
		</button>
		
		<button class="boton boton2 usuario_shortcut" onclick="(window.location ='configuracion.jsp')">
			<p>Configuración</p>
			<iconify-icon icon="icon-park-solid:config"></iconify-icon>
		</button>
	</header>
	<!-- dashboard de cartera digital -->
	<main class="main_pagina_principal">
		<div class="contenedor_default dash_head">
			<header class="header_contenedor">
				<h3>Balance Total</h3>
				<button class="boton boton2 color_inactivo_boton">
					<iconify-icon class="icono" icon="carbon:view-filled" width="18"></iconify-icon>
				</button>
			</header>
			<main class="balance">
				<iconify-icon class="icono" icon="cryptocurrency:usd"
					style="color: white;" width="32"></iconify-icon>
				<h1>3000.00</h1>
			</main>

			<footer class="botones_transacciones">
				<button class="boton boton1"
					onclick="#">
					<iconify-icon icon="ph:arrow-down-bold" width="18"></iconify-icon>
					<span class="texto_boton">Depositar</span>
				</button>
				<button class="boton boton2 color_inactivo_boton"
					onclick="#">
					<iconify-icon icon="ph:arrow-up-bold" width="18"></iconify-icon>
					<span class="texto_boton">Retirar</span>
				</button>
				<button class="boton boton2 color_inactivo_boton"
					onclick="#">
					<iconify-icon icon="mingcute:transfer-fill" width="18"></iconify-icon>
					<span class="texto_boton">Transferir</span>
				</button>
			</footer>

		</div>
		
		<div class="contenedor-resumen">
			<div class="contenedor_default">
				<!--Cuentas-->
				<header class="header_contenedor">
					<h3>Cuentas</h3>
					<button class="boton boton1"
						onclick="#">
						<iconify-icon icon="mingcute:add-fill" width="18"></iconify-icon>
						<p>Agregar cuenta</p>
					</button>
				</header>
			</div>
		</div>

		
	</main>
</body>

</html>