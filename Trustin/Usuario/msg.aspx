<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="msg.aspx.cs" Inherits="Trustin.Usuario.msg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usuario msg</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" />
    <link rel="stylesheet" href="/Trustin_3Final/Style/Admin.css" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1"/>
    <link rel="stylesheet" href="/Trustin_3Final/Style/Usuario.css" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
    <meta http-equiv="REFRESH" content="2"/>
</head>
<body>
    <form id="form1" runat="server">
        <input type="checkbox" id="menu-toggle" />
        <div class="sidebar">
            <div class="side-header">
                <a href="/Trustin_3Final/Usuario/cliquearMegusta.aspx" style="color: white; font-size: 24px">T<span>rustin</span></a>
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
                            <asp:LinkButton ID="lnkLogout" runat="server" OnClick="lnkLogout_Click">
                                <asp:Label ID="lblLogoutText" runat="server" Text="Logout"></asp:Label>
                            </asp:LinkButton>
                        </div>

                    </div>
                </div>
            </header>

            <main>
                <div class="page-header">
                    <h1>MSG</h1>
                    <small>Prueba / MSG</small>
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
                                <%--<h2>7852</h2>--%>
                                <h2>
                                    <asp:Label ID="lbltotalmujeres" runat="server" Text="Label"></asp:Label></h2>

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
                                <h2>0</h2>
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
                                <%--<h2>895</h2>--%>
                                <h2>
                                    <asp:Label ID="lblTotalHombrres" runat="server" Text="Label"></asp:Label></h2>

                                <span class="las la-user-friends"></span>
                            </div>
                            <div class="card-progress">
                                <small>Total Hombres</small>
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
                            <div>
                                <asp:TextBox ID="txtmsg" runat="server" Height="290px" ReadOnly="True" TextMode="MultiLine"
                                    Width="490px"></asp:TextBox>
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
