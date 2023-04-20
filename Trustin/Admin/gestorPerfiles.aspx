<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestorPerfiles.aspx.cs" Inherits="Trustin.Admin.gestorPerfiles" %>

<!DOCTYPE html>
<html>
<!--  This source code is exported from pxCode, you can get more document from https://www.pxcode.io  -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>TrustIn</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/bootstrap.min.css">
    <%--  <link href="../ContentNathalia/css/bootstrap/sidebar.css" rel="stylesheet" />--%>
    <!-- Style -->
    <link href="/Trustin_3Final/ContentNathalia/css/styleAdmin.css" rel="stylesheet" />


    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/Trustin_3Final/Style/Admin.css" />

    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://kit.fontawesome.com/ba9ac94804.js" crossorigin="anonymous"></script>
</head>

<body>

    <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        <div class="side-header">
            <h3>T<span>rustin</span></h3>
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
                        <a href="/Trustin_3Final/Admin/Admin_Dashboard.aspx">
                            <span class="las la-home"></span>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3Final/Admin/Admin_Config.aspx">
                            <span class="las la-user-cog"></span>
                            <small>Configuración Global</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3Final/Admin/Admin_Agregar_Rol.aspx">
                            <span class="las la-plus-circle"></span>
                            <small>Agregar Rol</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3Final/Admin/Admin_AdminRoles.aspx">
                            <span class="las la-plus-circle"></span>
                            <small>Administrar Roles</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3Final/Admin/gestorPerfiles.aspx" class="active">
                            <span class="las la-id-card-alt"></span>
                            <small>Gestor de Perfiles</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3Final/Admin/intereses.aspx">
                            <span class="fa-solid fa-wand-sparkles"></span>
                            <small>Intereses</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3Final/Admin/ModuloEmparejamiento.aspx">
                            <span class="fas fa-handshake"></span>
                            <small>Módulo de emparejamiento</small>
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
                        <span class="notify"><a style="color: white" href="/Trustin_3Final/Admin/Notificaciones.aspx">4</a></span>
                    </div>

                    <div class="notify-icon">
                        <span class="las la-bell"></span>
                        <span class="notify"><a style="color: white" href="/Trustin_3Final/Admin/Notificaciones.aspx">3</a></span>
                    </div>

                    <div class="user">
                        <div class="bg-img" style="background-image: url(./img/profile.jpg);"></div>
                        <span class="las la-power-off"></span>

                        <a href="/Trustin_3Final/Admin/cerrars.aspx"><span>Logout</span></a>
                    </div>

                </div>
            </div>
        </header>

    </div>



    <form class="container" runat="server" style="width: 100%; height: auto; margin-top: 80px; margin-bottom: 25px; padding: 60px; text-align: left; background-color: #F2F2F2; border-radius: 5px;">
        <div class="form-group" style="justify-content: center; align-items: center;">
            <h3 style="color: #8C2641; font-size: 22px; margin-bottom: 10px; margin-top: 10px; text-align: center"><b>Gestor de Perfiles</b></h3>

            <div class="d-flex justify-content-center">
                <div class="card" style="width: 12rem; justify-content: center; align-items: center; background-color: #E5E3E3; margin-top: 20px; margin-bottom: 20px; margin-right: 20px">


                    <div class="card-body text-center">
                        <h5 class="card-title" style="margin-left: 5px">Activos</h5>

                        <img src="/Trustin_3Final/ContentNathalia/images/sembrado-de-estrellas%20(1).png" style="width: 60%; height: auto" />
                        <br />
                        <a href="/Trustin_3Final/Admin/GestorPactivo.aspx" class="card-link">Ver</a>

                    </div>

                </div>

                <div class="card" style="width: 12rem; justify-content: center; align-items: center; background-color: #E5E3E3; margin-top: 20px; margin-bottom: 20px;">

                    <div class="card-body text-center">
                        <h5 class="card-title" style="margin-left: 5px">Inactivos</h5>

                        <img src="/Trustin_3Final/ContentNathalia/images/eliminar.png" style="width: 60%; height: auto" />
                        <br />
                        <a href="/Trustin_3Final/Admin/GestorPinactivo.aspx" class="card-link">Ver</a>

                    </div>

                </div>


            </div>
        </div>
    </form>



    <footer class="text-center text-white" style="background-color: #f1f1f1;">
        <!-- Grid container -->

        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center text-dark p-3" style="background-color: #FAACC4; position: fixed; bottom: -30px; width: 100%">
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


