﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarInteres.aspx.cs" Inherits="Trustin.Admin.AgregarInteres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>TrustIn</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" />

    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/fonts/icomoon/style.css" />
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/fonts/icomoon/style.css" />
    <link rel="icon" type="image/png" href="/Trustin_3Final/ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/owl.carousel.min.css" />

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/Trustin_3Final/ContentNathalia/css/bootstrap.min.css" />
    <%--<link href="../ContentNathalia/css/bootstrap/sidebar.css" rel="stylesheet" />--%>
    <!-- Style -->
    <link href="/Trustin_3Final/ContentNathalia/css/styleAdmin.css" rel="stylesheet" />



    <link href="/Trustin_3Final/Style/Admin.css" rel="stylesheet" />


    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <script src="https://kit.fontawesome.com/38eefa0f78.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
    <style type="text/css" media="screen">
        html, body {
            overflow: hidden;
        }
    </style>



    <form class="form-group" id="formAgregarInteres" runat="server" style="justify-content: center; align-items: center; margin-top: 150px">
        <div class="container" style="text-align: center">
            <b>
                <h4 style="color: #8C2641">Agregar un nuevo interes</h4>
            </b>
        </div>
        <div class="container">
            <div class="form-group">
                <label for="ddlCategorias">Categoría:</label>
                <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-control">
                    <asp:ListItem Value="1">Deportes</asp:ListItem>
                    <asp:ListItem Value="2">Diversi&#243;n</asp:ListItem>
                    <asp:ListItem Value="3">Comida</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtNombreInteres">Nombre de interés:</label>
                <asp:TextBox ID="txtNombreInteres" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group" style="justify-content: center; align-items: center; text-align: center">
                <asp:Button ID="btnAgregarInteres" runat="server" Text="Agregar" CssClass="btn btn-primary" OnClick="agregarInteres_Click" />
            </div>
        </div>
    </form>
    <%--    <footer class="text-center text-white" style="background-color: #f1f1f1;">
        <!-- Grid container -->

        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center text-dark p-3" style="background-color: #FAACC4; position: fixed; bottom: -30px; width: 100%">
            © 2023 Copyright:
    <p class="text-dark">Desarrollado por William Rodríguez-Brenda Quesada-Nathalia Ramírez</p>

        </div>
        <!-- Copyright -->
    </footer>--%>
    <script>
        function agregarInteres() {
            // Obtener los valores de los campos del formulario

            var categoria = document.getElementById("ddlCategorias").value;
            var nombreInteres = document.getElementById("txtNombreInteres").value;

            // Realizar una petición al servidor para agregar el nuevo interés
            // ...

            // Cerrar la ventana emergente
            window.close();
        }
    </script>

</body>
</html>
