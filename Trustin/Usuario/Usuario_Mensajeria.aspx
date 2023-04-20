<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario_Mensajeria.aspx.cs" Inherits="Trustin.Usuario.Usuario_Mensajeria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usuario Mensajeria</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" />
    <link rel="stylesheet" href="/Style/Admin.css" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="/Style/Usuario.css" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />

</head>
<body>

    <form id="form1" runat="server">
        <input type="checkbox" id="menu-toggle" />
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
                            <a href="Usuario_Cuenta.html">
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
                    <h1>Mensajería</h1>
                    <small>Usuario / Mensajería </small>
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
                            <h1>Mensajería</h1>



                            <div>
                                <table>
                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; text-align: right">
                                            <strong>Usuario</strong>:</td>
                                        <td style="width: 94px">
                                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                            <asp:Button ID="brnadd" runat="server" Width="100px" Height="40px" OnClick="brnadd_Click" Text="Agregar" Font-Bold="True" />
                                            <asp:Label ID="lbluname" runat="server" Font-Bold="True" ForeColor="#004000"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 260px"></td>
                                        <td style="width: 94px; height: 260px">
                                            <asp:TextBox ID="txtmsg" runat="server" Height="250px" TextMode="MultiLine" Width="472px"></asp:TextBox>
                                            <asp:TextBox ID="txtsend" runat="server" Width="384px" Height="40px" TextMode="MultiLine"></asp:TextBox>
                                            <asp:Button ID="btnsend" runat="server" Width="100px" OnClick="btnsend_Click" Height="40px" Text="SEND"></asp:Button>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <iframe frameborder="no" height="600" scrolling="Yes" src="msg.aspx" width="800"></iframe>

                                        </td>
                                    </tr>

                                </table>

                            </div>





                        </div>



                    </div>
                </div>
            </main>
            <footer>

                <h3>TrustIn IC-2023</h3>
                <h3>G. Tarde Equipo 3</h3>
            </footer>

        </div>
    </form>
</body>
</html>
