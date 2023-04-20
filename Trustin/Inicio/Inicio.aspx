<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Trustin.Inicio.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TrustIn</title>
    <link rel="stylesheet" href="../Style/Inicio.css"/>
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
</head>
<body>
     <nav class="main-nav">
       <ul id="main-menu" class="main-menu">
            <li class="main-menu_item">
                <a href="Inicio.aspx" class="main-menu-link">
                    <img src="../Imagenes/logoBlanco.png"/ style="height:60px; width:80px; padding:3px; padding-left:10px">
                </a>
            </li>
           </ul>
       
        <%--<p>Trustin</p>--%>
        <div id="toggle-menu" class="toggle-menu">
            
            <label for="toggle-menu-checkbox">
                <img src="https://freesvg.org/img/menu-icon.png" alt="icon-menu"/>
            </label>
        </div>
        <input type="checkbox" class="toggle-menu__checkbox" id="toggle-menu-checkbox"/>
        <ul id="main-menu" class="main-menu">
            
            <li class="main-menu_item">
                <a href="InicioSesion.aspx" class="main-menu-link">Conéctate</a>
            </li>
            <li class="main-menu-item">
                <a href="Registro.aspx" class="main-menu-link">Registrarse</a>
            </li>
        </ul>
    </nav>
    <div class="w-100" style="min-height: 100vh; background-image: url('https://db82kmzzne7f2.cloudfront.net/ghost-bloges/2018/06/Enamorarse-en-extranjero.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover;">
            <h1 class="fs-1 text-primary w-100 text-center " style="color: #B70839; align-items: center; text-align: center; font-size: 36px; font-weight: 800; padding: 40px ">TrustIn</h1>
            <h2 style="color: #B70839; align-items:center; text-align:center; font-weight:600">
                Encuentra el amor en un mundo de conexiones
            </h2>
    </div>

    <div style="background-color:#fff; margin-top:auto; display:flex; flex-direction: column; align-items: center; justify-content: space-between; padding-bottom: 30px">
        <div style="width:100%; padding: 50px 0; display:flex; flex-wrap:wrap">
            <div style="font-size:19px; color: rgb(51,51,51); width:100%">
                <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    <div style="width:auto; background-color: rgb(255,255,255); margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        
                        <img src="../Imagenes/IconEstrella.jpg" alt="Imagen estrella" style="height:100px">
                        <h5 style="font-size: 16px; font-weight: 600; color: #222; margin: 10px 0; text-align: center; padding:20px">Encuentra a los solteros más <br />comprometidos</h5>
                    </div>
                    <div style="width:auto; background-color: rgb(255,255,255); margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <img src="../Imagenes/IconPerfil.jpg" alt="Imagen perfil" style="height:100px">
                        <h5 style="font-size: 16px; font-weight: 600; color: #222; margin: 10px 0; text-align: center; padding: 20px ">Perfiles detallados, búsqueda por <br />criterios y geolocalización</h5>
                    </div>
                    <div style="width:auto; background-color: rgb(255,255,255); margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <img src="../Imagenes/IconSercivioCitas.jpg" alt="Imagen servicio citas" style="height:100px">
                        <h5 style="font-size: 16px; font-weight: 600; color: #222; margin: 10px 0; text-align: center; padding: 20px">El servicio de citas más serio</h5>
                    </div>
                </div>
            </div>
        </div>
        <div style="background-color: #EEEDED; width:100%; display: flex; flex-direction: column; align-items: center;">
            <h2 style="color: #B70839; text-align: center; font-size: 32px; font-weight: 900; padding: 34px">
                ¿Por qué TRUSTIN?
            </h2>
            <h3 style="font-weight: 600; text-align: center; padding:20px">
                Encuentra el amor con la persona realmente adecuada para ti.
            </h3>
            <p style="text-align: center; padding: 24px">
                Nuestros usuarios buscan crear su historia, y nosotros hacemos de todo para asegurarnos que lo consigan.
            </p>
            <div class="imagenes-inicio" <%--style="align-items:center; justify-content:center;  display:flex; width: 100vw; background: #f0f;"--%> >
                <img src="../Imagenes/TrustInPerfiles.png" alt="Imagen TrustIn perfil"  style="height:430px; align-content:center; align-items:center; justify-content:center" >
            </div>
            <div style="width: 100%;">
                <p style="text-align: center; padding: 24px">
                Encuentra a quien encaja contigo usando la búsqueda por criterios y por nuestras sugerencias de perfiles.
            </p>
            </div>
        </div>
        <div" style="background-color: #fff; width: 100% ">
            <h2 style="color: black; align-items: center; text-align: center; font-weight: 600; padding: 20px">
                Confianza y seguridad
            </h2>
            <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    <div style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                       <p style="text-align: center; padding: 30px; justify-content:center">
                            Queremos que TrustIn sea para ti una página de citas segura <br />y divertida donde puedas conocer a muchas personas. <br />
                            La seguridad y protección de tus datos personales es nuestra mayor prioridad,<br /> de tal manera garantizamos a nuestros miembros <br />un sitio seguro para conservar un vínculo mucho más efectivo.
                        </p> 
                    </div>
                    <div style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                         <img src="../Imagenes/seguridad.jpg" alt="Imagen seguridad" style="height:240px; padding-bottom:40px; align-items:center; align-content:center; justify-content:center" />
                    </div>
            </div>

            
        </div>
        <div class="w-100 text-center" style="background-color: #EEEDED; width: 100% ">
            <h2 style="color: black; align-items: center; text-align: center; font-weight: 600; padding: 20px">
                Control en tu perfil
            </h2>
            <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    <div style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <img src="../Imagenes/Perfiles.jpg" alt="Imagen perfil" style="height:160px; padding-bottom:20px;align-content:center; align-items:center; justify-content:center " />
                    </div>
                    <div style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <p style="text-align: center; padding: 40px">
                            Puedes visitar perfiles según tus preferencias para recibir <br /> invitaciones de aquellos que cumplan tus criterios.
                        </p>
                    </div>
                    
            </div>
         </div>
        <div class="w-100 text-center" style="background-color: #fff; width: 100%">
            <h2 style="color: black; align-items:center; text-align:center; font-weight:600; padding:20px">
                Gran variedad para tu perfil
            </h2>
            <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    
                    <div style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <p style="text-align:center; padding-bottom:40px;">
                            TrustIn es un espacio lleno de oportunidades para conectar <br />con los demás de manera sencilla y segura.
                            <br /><br />
                            Regístrate o crea tu perfil de citas perfecto para conseguir <br />la oportunidad perfecta y encontrar a tu persona ideal.
                            <br /><br />
                            Conocerás personas de una misma localidad, y podrás concretar <br />citas para conocer gente y buscar una relación estable.
                        </p>  
                    </div>
                <div style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <img src="../Imagenes/Pareja.jpg" alt="Imagen perfil" style="height:260px; padding-bottom:40px ; align-content:center; align-items:center; justify-content:center"/>
                    </div>
            </div>


            
        </div>
    </div>
    <footer class="main-footer" style="background:#B70839">
        <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    
                    <div <%--class="footer-left"--%> style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <h4 style="text-align:center; font-weight:600; color:#ffff" >Información
                            <br />
                            TrustIn APSW 1C2023
                        </h4>
                        <img src="../Imagenes/CUC-logo-blanco.png" alt="Imagen perfil" style="height:60px ; align-content:center; align-items:center; justify-content:center"/>
                        
                    </div>
                <div <%--class="footer-right"--%> style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; justify-content:center;flex-direction:column">
                    <h4 style="text-align:center; font-weight:600; color:#fff">
                        G. Tarde Equipo 3
                            <br />
                            <p style="text-align:center; font-weight:500; color:#fff">William Araya Rodriguez <br /> Brenda Quesada Artavia <br /> Nathalia Ramirez Coto</p>
                     </h4>                    

                </div>
            </div>
    </footer>
</body>
</html>
