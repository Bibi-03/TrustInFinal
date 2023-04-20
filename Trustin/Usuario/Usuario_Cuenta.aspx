<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario_Cuenta.aspx.cs" Inherits="Trustin.Usuario.Usuario_Cuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="/Style/Usuario.css" />

    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>Usuario Cuenta</title>
</head>
<body>
    <form id="form1" runat="server">
        <input type="checkbox" id="menu-toggle">
        <div class="sidebar">
            <div class="side-header">
                <a href="cliquearMegusta.aspx" style="color: white; font-size: 24px">T<span>rustin</span></a>
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
                            <a href="Usuario_Dashboard.aspx" class="active">
                                <span class="las la-home"></span>
                                <small>Dashboard</small>
                            </a>
                        </li>
                        <li>
                            <a href="Usuario_Cuenta.aspx">
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
                            <a href="Geolocalizacion.aspx">
                                <span class="fa-solid fa-location-dot"></span>
                                <small>Geolocalización</small>
                            </a>
                        </li>
                        <li>
                            <a href="Usuario_Mensajeria.aspx">
                                <span class="fa-solid la-sms"></span>
                                <small>Mensajeria</small>
                            </a>
                        </li>
                        <li>
                            <a href="pruebaspersonalidad.aspx">
                                <span class="las la-clipboard-check"></span>
                                <small>Test de personalidad</small>
                            </a>
                        </li>
                        <li>
                            <a href="perfil.aspx">
                                <span class="las la-user"></span>
                                <small>Perfil</small>
                            </a>
                        </li>
                        <li>
                            <a href="historialActividades.aspx">
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
                    <h1>Cuenta</h1>
                    <small>Cuenta / Usuario</small>

                    <div class="logo-img" style="background-image: url(./img/proyecto1.png);"></div>
                </div>

                <div class="page-content">

                    <div class="analytics">

                        <div class="card">
                            <div class="card-head">
                                <h2>7852</h2>
                                <span class="las la-user-tag"></span>
                            </div>
                            <div class="card-progress">
                                <small>Mujeres online</small>
                                <div class="card-indicator">
                                    <div class="indicator"></div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-head">
                                <h2>3</h2>
                                <span class="las la-user-check"></span>
                            </div>
                            <div class="card-progress">
                                <small>Mensajes</small>
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
                                <h2>895</h2>
                                <span class="las la-user-friends"></span>
                            </div>
                            <div class="card-progress">
                                <small>Nuevos perfiles</small>
                                <div class="card-indicator">
                                    <div class="indicator"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="records table-responsive">
                        <div class="record-header">
                            <div class="main-config">
                                <h2>Configuración de tu cuenta</h2>
                                <br>


                                <div class="Div_agregar">
                                    <label style="font-family: sans-serif;">Tu correo</label>
                                    <input type="text" id="txtusercorreo" placeholder="william@gmail.com" name="name" value="" style="margin-left: 106px;" /><br>
                                    <br>

                                    <label>Actualizar Contraseña</label>
                                    <input type="text" id="txtusercont" placeholder="**********" name="name" value="" style="margin-left: 15px;" /><br>
                                    <br>

                                    <label>Tu nombre</label>
                                    <input type="email" id="txtusernombre" placeholder="William Araya" name="name" value="" style="margin-left: 97px;" /><br>
                                    <br>



                                    <hr class="solid" style="border-top: 3px solid #bbb; width: 400px;">
                                    <br>

                                    <h2>Configuración de tu sitio</h2>
                                    <br>

                                    <h4>Activar o desactivar mensajería volátil</h4>
                                    <br>

                                    <label class="switch">
                                        <input type="checkbox" checked>
                                        <span class="slider"></span>
                                    </label>
                                    <br>
                                    <br>

                                    <h4>Desactivar o eliminar la cuenta</h4>
                                    <br>

                                    <textarea id="txtmenacep" name="" rows="" cols="" placeholder="Razon para desactivar la cuenta"></textarea>
                                    <br>
                                    <br>

                                    <button type="button" class="bntNuevoRol btn btn-success" style="border: thin 1px; width: 140px; height: 25px">Eliminar</button>
                                    <br>
                                    <br>
                                    <hr class="solid" style="border-top: 3px solid #bbb; width: 400px;">
                                    <br>

                                    <h4>Notificaciones</h4>
                                    <br>

                                    <label>Match</label><input type="checkbox" style="margin-left: 33px;">

                                    <br>
                                    <br>
                                    <label>Flechazo</label><input type="checkbox" style="margin-left: 13px;">

                                    <br>
                                    <br>
                                    <label>Mensajes</label><input type="checkbox" style="margin-left: 10px;">

                                    <br>
                                    <br>
                                    <label>Email</label><input type="checkbox" style="margin-left: 38px;">
                                    <br>
                                    <br>
                                    <button type="button" class="btncambios3 btn btn-success" style="border: thin 1px; width: 140px; height: 25px">Guardar</button>

                                </div>
                            </div>
                        </div>
                    </div>
            </main>
            <footer>

                <h3>TrustIn IC-2023</h3>
                <h3>G. Tarde Equipo 3</h3>
                <i>William Araya Rodriguez</i>
            </footer>

        </div>

    </form>
</body>
</html>
