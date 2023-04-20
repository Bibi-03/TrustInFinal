<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cliquearMegusta.aspx.cs" Inherits="Trustin.Usuario.cliquearMegusta" %>

<!DOCTYPE html>
<html>
<!--  This source code is exported from pxCode, you can get more document from https://www.pxcode.io  -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>TrustIn</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" />

    <link rel="stylesheet" href="../ContentNathalia/fonts/icomoon/style.css" />

    <link rel="stylesheet" href="../ContentNathalia/css/owl.carousel.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="	https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />

    <link href="/Trustin_3Final/Style/Usuario.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../ContentNathalia/css/bootstrap.min.css" />
    <%-- <link href="../ContentNathalia/css/card.css" rel="stylesheet" />--%>
    <!-- Style -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;1,500&display=swap"
        rel="stylesheet" />
    <link href="/Trustin_3Final/ContentNathalia/css/tinderCard.css" rel="stylesheet" />
    <link href="/Trustin_3Final/Style/styleT.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />

    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

<body>
    <%-- <style type="text/css" media="screen">
        html, body {
            overflow: hidden;
        }
    </style>--%>

    <input type="checkbox" id="menu-toggle" />
    <div class="sidebar">
        <div class="side-header">
            <a href="/Trustin_3Final/Usuario/cliquearMegusta.aspx" style="color: white; font-size: 24px">T<span>rustin</span></a>
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
                        <a href="/Trustin_3Final/Usuario/Usuario_Dashboard.aspx">
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

                        <a href="cs.aspx"><span>Logout</span></a>
                    </div>


                </div>
            </div>
        </header>

    </div>
    <%--    <ion-icon id="dislike" name="heart-dislike"></ion-icon>--%>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div id="swiper">
                    <div class="container">
                        <div class="cta">
                            <asp:Image ID="img" runat="server" Style="object-fit: cover;" />

                            <div class="text">
                                <b>
                                    <asp:Label ID="lblNombre" Style="font-size: 22px; color: white" runat="server" Text="Label"></asp:Label></b>
                                <b>
                                    <asp:Label ID="lblEdad" Style="font-size: 20px; color: white" runat="server" Text="Label"></asp:Label></b>
                                <div>
                                    <asp:Label ID="lblKilometro" Style="font-size: 17px; color: white" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="lblDescripcion" Style="font-size: 12px; color: white" runat="server" Text=""></asp:Label>
                                </div>
                                <br />
                                <%--<h6 style="font-size: 14px; color: white"><b>Lo básico</b></h6>
                    <hr style="background-color: white" />--%>
                                <h6 style="font-size: 14px; color: white"><b>Estilo de vida</b></h6>
                                <hr style="background-color: white" />
                                <h6 style="font-size: 14px; color: white"><b>Intereses</b></h6>
                            </div>




                            <div class="buttons" style="border: none;">
                                <%-- <div class="back">
                <button id="btnRegreso" style="border:none;background-color:white"><i class="fas fa-rotate-left" onclick="btnRegreso"></i> </button>
            </div>--%>
                                <div>
                                    <a class="no" id="btnNomegusta" href="/Trustin_3Final/Usuario/cliquearMegusta.aspx" style="border: none"><i class="fas fa-times"></i></a>
                                </div>
                                <div>
                                    <a class="heart" id="BtnMegusta" href="/Trustin_3Final/Usuario/cliquearMegusta.aspx" style="border: none">
                                        <i class="fas fa-heart"></i>
                                    </a>
                                </div>
                                <div>
                                    <button class="kiss" style="border: 1px solid white" onclick="btnSuspiro()"><i class="fas fa-kiss"></i></button>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <%--  <ion-icon id="like" name="heart"></ion-icon>--%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="../ContentNathalia/js/cardTinder.js"></script>
    <script src="../ContentNathalia/js/jquery-3.3.1.min.js"></script>
    <script src="../ContentNathalia/js/popper.min.js"></script>
    <script src="../ContentNathalia/js/bootstrap.min.js"></script>
    <script src="../ContentNathalia/js/jquery.sticky.js"></script>
    <script src="../ContentNathalia/js/main.js"></script>

</body>
</html>
