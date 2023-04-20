﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intereses.aspx.cs" Inherits="Trustin.Admin.intereses" %>

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
    <!-- Style -->
    <link href="/Trustin_3F/ContentNathalia/css/styleAdmin.css" rel="stylesheet" />



    <link href="/Trustin_3F/Style/Admin.css" rel="stylesheet" />


    <link rel="icon" type="image/png" href="/Trustin_3F/ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
    <%-- <style type="text/css" media="screen">
          html, body {
              overflow: hidden;
          }
      </style>--%>
    <style>
        .table-striped > tbody > tr:nth-child(odd) > td,
        .table-striped > tbody > tr:nth-child(odd) > th {
            background-color: #FAACC4;
        }

        .table-striped > tbody > tr:nth-child(even) > td,
        .table-striped > tbody > tr:nth-child(even) > th {
            background-color: black;
        }

        .table-striped > thead > tr > th {
            background-color: #D9D9D9;
        }


        .table-active {
            background-color: #fccddce9;
        }

            .table-active tr:nth-child(even) {
                background-color: #eaeaea;
            }

        .fas.fa-plus {
            position: relative;
            top: -2px; /* ajusta la posición vertical del icono según sea necesario */
            margin-right: 5px; /* ajusta la separación entre el icono y el botón según sea necesario */
        }

        .btn {
            display: inline-block;
            padding: 0.5rem 1rem;
            border-radius: 0.25rem;
            text-decoration: none;
            color: white;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn .fas {
            margin-left: 0.5rem;
        }
    </style>


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
                        <a href="/Trustin_3F/Admin/Admin_Dashboard.aspx" >
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
                        <a href="/Trustin_3F/Admin/intereses.aspx" class="active">
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
                        <a href="cerrars.aspx"><span>Logout</span></a>
                    </div>

                </div>
            </div>
        </header>

    </div>

    <div class="container" style="justify-content: center; align-items: center; margin-top: 20px; height: 100%">
        <h3 style="color: #8C2641; font-size: 22px; margin-bottom: 20px; margin-top: 95px; margin: 65px; text-align: center"><b><i style="margin-right:5px" class="fa-solid fa-screwdriver-wrench"></i>Intereses </b></h3>
        <form runat="server" style="width: 100%; height: auto;">


            <div class="container">
                <label style="color: black"><b>Búsqueda</b></label>
                <%-- <asp:DropDownList Style="border-radius: 8px;margin-right:20px" ID="ddlBusqueda" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">IdUsuario</asp:ListItem>

                <asp:ListItem Value="1">Email</asp:ListItem>

            </asp:DropDownList>--%>
                <asp:DropDownList ID="ddlCategorias" Style="border-radius: 8px" runat="server">
                    <asp:ListItem Value="1">Deportes</asp:ListItem>

                    <asp:ListItem Value="2">Diversión</asp:ListItem>
                    <asp:ListItem Value="3">Comida</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:TextBox ID="txtbuscar" Style="width: 100px; background-color: #5cb85c; border: none; color: black; background-color: lightgreen; border-radius: 8px; height: 38px;text-align:center" runat="server" placeholder="ID interes"></asp:TextBox>
                <asp:Button ID="btnBuscar" class="btn btn-success" runat="server" Text="Buscar" type="button" Style="color: white; margin-right: 15px" OnClick="btnBuscar_Click" />

            </div>

            <div class="container">
                <label style="color: black"><b>Añadir nuevo interes</b></label>
                <%--   <a href="AgregarInteres.aspx" id="btnAgregarInteres" class="btn btn-primary"> <span class="fas fa-plus" OnClick="btnAgregarInteres_Click"></span></a>--%>
                <asp:Button ID="Button1" runat="server" Text="Agregar" CssClass="btn btn-primary" OnClick="btnAgregarInteres_Click" />

            </div>


            <hr style="width: 100%" />


            <div class="table-responsive">
                <asp:GridView ID="gvCategoria" CssClass="table-active" runat="server" Style="border: 1px solid; border-color: #8C2641; width: 100%; justify-content: center; align-items: center; text-align: center;" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="7">
                    <Columns>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:Button ID="btnEliminar" OnClick="btnEliminar_Click" runat="server" class="btn btn-danger" Text="Eliminar" CommandName="Eliminar" CommandArgument="<%# Container.DataItemIndex %>" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>

        </form>
    </div>

    <footer class="text-center text-white" style="background-color: #f1f1f1;">
        <!-- Grid container -->

        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center text-dark p-3" style="background-color: #FAACC4; position: fixed; bottom: -30px; width: 100%">
            © 2023 Copyright:
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
