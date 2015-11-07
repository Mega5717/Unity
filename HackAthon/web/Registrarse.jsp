<!DOCTYPE html>

<html>
<head>
<link rel="icon" href="images/favicon.png"/>
<title>¿Dónde me puedo registrar?</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medicom Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	function seleccionarTodo(){
	   for (i=0;i<document.org.elements.length;i++)
	      if(document.org.elements[i].type == "checkbox")
	         document.org.elements[i].checked=1
	} 
</script>
</head>
<body>
<!----start-header---->
<div class="header" id="home">
	  <div class="container">
			<div class="logo">
				<a href="index.html"><img style="height: 60px;width: 260px;" src="images/ss.png"></a>
			</div>
			<div class="menu">			
			  <div class="top-menu navigation">
				 <span class="menu"></span> 
				 <ul class="navig">
					 <li><a href="index.html">Inicio</a></li>
					 <li><a href="testimonios.html">Experiencias</a></li>
					 <li><a href="juego.html">Trasplantando</a></li>
					 <li class="active"><a href="Registrarse.jsp">¿Deseas Salvar Vidas?</a></li>
				 </ul>
			  </div>
			   <!-- script-for-menu -->
		 <script>
				$("span.menu").click(function(){
					$(" ul.navig").slideToggle("slow" , function(){
					});
				});
		 </script>
		 <!-- script-for-menu -->
			</div>
		  <div class="clearfix"></div>
	 </div>	
