<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pruebaspersonalidad.aspx.cs" Inherits="Trustin.Usuario.pruebaspersonalidad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Carrusel de preguntas</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Agregamos las referencias a Bootstrap y jQuery -->
    <link rel="stylesheet" href="/Style/Usuario.css" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/Style/Usuario.css" />
    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
       <style>
        /* Estilos para el carrusel */
        .carousel-indicators li {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            margin: 0 5px;
        }

        .carousel-indicators .active {
            background-color: #007bff;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            width: 20px;
            height: 20px;
            display: inline-block;
            background-repeat: no-repeat;
            background-position: 50%;
            background-size: 100% 100%;
        }

        .carousel-control-prev-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23ffffff' viewBox='0 0 8 8'%3e%3cpath d='M5.5 0l-.5.5v1.797l-3.146-3.147-.354-.354-.5-.5.5-.5.354-.354 3.793 3.793v-.793h1v2h-2v-.793l-3.793 3.793-.354.354-.5.5.5.5.354.354 3.146-3.147v1.797l.5.5.5-.5v-7l-.5-.5z'/%3e%3c/svg%3e");
        }

        .carousel-control-next-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23ffffff' viewBox='0 0 8 8'%3e%3cpath d='M2 0v.793l3.793 3.793.354.354.5.5-.5.5-.354.354-3.793-3.793v.793h-1v-2h2v.793l3.793-3.793.354-.354.5-.5-.5-.5-.354-.354-3.146 3.147v-1.797l-.5-.5-.5.5v7l.5.5.5-.5v-1.797l3.146-3.147.354-.354.5-.5-.5-.5-.354-.354-3.793 3.793v-.793h-1z'/%3e%3c/svg%3e");
        }

        .carousel-control-prev,
        .carousel-control-next {
            width: 5%;
            opacity: .5;
            z-index: 5;
            background-color: lightpink;
        }

            .carousel-control-prev:hover,
            .carousel-control-next:hover {
                opacity: 1;
            }

        .carousel-control-prev-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23ffffff' viewBox='0 0 8 8'%3e%3cpath d='M5.5 0l-.5.5v1.797l-3.146-3.147-.354-.354-.5-.5.5-.5.354-.354 3.793 3.793v-.793h1v2h-2v-.793l-3.793 3.793-.354.354-.5.5.5.5.354.354 3.146-3.147v1.797l.5.5.5-.5v-7l-.5-.5z'/%3e%3c/svg%3e");
            background-color: #ff0000; /* Cambiar a rojo */
        }

        .carousel-control-next-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23ffffff' viewBox='0 0 8 8'%3e%3cpath d='M2 0v.793l3.793 3.793.354.354.5.5-.5.5-.354.354-3.793-3.793v.793h-1v-2h2v.793l3.793-3.793.354-.354.5-.5-.5-.5-.354-.354-3.146 3.147v-1.797l-.5-.5-.5.5v7l.5.5.5-.5v-1.797l3.146-3.147.354-.354.5-.5-.5-.5-.354-.354-3.793 3.793v-.793h-1z'/%3e%3c/svg%3e");
            background-color: #00ff00; /* Cambiar a verde */
        }


        .carousel-item {
            
            background-color: white;
            text-align: center;

        }

            .carousel-item h4 {
                margin-top: 50px;
            }

        .h1 {
            margin-top: 30px;
        }

        .carousel-item p {
            font-size: 20px;
            margin-bottom: 40px;
        }
    </style>
    <form runat="server">
      <input type="checkbox" id="menu-toggle" />
    <div class="sidebar">
        <div class="side-header">
            <a href="cliquearMegusta.aspx" style="color:white;font-size:24px">T<span>rustin</span></a>
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

    </div>


    
        <div class="container" style="margin-top: 150px">
            <h2 style="text-align: center; color: #8C2641"><i class="fas fa-user-check"></i> Test de personalidad</h2>

            <hr />
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicadores -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Slides -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <h4>1. ¿Eres bueno ahorrando dinero?</h4>
                        <asp:DropDownList ID="ddl1" Style="border-radius: 10px; border: 0.5px solid #8C2641" class="form-control-color" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                        <asp:Button ID="btnEnviar1" style="height:28px;align-items:center;justify-content:center;text-align:center" class="btn btn-primary" runat="server" Text="Enviar" />
                        <br />

                        <%--<p>Me llamo ChatGPT</p>--%>
                    </div>
                    <div class="carousel-item">
                        <h4>2. ¿Dirías que eres una persona sociable?</h4>
                        <asp:DropDownList ID="ddl2" Style="border-radius: 10px; border: 0.5px solid #8C2641" class="form-control-color" runat="server">
                             <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnEnviar2" style="height:28px;align-items:center;justify-content:center;text-align:center" class="btn btn-success" runat="server" Text="Enviar" />
                        <br />
                        <%--<p>No tengo edad, soy una inteligencia artificial</p>--%>
                    </div>
                    <div class="carousel-item">
                        <h4>3. Si tienes algo en mente,¿Siempre lo dices ?</h4>
                        <%--<p>Estoy programado en C#, Python, y otros lenguajes</p>--%>
                            <asp:DropDownList ID="ddl3" Style="border-radius: 10px; border: 0.5px solid #8C2641" class="form-control-color" runat="server">
                             <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>                        
                        <asp:Button ID="btnEnviar3" style="height:28px;align-items:center;justify-content:center;text-align:center" class="btn btn-warning" runat="server" Text="Enviar" />
                        <br />
                    </div>
                    <div class="carousel-item">
                        <h4>4. ¿Estás en una relación actualmente?</h4>
                        <%--<p>Estoy programado en C#, Python, y otros lenguajes</p>--%>
                        <asp:DropDownList ID="ddl4" Style="border-radius: 10px; border: 0.5px solid #8C2641" class="form-control-color" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnEnviar4" style="height:28px;align-items:center;justify-content:center;text-align:center" class="btn btn-danger" runat="server" Text="Enviar" />
                        <br />
                    </div>
                     <div class="carousel-item">
                        <h4>5. ¿Alguna vez has estado enamorado?</h4>
                        <%--<p>Estoy programado en C#, Python, y otros lenguajes</p>--%>
                        <asp:DropDownList ID="ddl5" Style="border-radius: 10px; border: 0.5px solid #8C2641" class="form-control-color" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnEnviar5" style="height:28px;align-items:center;justify-content:center;text-align:center" class="btn btn-dark" runat="server" Text="Enviar" />
                        <br />
                    </div>
                  
                </div>
                <!-- Controles de navegación -->
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </div>
    </form>

    <!-- Referencias a Bootstrap y jQuery -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
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

