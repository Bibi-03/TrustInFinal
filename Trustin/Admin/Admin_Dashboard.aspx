<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="Trustin.Admin.Admin_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrador Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" />
    <link rel="stylesheet" href="/Trustin_3F/Style/Admin.css" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />

</head>
<body>
    <form runat="server">
        <input type="checkbox" id="menu-toggle" />
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
                            <span class="notify"><a style="color: white" href="Notificaciones.aspx">4</a></span>
                        </div>

                        <div class="notify-icon">
                            <span class="las la-bell"></span>
                            <span class="notify"><a style="color: white" href="Notificaciones.aspx">3</a></span>
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

            <main>
                <div class="page-header">
                    <h1>Dashboard</h1>
                    <small>Home / Dashboard</small>
                    <div class="logo-img" style="background-image: url(./img/proyecto1.png);"></div>
                </div>

                <div class="page-content">

                    <div class="analytics">

                        <div class="card">
                            <div class="card-head">
                                <h2>3</h2>
                                <span class="las la-user-tag"></span>
                            </div>
                            <div class="card-progress">
                                <small>Roles</small>
                                <div class="card-indicator">
                                    <div class="indicator"></div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-head">
                                <h2>340,230</h2>
                                <span class="las la-user-check"></span>
                            </div>
                            <div class="card-progress">
                                <small>Perfiles en linea</small>
                                <div class="card-indicator">
                                    <div class="indicator"></div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-head">
                                <h2>8</h2>
                                <span class="las la-envelope"></span>
                            </div>
                            <div class="card-progress">
                                <small>Notificaciones</small>
                                <div class="card-indicator">
                                    <div class="indicator"></div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-head">
                                <h2>107,200</h2>
                                <span class="las la-user-friends"></span>
                            </div>
                            <div class="card-progress">
                                <small>Otros</small>
                                <div class="card-indicator">
                                    <div class="indicator"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="records table-responsive" style="background: linear-gradient(#fff, #C55F7A);">
                    <div class="record-header">
                        <div class="bienvenida">
                            <h2>Bienvenido </h2>
                            <asp:Label Style="font-size: 16px" ID="lblnombre" runat="server" Text=""></asp:Label>
                            <br>
                            <br>
                            <h3>Tienes {notification_number} notificaciones nuevas!!!</h3>
                            <h3>Tienes {email_number} correos nuevos!!!</h3>


                        </div>



                    </div>
                </div>
            </main>
            <footer class="text-center text-white" style="background-color: #f1f1f1;">
                <!-- Grid container -->

                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-center text-dark p-3" style="background-color: #FAACC4; position: fixed; bottom: 0px; height: 50px; justify-content: center; align-items: center; width: 100%; text-align: center">
                    © 2023 Copyright:
    <p class="text-dark">Desarrollado por William Rodríguez-Brenda Quesada-Nathalia Ramírez</p>

                </div>
                <!-- Copyright -->
            </footer>

        </div>
    </form>
</body>
</html>
