<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="historialActividades.aspx.cs" Inherits="Trustin.Usuario.historialActividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>TrustIn</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" />
    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="stylesheet" href="../ContentNathalia/fonts/icomoon/style.css" />

    <link rel="stylesheet" href="../ContentNathalia/css/owl.carousel.min.css" />

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/bootstrap.min.css" />

    <!-- Style -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/style.css" />

    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://kit.fontawesome.com/ba9ac94804.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/Trustin_3Final/Style/Usuario.css" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>

    <style type="text/css" media="screen">
        html, body {
            overflow: hidden;
        }
    </style>


    <input type="checkbox" id="menu-toggle" />
    <div class="sidebar">
        <div class="side-header">
            <a href="/Trustin_3Final/Usuario/cliquearMegusta.aspx" style="color: white; font-size: 24px">T<span>rustin</span></a>
        </div>
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img1" style="border: none;">
                    <asp:Image Style="width: 80px; height: 88px; border-radius: 80px;" ID="img1" runat="server" /></div>
                <h4></h4>
                <small>
                    <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
                </small>
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
                        <a href="/Trustin_3Final/Usuario/Usuario_Mensajeria.aspx">
                            <span class="fa-solid la-sms"></span>
                            <small>Mensajeria</small>
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
                        <a href="/Trustin_3Final/Usuario/historialActividades.aspx" class="active">
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
                        <span class="notify"><a style="color: white" href="/Trustin_3Final/Usuario/Notificaciones.aspx">4</a></span>
                    </div>

                    <div class="notify-icon">
                        <span class="las la-bell"></span>
                        <span class="notify"><a style="color: white" href="/Trustin_3Final/Usuario/Notificaciones.aspx">3</a></span>
                    </div>

                    <div class="user">
                        <div class="bg-img" style="background-image: url(./img/profile.jpg);"></div>
                        <span class="las la-power-off"></span>

                    </div>

                </div>
            </div>
        </header>

    </div>






    <div class="container">
        <h3 style="color: #8C2641; font-size: 22px; margin-bottom: 40px; margin-top: 70px; text-align: center">Historial de Actividades</h3>
        <form class="container" runat="server" style="width: 300px; height: 300px; margin-top: 90px; margin-bottom: 30px; padding: 10px; text-align: left; background-color: #F2CED8; border-radius: 5px">
            <br />
            <br />
            <a href="#" class="button" style="font-size: 15px; margin-top: 10px; margin-bottom: 5px;"><i class="fas fa-heart" style="margin-right: 5px"></i>Me gusta</a>
            <a href="/Trustin_3Final/Usuario/HiMegusta.aspx" class="button" style="font-size: 15px; margin-top: 20px; margin-bottom: 20px; background-color: #8C2641; color: white; font-size: 15px; border-radius: 10px; margin-left: 110px;"><i class="fa-sharp fa-solid fa-eye"></i>Ver</a>
            <hr />
            <br />

            <a href="#" class="button" style="font-size: 15px; margin-top: 10px; margin-bottom: 5px;"><i class="fas fa-xmark" style="margin-right: 5px"></i>No me gusta</a>
            <a href="/Trustin_3Final/Usuario/HiNomegusta.aspx" class="button" style="font-size: 15px; margin-top: 20px; margin-bottom: 20px; background-color: #8C2641; color: white; font-size: 15px; border-radius: 10px; margin-left: 90px;"><i class="fa-sharp fa-solid fa-eye"></i>Ver</a>

            <hr />
            <br />
            <a href="#" class="button" style="font-size: 15px; margin-top: 10px; margin-bottom: 5px;"><i class="fas fa-kiss" style="margin-right: 5px"></i>Matches</a>
            <a href="/Trustin_3Final/Usuario/HiMatches.aspx" class="button" style="font-size: 15px; margin-top: 20px; margin-bottom: 20px; background-color: #8C2641; color: white; font-size: 15px; border-radius: 10px; margin-left: 115px;"><i class="fa-sharp fa-solid fa-eye"></i>Ver</a>


        </form>

    </div>
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


