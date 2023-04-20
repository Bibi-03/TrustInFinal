<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Agregar_Rol.aspx.cs" Inherits="Trustin.Admin.Admin_Agregar_Rol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1" />
    <link rel="stylesheet" href="/Trustin_3Final/Style/Admin.css" />
    <link rel="" href="probemos.js" />

    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <title>Agregar un Rol</title>
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
                            <a href="/Trustin_3Final/Admin/Admin_Dashboard.aspx" class="active">
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
                            <a href="#">
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
                    <asp:Label for="menu-toggle" runat="server">
                  <span class="las la-bars"></span>
                    </asp:Label>

                    <div class="header-menu">
                        <asp:Label for="" runat="server">
                        <span class="las la-search"></span>
                        </asp:Label>

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
                    <h1>Agregar un Rol</h1>
                    <small>Agregar rol</small>
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
                            <h2>Agregar un rol</h2>
                            <br />
                            <div style="justify-content: center; align-items: center; display: flex; flex-direction: column; padding-bottom: 100px">

                                <div style="justify-content: center; align-items: center; display: flex; flex-direction: column">
                                </div>
                                <div class="container" style="padding: 40px">

                                    <div class="content">

                                        <div class="user-details">
                                            <div class="input-box">
                                                <span class="details">Nombre del rol</span>
                                                <asp:TextBox type="text" name="id" ID="txtid" placeholder="idrol" runat="server"></asp:TextBox>
                                                <asp:TextBox type="text" name="nombre" ID="txtnomrol" placeholder="Nombre Rol" runat="server"></asp:TextBox>

                                            </div>

                                            <div class="input-box">
                                                <span style="color: white;">Nombressssssssssssssss sssssssssssssssssssssssss  del rol</span>
                                            </div>


                                        </div>
                                        <div>
                                            <asp:Button type="submit" Style="background-color: #B70839; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;"
                                                ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Guardar" />
                                            <asp:Button type="submit" Style="background-color: #B70839; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btnmodify" runat="server" OnClick="btnmodify_Click" Text="Modificar" />
                                            <asp:Button type="submit" Style="background-color: #B70839; padding: 4px; margin: 1%; color: #fff; font-size: 20px; border-radius: 5px;" ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Borrar" />
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
