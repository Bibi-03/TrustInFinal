<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesionAdmin.aspx.cs" Inherits="Trustin.Inicio.InicioSesionAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <title>Inicio de Sesión</title>
     <link rel="stylesheet" href="/Trustin_3Final/Style/Inicio.css"/>
    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
</head>
<body >
    <nav class="main-nav">
       <ul id="main-menu" class="main-menu">
            <li class="main-menu_item">
                <a href="/Trustin_3Final/Inicio.aspx" class="main-menu-link">
                    <img src="/Trustin_3Final/Imagenes/logoBlanco.png"/ style="height:60px; width:80px; padding:3px; padding-left:10px">
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
                <a href="/Trustin_3Final/InicioSesion.aspx" class="main-menu-link"></a>
            </li>
            <li class="main-menu-item">
                <a href="/Trustin_3Final/Registro.aspx" class="main-menu-link"></a>
            </li>
        </ul>
    </nav>
    <div style="background: linear-gradient(#fff, #C55F7A); background-repeat: no-repeat; height: 100% ">
        <%--<div style="justify-content:center; align-items:center; display: flex; flex-direction:column">
            <img src="/Trustin_3Final/Imagenes/LogoColor.png"/ style="height:240px; width:230px; padding-top:70px">
        </div>--%>
     <div class="wrapper login">
        <div class="container">
            <div class="col-left">
                <div class="login-text">
                    <h1>TrustIn</h1>
                    <p>Bienvenido al sitio <br>administrativo de Trustin</p>
                </div>
            </div>
            <div class="col-right">
                <div class="login-form">
                    <h2>Inicio de sesión Administrativo</h2>
                    <form action="" runat="server">
                        <p> <label>Correo electrónico<span>*</span></label><asp:TextBox ID="txtEmail" type="text" placeholder="Correo electrónico" runat="server"></asp:TextBox> </p>
                        <p> <label>Contraseña<span>*</span></label><asp:TextBox ID="txtPassword" type="password" placeholder="Contraseña" runat="server"></asp:TextBox></p>
                        <asp:Button type="submit" OnClick="Button1_Click" ID="Button1" runat="server" Text="Ingresar" />
                       
                        <%--<p> <a href="">¿Olvidó la contraseña?</a> </p>--%>
                    </form>
                </div>
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
                        <img src="/Trustin_3Final//Imagenes/CUC-logo-blanco.png" alt="Imagen perfil" style="height:60px ; align-content:center; align-items:center; justify-content:center"/>
                        
                    </div>
                <div <%--class="footer-right"--%> style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
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
