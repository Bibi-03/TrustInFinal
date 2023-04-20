<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaToken.aspx.cs" Inherits="Trustin.Inicio.PaginaToken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <title>Verificación de Token</title>
     <link rel="stylesheet" href="/Trustin_3Final/Style/Inicio.css"/>
    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
</head>
<body >
    <nav class="main-nav">
       <ul id="main-menu" class="main-menu">
            <li class="main-menu_item">
                <a href="/Trustin_3Final/Inicio/Inicio.aspx" class="main-menu-link">
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
                <a href="/Trustin_3Final/Inicio/InicioSesion.aspx" class="main-menu-link">Conéctate</a>
            </li>
            <li class="main-menu-item">
                <a href="/Trustin_3Final/Inicio/Registro.aspx" class="main-menu-link">Registrarse</a>
            </li>
        </ul>
    </nav>
    <div style="background: linear-gradient(#fff, #C55F7A); background-repeat: no-repeat; height: 100% ">
      
     <div class="wrapper login">
        <div class="container">
           
            <div class="col-left">
                <div class="login-text">
                    <h1>Verificación <br />de Token</h1>
                    <%--<p>¿No tienes una cuenta?<br>Créate una en minutos</p> <a href="Registro.aspx" class="btn">Registrarse</a>--%>
                </div>
            </div>
            <div class="col-right">
                <div class="login-form" style="justify-content:center; align-items:center">
                    <%--<h2>Verificación Token</h2>--%>
                    <form action="" runat="server">
                        <p> <label>Comprobar la aplicación de TrustIn para código de emparejamiento<span></span></label>
                            <br />
                            <asp:TextBox ID="txtToken" type="text" placeholder="Token" runat="server"></asp:TextBox> </p>
                        <asp:Button type="submit" OnClick="btnVerificarToken_Click" ID="ButtonToken1" runat="server" Text="Comprobar" />
                       
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
                        <img src="/Trustin_3Final/Imagenes/CUC-logo-blanco.png" alt="Imagen perfil" style="height:60px ; align-content:center; align-items:center; justify-content:center"/>
                        
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

