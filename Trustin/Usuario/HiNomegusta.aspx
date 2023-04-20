﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiNomegusta.aspx.cs" Inherits="Trustin.Usuario.HiNomegusta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <title>TrustIn</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet"/>
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="../ContentNathalia/css/owl.carousel.min.css"/>
      
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../ContentNathalia/css/bootstrap.min.css"/>
    <link href="/Trustin_3Final/Style/Usuario.css" rel="stylesheet" />
    <!-- Style -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/style.css"/>

      <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
       <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"/>
</head>

<body>
    <style type="text/css" media="screen">
          html, body {
              overflow: hidden;
          }
      </style>
    <form runat="server">
   <input type="checkbox" id="menu-toggle"/>
    <div class="sidebar">
        <div class="side-header">
            <a href="/Trustin_3Final/Usuario/cliquearMegusta.aspx" style="color:white;font-size:24px">T<span>rustin</span></a>
        </div>
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img1" style="border:none;"><asp:Image style="width:80px;height:88px;border-radius:80px;" ID="img1" runat="server" /></div>
                <h4></h4>
                <small> <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
               </small>
            </div>
            <div class="side-menu">
                <ul>
                        <li>
                            <a href="/Trustin_3Final/Usuario/Usuario_Dashboard.aspx" class="active">
                                <span class="las la-home"></span>
                                <small>Dashboard</small>
                            </a>
                        </li>
                        <li>
                            <a href="/Trustin_3Final/Usuario/Usuario_Cuenta.aspx">
                                <span class="las la-user-cog"></span>
                                <small>Cuenta</small>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="las la-thumbs-up"></span>
                                <small>Intereses</small>
                            </a>
                        </li>
                           <li>
                            <a href="/Trustin_3Final/Usuario/Geolocalizacion.aspx">
                                <span class="fa-solid fa-location-dot"></span>
                                <small>Geolocalización</small>
                            </a>
                        </li>
                     <li>
                        <a href="/Trustin_3Final/Usuario/pruebaspersonalidad.aspx">
                            <span class="las la-clipboard-check"></span>
                            <small>Test de personalidad</small>
                        </a>
                    </li>
                        <li>
                            <a href="/Trustin_3Final/Usuario/perfil.aspx">
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

    <div class="main-content" >

        <header >
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
						<span class="notify"><a style="color:white" href="/Trustin_3Final/Usuario/Notificaciones.aspx">4</a></span>
					</div>

						<div class="notify-icon">
						<span class="las la-bell"></span>
						<span class="notify"><a style="color:white" href="/Trustin_3Final/Usuario/Notificaciones.aspx">3</a></span>					
					</div>	

                    <div class="user">
                            <div class="bg-img" style="background-image: url(./img/profile.jpg);"></div>
                            <span class="las la-power-off"></span>
                            <asp:LinkButton ID="lnkLogout" runat="server" OnClick="lnkLogout_Click">
                                <asp:Label ID="lblLogoutText" runat="server" Text="Logout"></asp:Label>
                            </asp:LinkButton>
                        </div>

                </div>
            </div>
        </header>

        </div>

         
         
      

    <div class="container" style="overflow-x: auto;margin-bottom:10px;margin-top:40px">
        <h3 style="color: #8C2641; font-size: 22px; margin-bottom: 10px;margin-top:15px; margin: 25px; text-align: center"><i style="margin-right:5px" class="fas fa-thumbs-o-down"></i>   No me gusta</h3>
        <table class="table" runat="server" style="width:100%; height: 400px; margin-top: 20px; margin-bottom: 20px; padding: 5px; background-color: #D9D9D9; border-radius: 5px">

            <tbody>
                <tr style="margin:10px">
                    <th scope="row">
                        <img src="" style="border-radius:50px;width:50px;height:50px;background-color:white" /></th>
                    <td style="font-size:12px"></td>

                    <td style="text-align:right"><a href="#" class="button" style="font-size: 18px; margin-top: 20px; margin-bottom: 20px; background-color: #C4C2C2; color: black;border-radius: 20px;width:40px;height:50px"><i class="fas fa-ellipsis-h"></i></a></td>
                </tr>

              

            </tbody>

        </table>

    </div>
        </form>
     <footer class="text-center text-white" style="background-color: #f1f1f1;">
                <!-- Grid container -->

                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-center text-dark p-3" style="background-color: #FAACC4; position: fixed; bottom: 0%; width: 100%;">
                    © 2023 Copyright
    <p class="text-dark">Desarrollado por William Rodríguez-Brenda Quesada-Nathalia Ramírez</p>

                </div>
                <!-- Copyright -->
            </footer>
    <script src="../ContentNathalia/js/jquery-3.3.1.min.js"></script>
    <script src="../ContentNathalia/js/popper.min.js"></script>
    <script src="../ContentNathalia/js/bootstrap.min.js"></script>
    <script src="../ContentNathalia/js/jquery.sticky.js"></script>
    <script src="../ContentNathalia/js/main.js"></script>
</body>
</html>
