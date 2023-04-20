<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Config.aspx.cs" Inherits="Trustin.Admin.Admin_Config" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" />
    <link rel="stylesheet" href="/Trustin_3F/Style/Admin.css" />
    <link rel="" href="probemos.js" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <title>Configuracion General</title>
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
                            <a href="/Trustin_3F/Admin/Admin_Dashboard.aspx" >
                                <span class="las la-home"></span>
                                <small>Dashboard</small>
                            </a>
                        </li>
                        <li>
                            <a href="/Trustin_3F/Admin/Admin_Config.aspx" class="active">
                                <span class="las la-user-cog"></span>
                                <small>Configuración Global</small>
                            </a>
                        </li>
                        <li>
                            <a href="/Trustin_3F/Admin/Admin_Agregar_Usuario.aspx">
                                <span class="las la-user-plus"></span>
                                <small>Agregar Usuario</small>
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
                            <span class="notify"><a style="color: white" href="/Trustin_3F/Admin/
Notificaciones.aspx">4</a></span>
                        </div>

                        <div class="notify-icon">
                            <span class="las la-bell"></span>
                            <span class="notify"><a style="color: white" href="/Trustin_3F/Admin/
Notificaciones.aspx">3</a></span>
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
                    <h1>Configuración Global</h1>
                    <small>Configuración del sitio</small>
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
                            <h2>Configuración del Sitio</h2>
                            <br />
                            <div style="justify-content: center; align-items: center; display: flex; flex-direction: column; padding-bottom: 100px">

                                <div style="justify-content: center; align-items: center; display: flex; flex-direction: column">
                                </div>
                                <div class="container" style="padding: 40px; width: 500px">

                                    <div class="content">
                                        <h4>Configuración General</h4>
                                        <br />
                                        <div class="user-details">

                                            <div class="input-box">
                                                <span class="details">Correo del sitio</span>
                                                <asp:TextBox type="text" ID="txtemail" placeholder="Email" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Mensajería volátil</span>
                                                <asp:DropDownList ID="ddlmensajeria" runat="server">
                                                    <asp:ListItem Value="1">30 Segundos</asp:ListItem>
                                                    <asp:ListItem Value="2">45 Segundos</asp:ListItem>
                                                    <asp:ListItem Value="3">1 Minuto</asp:ListItem>
                                                    <asp:ListItem Value="4">2 Minutos</asp:ListItem>
                                                    <asp:ListItem Value="5">Desactivar</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>
                                            <div class="input-box">
                                                <span class="details">Desconectar el sitio</span>
                                                <asp:TextBox ID="txtdesconectar" runat="server"></asp:TextBox>

                                            </div>

                                            <asp:Button Style="background-color: #B70839; display: inline-block; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btnartoya" runat="server" OnClick="btnartoya_Click" Text="Guardar Configuración" />
                                            <div class="button-register">
                                                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

                                            </div>
                                            <div class="input-box">
                                                <h4></h4>
                                                <br />
                                            </div>

                                            <br />
                                            <hr class="solid" style="border-top: 3px solid #bbb; width: 400px;" />
                                            <h2>Mensajes de salida correo</h2>
                                            <br />
                                            <br />
                                            <div class="input-box">
                                                <h4>Mensaje de aceptación</h4>
                                                <br />
                                            </div>


                                            <div class="input-box">
                                                <span class="details">Mensaje de correo</span>
                                                <textarea id="txtmenacep" name="mensajeaceptacion" rows="" cols="" placeholder="Mensaje de aceptación"></textarea>
                                            </div>
                                            <div class="input-box">
                                                <h4></h4>
                                                <br />
                                            </div>
                                            <div class="input-box">
                                                <h4>Mensaje de rechazo</h4>
                                                <br />
                                            </div>


                                            <div class="input-box">
                                                <span class="details">Mensaje de correo</span>
                                                <textarea id="txtmenrec" name="mensajerechazo" rows="" cols="" placeholder="Mensaje de rechazo"></textarea>
                                            </div>
                                            <div class="input-box">
                                                <h4></h4>
                                                <br />
                                            </div>
                                        </div>
                                        <div class="button-register">
                                            <asp:Button type="submit" Style="background-color: #B70839; display: inline-block; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btnadd" runat="server" OnClick="btnadd_Click" OnClientClick="function()" Text="Guardar Configuración" />

                                        </div>
                                    </div>
                                </div>
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
