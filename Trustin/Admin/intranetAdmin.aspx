<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intranetAdmin.aspx.cs" Inherits="Trustin.Admin.intranetAdmin" %>

<!DOCTYPE html>
<html>
<!--  This source code is exported from pxCode, you can get more document from https://www.pxcode.io  -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>TrustIn</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="../ContentNathalia/fonts/icomoon/style.css">
    <link rel="icon" type="image/png" href="/Trustin_3F/ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="stylesheet" href="/Trustin_3F/ContentNathalia/css/owl.carousel.min.css">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/Trustin_3F/ContentNathalia/css/bootstrap.min.css">
    <%--<link href="../ContentNathalia/css/bootstrap/sidebar.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="/Trustin_3F/Style/Admin.css" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <!-- Style -->
    <link href="/Trustin_3F/ContentNathalia/css/styleAdmin.css" rel="stylesheet" />


    <link rel="icon" type="image/png" href="/Trustin_3F/ContentNathalia/images/LOGO-COLOR.png" />

</head>

<body>

    <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        <div class="side-header">
            <h3>T<span>rustin</span></h3>
        </div>
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(./img/profile.jpg);"></div>
                <h4></h4>
                <small>Administrador</small>
            </div>
            <div class="side-menu">
                <ul>
                    <li>
                        <a href="/Trustin_3F/Admin/Admin_Dashboard.aspx" class="active">
                            <span class="las la-home"></span>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3F/Admin/Admin_Config.aspx">
                            <span class="las la-user-cog"></span>
                            <small>Configuración Global</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3F/Admin/Admin_Agregar_Rol.aspx">
                            <span class="las la-plus-circle"></span>
                            <small>Agregar Rol</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3F/Admin/Admin_AdminRoles.aspx">
                            <span class="las la-plus-circle"></span>
                            <small>Administrar Roles</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3F/Admin/gestorPerfiles.aspx">
                            <span class="las la-id-card-alt"></span>
                            <small>Gestor de Perfiles</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3F/Admin/intereses.aspx">
                            <span class="fa-solid fa-wand-sparkles"></span>
                            <small>Intereses</small>
                        </a>
                    </li>
                    <li>
                        <a href="/Trustin_3F/Admin/ModuloEmparejamiento.aspx">
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
                        <span class="notify"><a style="color: white" href="/Trustin_3F/Admin/Notificaciones.aspx">4</a></span>
                    </div>

                    <div class="notify-icon">
                        <span class="las la-bell"></span>
                        <span class="notify"><a style="color: white" href="/Trustin_3F/Admin/Notificaciones.aspx">3</a></span>
                    </div>

                    <div class="user">
                        <div class="bg-img" style="background-image: url(./img/profile.jpg);"></div>
                        <span class="las la-power-off"></span>
                        <span>Logout</span>
                    </div>

                </div>
            </div>
        </header>

    </div>





    <script src="../ContentNathalia/js/jquery-3.3.1.min.js"></script>
    <script src="../ContentNathalia/js/popper.min.js"></script>
    <script src="../ContentNathalia/js/bootstrap.min.js"></script>
    <script src="../ContentNathalia/js/jquery.sticky.js"></script>
    <script src="../ContentNathalia/js/main.js"></script>
</body>
</html>
