<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1">
	<link rel="stylesheet" href="/Trustin_3Final/Style/Usuario.css" />
     <link rel="stylesheet" href="/Trustin_3Final/Style/Registro.css"/>
     <link rel="stylesheet" href="/Trustin_3Final/Style/perfiles.css"/>
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<title>Perfil</title>
</head>
<body>
    <form id="form1" runat="server">
        	<input type="checkbox" id="menu-toggle">
	<div class="sidebar">
		<div class="side-header">
			<h3>T<span>rustIn</span></h3>			
		</div>
		<div class="side-content">
			<div class="profile">
				<div class="profile-img bg-img" style="background-image: url(./img/profile.jpg);"></div>
				<h4>{user_name} </h4>
				<small>Usuario</small>				
			</div>
			<div class="side-menu">
				<ul>
					<li>
						<a href="/Trustin_3Final/Usuario/Usuario_Dashboard.aspx" >
							<span class="las la-home"></span>
							<small>Dashboard</small>
						</a>
					</li>
					<li>
						<a href="/Trustin_3Final/Usuario/Usuario_Cuenta.aspx" >
							<span class="las la-user-cog"></span>
							<small>Cuenta</small>
						</a>
					</li>
					<li>
						<a href="">
							<span class="las la-thumbs-up"></span>
							<small>Intereses</small>
						</a>
					</li>
					<li>
						<a href="#" class="active">
							<span class="las la-user"></span>
							<small>Perfil</small>
						</a>
					</li>
					<li>
						<a href="/Trustin_3Final/Usuario/historialActividades.aspx">
							<span class="las la-history"></span>
							<small>Historial de Actividades</small>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="main-content">

		<header>
			<div class="header-content">
				<label for="menu-toggle">
				<span class="las la-bars"></span>					
				</label>

				<div class="header-menu">
					<label for="">
					<span class="las la-search"></span>					
					</label>

					<div class="notify-icon">
						<span class="las la-envelope"></span>
						<span class="notify">4</span>
					</div>

						<div class="notify-icon">
						<span class="las la-bell"></span>
						<span class="notify">3</span>					
					</div>	

					<div class="user">						
						<div class="bg-img" style="background-image: url(./img/profile.jpg);"></div>
						<span class="las la-power-off"></span>
						<span>Logout</span>
					</div>	
					
				</div>				
			</div>
		</header>

		<main>
			<div class="page-header">
				<h1>Editar Información del perfil</h1>
				<small>Home / Perfil</small>
			</div>
			<div class="container-perfil" >
        <img class="Image-profile" " src="/Trustin_3Final/Imagenes/perfilUsuario.jpg" alt="Perfil persona" />
        
        <%--<div class="perfil" style="display: flex; margin: 0 auto; flex-direction: column; align-items: center;" >
            <div style="display: flex; margin: 0 auto; flex-direction: column; align-items: center;">
                <progress id="file" max="100" style="height: 20px;" value="25" />

            </div>
            <span style="font-size: 24px; font-weight: 600; ">25% Completado</span>
        </div>--%>

        <div class="Informacion-Perfil" >
            <div class="perfil-usuario" >
                <div class="Informacion-Perfil-Usuario" >
                   
                    <div>
                        <span style="font-size:28px; font-weight:700">Melissa </span>
                        <span style="font-size:26px; font-weight:700">26</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px; padding:20px">
                        <div style="padding: 6px 10px; border: 1px solid #666; border-radius: 50px; white-space: nowrap">
                            <span>Vive en Cartago</span>
                        </div>
                        <div style="padding: 6px 10px; border: 1px solid #666; border-radius: 15px; white-space: nowrap">
                            <span>Mujer</span>
                        </div>

                    </div>

                </div>


                <hr />
                <div class="Busco-Para" >
                    <br />
                    <div class="busco">
                        <p class="busco-emoji" >👋</p>
                        <div class="busco-container" >
                            <span class="busco-b" >Busco...</span>
                            <div>
                                <span class="busco-eleccion">Hacer amigos</span>
                            </div>
                        </div>

                    </div>
                </div>
                <section class="Descripcion-perfil" >
                    <h4 class="acerca-de" >Acerca de mí</h4>
                    <textarea class="txt-descripcion" id="descripcion" placeholder="Escriba una descripción" ></textarea>
                </section>
                <div class="Sobre-mi" >
                    <article class="sobre-mi-article" >
                        <h4 style="font-weight:600; font-size:23px">Más sobre mí</h4>
                        <div class="sobre-mi-contenedor">
                            <div class="sobre-mi-opciones" >
                                <span>En la uni</span>
                            </div>
                            <div class="sobre-mi-opciones">
                                <span>Tiempo de calidad</span>
                            </div>
                            <div class="sobre-mi-opciones">
                                <span>Escorpio</span>
                            </div>
                        </div>
                    </article>

                    <div class="informacion-personal-usuario">
                        <div>
                            <span class="details">Horóscopo</span>
                            <%--<h4> Horóscopo</h4>--%>
                        </div>
                        <div class="input-box">
                            <select name="horoscopo">
                                <option value="Capricornio">Capricornio</option>
                                <option value="Acuario">Acuario</option>
                                <option value="Picis">Picis</option>
                                <option value="Aries">Aries</option>
                                <option value="Tauro">Tauro</option>
                                <option value="Geminis">Géminis</option>
                                <option value="Cancer">Cáncer</option>
                                <option value="Leo">Leo</option>
                                <option value="Virgo">Virgo</option>
                                <option value="Libra">Libra</option>
                                <option value="Escorpio">Escorpio</option>
                                <option value="Sagitario">Sagitario</option>
                            </select>
                        </div>
                        <%--<h4>Estudios</h4>--%>
                        <span class="details">Estudios</span>
                        <div class="input-box">
                            <select name="estudios">
                                <option value="Licenciatura">Licenciatura</option>
                                <option value="Uni">En la uni</option>
                                <option value="Doctorado">Doctorado</option>
                                <option value="Posgrado">Posgrado</option>
                                <option value="Master">Máster</option>
                                <option value="Escuela">Escuela</option>
                            </select>
                        </div>
                        <%--<h4>Lenguaje de amor</h4>--%>
                        <span class="details">Lenguaje de amor</span>
                        <div class="input-box">
                            <select name="lenguaje-amor">
                                <option value="Detalles">Detalles significativos</option>
                                <option value="Regalos">Regalos</option>
                                <option value="ContactoFisico">Contacto Fisico</option>
                                <option value="CosasBonitas">Me digan cosas bonitas</option>
                                <option value="TiempoCalidad">Tiempo de Calidad</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <section class="Estilo-vida" >
                    <h4 class="estilo-vida-titulo" >Estilo de vida</h4>
                    <div class="estilo-vida-contenedor" >
                        <div class="estilo-vida-opciones">
                            <span>Peces</span>
                        </div>
                        <div  class="estilo-vida-opciones">
                            <span>A veces</span>
                        </div>
                        <div  class="estilo-vida-opciones">
                            <span>Dieta vegana</span>
                        </div>
                    </div>

                    <div class="informacion-personal-usuario">
                        <%--<h4> Mascotas</h4>--%>
                        <span class="details">Mascotas</span>
                        <div class="input-box">

                            <select name="mascotas">
                                <option value="Perro">Perro</option>
                                <option value="Gato">Gato</option>
                                <option value="Peces">Peces</option>
                                <option value="Reptil">Reptil</option>
                                <option value="Anfibio">Anfibio</option>
                                <option value="NoTengoMeGustan">No tengo, pero me gustan</option>
                                <option value="Conejo">Conejo</option>
                                <option value="Tortuga">Tortuga</option>
                                <option value="NoTengo">No tengo mascotas</option>
                                <option value="QuieroUna">Quiero una mascota</option>
                                <option value="Alergico">Alérgica a las mascotas</option>
                                <option value="Otro">Otro</option>
                            </select>
                        </div>
                        <span class="details"> ¿Ejercicio?</span>
                        <%--<h4> ¿Ejercicio?</h4>--%>
                        <div class="input-box">
                            <select name="ejercicio">
                                <option value="CadaDia">Cada día</option>
                                <option value="AMenudo">A menudo</option>
                                <option value="AVeces">A veces</option>
                                <option value="Nunca">Nunca</option>
                            </select>
                        </div>
                        <span class="details"> ¿Preferencias alimentarias?</span>
                        <%--<h4>¿Preferencias alimentarias?</h4>--%>
                        <div class="input-box">
                            <select name="alimentos">
                                <option value="Vegana">Dieta vegana</option>
                                <option value="Vegetariana">Dieta Vegetariana</option>
                                <option value="Carnivora">Dieta carnívora</option>
                                <option value="Omnivora">Dieta omnívora</option>
                                <option value="Otros">Otros</option>
                            </select>
                        </div>
                    </div>
                </section>
                <hr />
                <section class="Intereses" >
                    <h4 class="Intereses-titulo" >Intereses</h4>
                    <div class="intereses-contenedor">
                        <div class="intereses-opciones" >
                            <span>Arte</span>
                        </div>
                        <div  class="intereses-opciones">
                            <span>Manga</span>
                        </div>
                        <div  class="intereses-opciones">
                            <span>Gym</span>
                        </div>
                        <div  class="intereses-opciones">
                            <span>Cosplay</span>
                        </div>
                        <div class="intereses-opciones">
                            <span>Esgrima</span>
                        </div>
                    </div>
                     <span class="details">Selecciona intereses que te gustaría compartir con las personas </span>
                    <%--<h5>Selecciona intereses que te gustaría compartir con las personas</h5>--%>
                    <div class="input-box">
                        <select name="intereses-perfil" id="intereses-perfil" multiple  style="max-width: 75%; min-width: 75%; min-height: 150px; max-height: 150px;">
                            <option value="HarryPotter">Harry Potter</option>
                            <option value="Spa">Spa</option>
                            <option value="Sushi">Sushi</option>
                            <option value="Hockey">Hockey</option>
                            <option value="Viajar">Viajar</option>
                            <option value="Gimnasia">Gimnasia</option>
                            <option value="Acuario">Acuario</option>
                            <option value="Correr">Correr</option>
                            <option value="Cine">Cine</option>
                            <option value="Hiphop">Hiphop</option>
                            <option value="Guitarristas">Guitarristas</option>
                            <option value="RedesSociales">Redes sociales</option>
                            <option value="Fotografia">Fotografía</option>
                            <option value="Brunch">Brunch</option>
                            <option value="Voguing">Voguing</option>
                            <option value="Tenis">Tenis</option>
                            <option value="Cosplay">Cosplay</option>
                        </select>
                    </div>
                </section>
                <section class="Que-Busco" >
                    <%--<h4 style="font-weight:600; font-size:23px">Qué busco</h4>--%>
                    <span class="details">Qué busco</span>
                    <div class="input-box">
                        <select name="Que-Busco">
                        <option value="Amigos">Hacer amigos</option>
                        <option value="RelacionEstable">Relación estable</option>
                        <option value="NoClaro">No lo tengo claro</option>
                        <option value="RelacionYaVeremos">Relación, pero ya veremos</option>
                        <option value="CitasCortas">Citas cortas</option>
                    </select>
                    </div>
                </section>

                <section class="genero">
                    <span class="details">Género</span>
                    <%--<h4 style="/*font-weight:600; font-size:23px*/">Género</h4>--%>
                    <div class="input-box">
                        <select name="sexo">
                        <option value="Femenino">Femenino</option>
                        <option value="Masculino">Masculino</option>
                        <option value="noBinario">No binario</option>
                    </select>
                    </div>
                </section>
                <section class="orientacion-sexual" style="justify-content: left; flex-direction: column; display: flex; padding-bottom: 40px">
                    <%--<h4 style="font-weight:600; font-size:23px">Orientación sexual</h4>--%>
                    <span class="details">Orientación sexual</span>
                    <div class="input-box">
                        <select name="orientacion">
                        <option value="Hetero">Heterosexual</option>
                        <option value="Bisexual">Bisexual</option>
                        <option value="Gay">Gay</option>
                        <option value="Lesbiana">Lesbiana</option>
                        <option value="Pansexual">Pansexual</option>
                        <option value="Asexual">Asexual</option>
                        <option value="Queer">Queer</option>
                        <option value="Transexual">Transexual</option>
                        <option value="Bisexual">Demisexual</option>
                    </select>
                    </div>
                </section>
                <section class="VivoEn" >
                    <span class="details">Vivo en</span>
                    <%--<h4 style="/*font-weight:600; font-size:23px*/">Vivo en</h4>--%>
                    <div class="input-box">
                        <select name="VivoEn">
                        <option value="SanJose">San José</option>
                        <option value="Alajuela">Alajuela</option>
                        <option value="Cartago">Cartago</option>
                        <option value="Heredia">Heredia</option>
                        <option value="Guanacaste">Guanacaste</option>
                        <option value="Puntarenas">Puntarenas</option>
                        <option value="Limon">Limón</option>
                    </select>
                    </div>
                </section>
                <br />
                <div style="width: 100%; display: flex; justify-content: center;">

                    <p><input type="submit" value="Guardar" id="btnGuardar" class="buttonGuardar"></input></p>
                </div>
            </div>

        </div>
    </div>

			<%--  --%>
		</main>
		<footer class="main-footer" style="background:#8C2641">
        <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    
                    <div  style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <h4 style="text-align:center; font-weight:600; color:#ffff" >Información
                            <br />
                            TrustIn APSW 1C2023
                        </h4>
                        <img src="/Trustin_3Final/Imagenes/CUC-logo-blanco.png" alt="Imagen perfil" style="height:60px ; align-content:center; align-items:center; justify-content:center"/>
                        
                    </div>
                <div  style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                    <h4 style="text-align:center; font-weight:600; color:#fff">
                        G. Tarde Equipo 3
                            <br />
                            <p style="text-align:center; font-weight:500; color:#fff">William Araya Rodriguez <br /> Brenda Quesada Artavia <br /> Nathalia Ramirez Coto</p>
                     </h4>                    

                </div>
            </div>
    </footer>

	</div>

    </form>
</body>
</html>
