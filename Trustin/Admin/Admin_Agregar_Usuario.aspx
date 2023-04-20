<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Agregar_Usuario.aspx.cs" Inherits="Trustin.Admin.Admin_Agregar_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" />
    <link rel="stylesheet" href="/Trustin_3Final/Style/Admin.css" />
    <link rel="" href="probemos.js" />
    <link rel="icon" type="image/png" href="Trustin_3FinalContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <title>Agregar Usuario</title>
</head>
<body>
    <form id="formAddUsuario" runat="server">
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
                            <a href="/Trustin_3Final/Admin/Admin_Agregar_Rol.aspx"  class="active">
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
                            <a href="/Trustin_3Final/Admin/gestorPerfiles.aspx">
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
                            <asp:LinkButton ID="lnkLogout" runat="server" OnClick="lnkLogout_Click">
                                <asp:Label ID="lblLogoutText" runat="server" Text="Logout"></asp:Label>
                            </asp:LinkButton>
                        </div>

                    </div>
                </div>
            </header>

            <main>
                <div class="page-header">
                    <h1>Agregar un usuario</h1>
                    <small>Agregar usuario</small>
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
                                <h2>53</h2>
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
                                <h2>0</h2>
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
                            <h2>Agregar un usuario</h2>
                            <br />
                            <div style="justify-content: center; align-items: center; display: flex; flex-direction: column; padding-bottom: 100px">

                                <div class="container" style="padding: 40px; height: 900px; width: 800px">

                                    <div class="content">

                                        <div class="user-details">
                                            <div class="input-box">
                                                <span class="details">Nombre del colaborador</span>
                                                <asp:TextBox type="text" name="nombre" ID="txtnombre" runat="server" placeholder="Nombre del colaborador"></asp:TextBox>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Apellido</span>
                                                <asp:TextBox type="text" name="apellido" ID="txtapellido" runat="server" placeholder="Apellido del colaborador"></asp:TextBox>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Contraseña</span>
                                                <asp:TextBox type="password" name="contraseña" ID="txtcontraseña" runat="server" placeholder="Escriba su contraseña"></asp:TextBox>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Correo electrónico</span>
                                                <asp:TextBox type="mail" name="email" ID="txtemail" runat="server" placeholder="Correo del colaborador"></asp:TextBox>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Fecha de nacimiento</span>
                                                <asp:TextBox type="date" name="fechan" ID="txtfechanac" runat="server" value="2023-01-01" min="1950-01-01" max="2005-12-31" placeholder="Fecha de nacimiento"></asp:TextBox>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Fecha de Ingreso</span>
                                                <asp:TextBox type="date" name="fechai" ID="txtfecing" runat="server" value="2023-01-01" min="1950-01-01" max="2023-12-31" placeholder="Fecha de Ingreso"></asp:TextBox>
                                            </div>

                                            <div class="input-box">
                                                <span class="details">Rol</span>
                                                <asp:DropDownList ID="ddlrol" runat="server">
                                                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                                                    <asp:ListItem Value="2">Verificador</asp:ListItem>
                                                    <asp:ListItem Value="3">Usuario</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="input-box">
                                                <span class="details">Estado</span>
                                                <asp:DropDownList ID="ddlestado" runat="server">
                                                    <asp:ListItem Value="1">Activo</asp:ListItem>
                                                    <asp:ListItem Value="2">Inactivo</asp:ListItem>
                                                    <asp:ListItem Value="3">Eliminado</asp:ListItem>
                                                    <asp:ListItem Value="4">Bloqueado</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="button-register">
                                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                            <asp:Button type="submit" Style="background-color: #B70839; display: inline-block; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btnadd" runat="server" OnClick="btnadd_Click" OnClientClick="function()" Text="Registrar" />
                                            <br />
                                            <br />
                                            <asp:Button type="submit" Style="background-color: #B70839; display: inline-block; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btnmodify" runat="server" OnClick="btnmodify_Click" OnClientClick="function()" Text="Modificar" />
                                            <br />
                                            <br />
                                            <asp:Button type="submit" Style="background-color: #B70839; display: inline-block; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btndelete" runat="server" OnClick="btndelete_Click" OnClientClick="function()" Text="Eliminar" />
                                            <br />
                                            <br />
                                        </div>
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
    <script type="text/javascript" src="Scripts/Admin.js"></script>
</body>
</html>
