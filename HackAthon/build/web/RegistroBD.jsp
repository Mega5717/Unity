<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<html>
<head>
<title>Registro</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medicom Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.0.min.js"></script>

</head>
<body>

<%
	/*
	String nombre = request.getParameter("nombre");
	//out.println(nombre);
	String edad = request.getParameter("edad");
	//out.println(edad);
	String dia = request.getParameter("dia");
	//out.println(dia);
	String mes = request.getParameter("mes");
	//out.println(mes);
	String year = request.getParameter("year");
	String fecha = year + "-" + mes + "-" + dia;
	//out.println(year);
	String sexo = request.getParameter("sexo");
	//out.println(sexo);
	String telefono = request.getParameter("telefono");
	//out.println(telefono);
	String domicilio = request.getParameter("domicilio");
	//out.println(domicilio);
	String estado = request.getParameter("estado");
	//out.println(estado);
	String [] organos = request.getParameterValues("organos");
	
	String nombre_testigo = request.getParameter("nombre_testigo");
	//out.println(nombre_testigo);
	String edad_testigo = request.getParameter("edad_testigo");
	//out.println(edad_testigo);
	String domicilio_testigo = request.getParameter("domicilio_testigo");
	//out.println(domicilio_testigo);
	String telefono_testigo = request.getParameter("telefono_testigo");
	//out.println(telefono_testigo);

	String [][] aux = {{nombre,edad,dia,mes,year,sexo,telefono,domicilio,estado,nombre_testigo,edad_testigo,domicilio_testigo,telefono_testigo},organos};
	boolean isGood = true;
	for(int i=0; i<aux.length;i++){
		for(int j=0; j<aux[i].length; j++){
			String cad = aux[i][j];
			if (cad==null){
				isGood = false;
				break;
			}
		}
	}
	
	if(!isGood){
		response.sendRedirect("/Registrarse.jsp");
	}

	
	Connection canal = null;
	ResultSet tabla= null;
	Statement instruccion=null;
	String strcon = "jdbc:mysql://localhost/salud?user=root&password=root";
	// abriendo canal o enlace en su propio try-catch
	try {
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	canal=DriverManager.getConnection(strcon);
	instruccion = canal.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	ResultSet.CONCUR_UPDATABLE);
	} catch(java.lang.ClassNotFoundException e){} catch(SQLException e) {};
	//cargando los campos a grabar
	// excepto clave porque en mysql es de tipo auto-increment

	// insert into tabla(nombre,edad,estatura) values('juan', 15, 1.88);
	String q = "insert into donadores values('"+nombre+"','"+edad+"','"+fecha+"','"+sexo+"','"+telefono+"','"+domicilio+"','"+estado+"');";
	String q2;
	String q3= "insert into testigos values ('"+nombre+"','"+nombre_testigo+"','"+domicilio_testigo+"','"+telefono_testigo+"');";
	try {
	// agregando renglon (insert)
	int n=instruccion.executeUpdate(q);
	
	for(int i=0; i<organos.length; i++){
		q2 = "insert into organos (nombre,organo) values ('"+nombre+"','"+organos[i]+"');";
		n = instruccion.executeUpdate(q2);
	}
	
	n = instruccion.executeUpdate(q3);
	
	//avisando que se hizo la instruccion
	//out.println("REGISTRO INSERTADO");
	} catch(SQLException e) {out.println(e);};
	try{
	// tabla.close();
	instruccion.close();
	canal.close();
	} catch(SQLException e) {out.println(e);};
	*/
%>

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
					 <li><a href="Registrarse.jsp">¿Deseas Salvar Vidas?</a></li>
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
	<br/>
	<div class="about-top heading">
		<h4>Gracias por ser parte de esta noble causa</h4>
		<h4>Cabe señalar que esto es solo un Pre-Registro. Para completar el proceso, debes acudir la unidad de salud más cercana y confirmar tus datos, así mismo obtener tu credencial de donante de organos.</h4>
		<p class="abt_text">No olvides comunicar a tus familiares y amigos acerca de tu decisión, pues ellos serán quienes harán posible que se cumpla tu voluntad. Así mismo, no olvides invitarlos a que se sumen a esta gran labor ya que, nadie puede hacerlo todo, pero todos podemos hacer algo.</p>
		<div class="about-bottom">
			<div class="col-md-4 about-left">
				<img src="images/donacion/donacion.jpg" alt="" />
				<h5><p style="text-align: justify; color: #8A0886;">La donación de organos es la prueba palpable de que existe vida despues de la muerte.</p></h5>
				<p>¿Sabías Qué? En la mayoría de los casos, un trasplante es la única opción de corregir un padecimiento crónico y por supuesto conservar la vida.</p>
			</div>
			<div class="col-md-4 about-left">
				<img src="images/donacion/organo.jpg" alt="" />
				<h5><p style="text-align: justify; color: #8A0886;">Con Amor la Vida Sigue</p></h5>
				<p>Donar los organos es un acto de Amor, Nobleza y Valentía.</p>
			</div>
			<div class="col-md-4 about-left">
				<img src="images/donacion/cielo.jpg" alt="" />
				<h5><p style="text-align: justify; color: #8A0886;">Donar organos es regalar vida</p></h5>
				<p>Siembra una vida... una nueva ilución y una oportunidad para otras personas que necesitan algo de ti.</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<br/>
<div class="nature">
	<div class="container">
		<div class="nature-top" style="background: #CA92D2;">
			<h3>Donar Organos = Menos Pacientes Enfermos</h3>
			<p>Donar organos es regalar vida.</p>
		</div>
	</div>
</div>	
<br/><br/><br/>
<div class="copy">
    <p>CAMBIANDO UN ORGANO <img style="height: 50px;width: 50px;" src="images/logo2.png"> CAMBIANDO UNA VIDA</p>
</div>
 <!--footer-->
</body>
</html>