</div>
<!----end-header---->
	<!--contact-starts-->
	<div class="welcome-top">
		<h1>"Cambiando un organo, cambiando una vida"</h1>
	</div>
	
	<div class="contact">
		<div class="container">
		<form action="RegistroBD.jsp" method="post">
			<div class="contact-top">
				<div class="col-md-4 contact-left heading">
					<h2 style="text-align: center;">Registrarse como Donante</h2>
					<p>Tus datos se ingresarán a nuestra base de datos.</p>
					<div class="col-md-4 banner-text" style=" width: 100%;">
							<div class="banner-text_grid" style="background:#CA92D2">
							 <img src="images/icon1.png" class="img-responsive" alt="/">
							<h4>¿Sabías Qué?</h4>
							<p style="color:white; text-align: justify;">Hasta un máximo de 50 vidas podrían ser mejoradas o salvadas gracias a un solo donante.</p>
							<p style="color:white; text-align: justify;">Un corazon después de haberse extraido solo puede durar de 3 a 5 horas, mientras que la piel hasta 5 años.</p>
							<p style="color:white; text-align: justify;">Se puede vivir con un solo riñon.</p>
							</div>
					</div>
				</div>
			
				<div class="col-md-8 contact-right">
					<label>Nombre</label><br/>
					<input type="text" name="nombre" value="Nombre(s) Apellido Paterno Apellido Materno" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nombre(s) Apellido Paterno Apellido Materno';}" /><br/>
					<label>Edad</label>
					<SELECT name="edad">
						<OPTION selected label="18" value="18">18</OPTION>
						<OPTGROUP>
							<%
								for(int i=19; i<=100; i++){
									%><OPTION value=<%=i%>><%=i%></OPTION><%
								}
							%>
						</optgroup>
					</SELECT><br/>
					<label>Fecha de Nacimiento</label>
					<SELECT name="dia">
						<OPTION selected label="1" value="1">1</OPTION>
						<OPTGROUP>
							<%
								for(int i=2; i<=31; i++){
									%><OPTION value=<%=i%>><%=i%></OPTION><%
								}
							%>
						</optgroup>
					</SELECT>
					<SELECT name="mes" style="width:18%;">
						<OPTION selected label="Enero" value="1">Enero</OPTION>
						<OPTGROUP>
							<Option VALUE="2">Febrero</Option>
							<Option VALUE="3">Marzo</Option>
							<Option VALUE="4">Abril</Option>
							<Option VALUE="5">Mayo</Option>
							<Option VALUE="6">Junio</Option>
							<Option VALUE="7">Julio</Option>
							<Option VALUE="8">Agosto</Option>
							<Option VALUE="9">Septiembre</Option>
							<Option VALUE="10">Octubre</Option>
							<Option VALUE="11">Noviembre</Option>
							<Option VALUE="12">Dicembre</Option>
						</optgroup>
					</SELECT>
					<SELECT name="year" style="width:13%;">
						<OPTION selected label="2015" value="2015">2015</OPTION>
						<OPTGROUP>
							<%
								for(int i=2014; i>=1900; i--){
									%><OPTION value=<%=i%>><%=i%></OPTION><%
								}
							%>
						</optgroup>
					</SELECT><br/>
					<label>Sexo</label>
					<SELECT name="sexo">
						<OPTION selected label="m" value="m">M</OPTION>
						<OPTGROUP>
							<OPTION VALUE="f">F</OPTION>
						</optgroup>
					</SELECT><br/>
					<label>Teléfono</label><br/>
					<input type="text" name="telefono" value="Telefono" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telefono';}" /><br/>
					<label>Domicilio</label><br/>
					<input type="text" name="domicilio" value="Domicilio" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Domicilio';}" /><br/>
					<label>Estado</label><br/>
					<input type="text" name="estado" value="Estado" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Estado';}" /><br/>
					<label>¿Qué Deseo Donar?</label>
					<form name="organos">
				    	<input type="checkbox" name="organos" value="Corazon"/>Corazón  
						<input type="checkbox" name="organos" value="Riñón"/>Riñon
						<input type="checkbox" name="organos" value="Cornea"/>Cornea
						<input type="checkbox" name="organos" value="Pulmones"/>Pulmones
						<input type="checkbox" name="organos" value="Pancreas"/>Páncreas
						<input type="checkbox" name="organos" value="Hueso"/>Hueso
						<input type="checkbox" name="organos" value="Tendones"/>Tendones
						<input type="checkbox" name="organos" value="Higado"/>Higado
						<input type="checkbox" name="organos" value="Piel"/>Piel
						<input type="checkbox" name="organos" value="Ligamentos"/>Ligamentos
						<input type="checkbox" name="organos" value="Intestino"/>Intestino
					</form>
					
					
				</div>
				<div class="clearfix"></div>
				<div class="col-md-4 contact-left heading">
					<h2 style="text-align: center;">Registrar a un Testigo</h2>
					
					<div class="col-md-4 banner-text" style=" width: 100%;">
							<div class="banner-text_grid" style="background:#CA92D2">
							 <img src="images/icon2.png" class="img-responsive" alt="/">
							<h4>Donación de Organos</h4>
							<p style="color:white; text-align: justify;">En el mismo grado como eres útil, usted será feliz.</p>
							<p style="color:white; text-align: justify;">No podemos vivir sólo para nosotros mismos. Mil fibras nos conectan con nuestros semejantes.</p>
							<p style="color:white; text-align: justify;">Usa tu corazón, dona tus organos.</p>
							</div>
					</div>
				</div>
				<div class="col-md-8 contact-right">
					<label>Nombre del Testigo</label><br/>
					<input type="text" name="nombre_testigo" value="Nombre(s) Apellido Paterno Apellido Materno" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nombre(s) Apellido Paterno Apellido Materno';}" /><br/>
					<label>Edad</label>
					<SELECT name="edad_testigo">
						<OPTION selected label="18" value="18">18</OPTION>
						<OPTGROUP>
							<%
								for(int i=19; i<=100; i++){
									%><OPTION value=<%=i%>><%=i%></OPTION><%
								}
							%>
						</optgroup>
					</SELECT><br/>
					<label>Domicilio</label><br/>
					<input type="text" name="domicilio_testigo" value="Domicilio" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Domicilio';}" /><br/>
					<label>Teléfono</label><br/>
					<input type="text" name="telefono_testigo" value="Telefono" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telefono';}" /><br/>
					<div class="submit-btn" align="center">
							<input type="submit" value="Acepto Salvar Vidas">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			</form>
			<div class="contact-bottom">
				<div class="col-md-4 contact-left heading">
					<h1>Más Información</h1>
					<p style="text-align: justify;">Si deseas más información acerca de la donación y transplante de organos, acude a los 204 Centros de Salud de Servicios de Salud,  
						los 5 Hospitales Generales o en el Hospital de la Mujer de Morelos.</p>
				</div>
				<div class="col-md-8 contact-right">
					<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d60425.47282477313!2d-99.23306195962854!3d18.816325212770657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1scentros+de+salud!5e0!3m2!1ses!2smx!4v1446841251343" frameborder="0" style="border:0"></iframe>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<div class="copy">
    <p>CAMBIANDO UN ORGANO <img style="height: 50px;width: 50px;" src="images/logo2.png"> CAMBIANDO UNA VIDA</p>
</div>
 <!--footer-->
</body>
</html>
