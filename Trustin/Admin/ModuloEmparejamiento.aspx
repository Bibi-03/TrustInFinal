<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloEmparejamiento.aspx.cs" Inherits="Trustin.Admin.ModuloEmparejamiento" %>

<!DOCTYPE html>
<html>
<!--  This source code is exported from pxCode, you can get more document from https://www.pxcode.io  -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>TrustIn</title>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
    <link href="../ContentNathalia/toggle/fonts/icomoon/style.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <link href="/Trustin_3Final/ContentNathalia/toggle/css/owl.carousel.min.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->

    <link href="/Trustin_3Final/ContentNathalia/toggle/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Style -->
    <link href="/Trustin_3Final/ContentNathalia/toggle/css/style.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/owl.carousel.min.css">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/bootstrap.min.css">
    <%-- <link href="../ContentNathalia/css/bootstrap/sidebar.css" rel="stylesheet" />--%>
    <!-- Style -->
    <link href="/Trustin_3Final/ContentNathalia/css/styleAdmin.css" rel="stylesheet" />


    <link href="/Trustin_3Final/Style/Admin.css" rel="stylesheet" />


    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>


<body style="background-image: url(../ContentNathalia/images/luxa.org-opacity-changed-LOGO-COLOR.png); background-size: 50%; background-repeat: no-repeat; background-position: center; margin: 0; height: 100vh;">
    <style type="text/css" media="screen">
        html, body {
            overflow: hidden;
        }
    </style>
    <script>
        function alertaCita() {
            Swal.fire("Exito", "Datos agregados con éxito.", "success");
            setTimeout(function () {
                location.reload();
                window.location.href = "ModuloEmparejamiento.aspx";
            }, 5000);/*funcion de javascript para recargar, 2 segundos*/
        }
    </script>
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
                        <a href="/Trustin_3Final/Admin/Admin_Dashboard.aspx" >
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
                        <a href="/Trustin_3Final/Admin/ModuloEmparejamiento.aspx" class="active">
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


    <form class="container text-center" runat="server" style="width: auto; height: auto; background-color: none; border: none; margin-top: 80px; margin-bottom: 10px; padding: 5px; border-radius: 5px; display: grid; justify-content: center; align-items: center;">
        <h3 id="modulo" style="color: #8C2641; font-size: 20px; text-align: center"><b>Módulo de emparejamiento</b></h3>
        <br />

        <div class="container text-center">
            <h5 id="intereses" style="color: #8C2641; font-size: 20px; text-align: center; margin-bottom: 5px; margin-top: 5px"># de intereses en común</h5>
            <asp:DropDownList class="icon-select-group form-control" ID="ddlInteresesComun" runat="server" Style="text-align: center; background-color: #F4E5E5; width: 100%; height: auto;">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>
            <br />
            <h5 id="completado" style="color: #8C2641; font-size: 20px; text-align: center; margin-bottom: 5px; margin-top: 5px">% del perfil completado</h5>
            <asp:DropDownList class="icon-select-group form-control" ID="ddlPorcentaje" runat="server" Style="text-align: center; background-color: #F4E5E5; width: 100%; height: auto;">
                <asp:ListItem>10%</asp:ListItem>
                <asp:ListItem>20%</asp:ListItem>
                <asp:ListItem>30%</asp:ListItem>
                <asp:ListItem>40%</asp:ListItem>
                <asp:ListItem>50%</asp:ListItem>
                <asp:ListItem>60%</asp:ListItem>
                <asp:ListItem>70%</asp:ListItem>
                <asp:ListItem>80%</asp:ListItem>
                <asp:ListItem>90%</asp:ListItem>
                <asp:ListItem>100%</asp:ListItem>
            </asp:DropDownList>
            <br />

            <h5 id="perfilverificado" style="color: #8C2641; font-size: 20px; text-align: center; margin-bottom: 5px; margin-top: 5px">Perfil verificado</h5>
            <asp:DropDownList class="icon-select-group form-control" ID="ddlperfilverificado" runat="server" Style="text-align: center; background-color: #F4E5E5; width: 100%; height: auto;">
                <asp:ListItem>Sí</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>

            <div>

                <div class="container">

                    <asp:Button runat="server" ID="btnGuardar" Text="Guardar" Style="border-radius: 50px; border: none; padding: 5px" OnClick="btnGuardar_Click" />
                </div>

            </div>


            <%--              <div><button id="btnGuardar"  style="border-radius:50px;border:none; padding:9px" OnClick="btnGuardar_Click" ><i style="margin-right:5px" class="fas fa-save"></i>Guardar</button></div>--%>
        </div>





    </form>





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



