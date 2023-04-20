<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Trustin.Inicio.Registro" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
     <link rel="stylesheet" href="../Style/Inicio.css"/>
     <link rel="stylesheet" href="../Style/Registro.css"/>

    <link rel="icon" type="image/png" href="../ContentNathalia/images/LOGO-COLOR.png" />
    <link rel="" href="Seleccion.js"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.jquery.min.js"></script>
    <link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>

</head>
<body style="background: linear-gradient(#fff, #C55F7A); background-repeat: no-repeat; height: 100%;">
   
    <nav class="main-nav">
       <ul id="main-menu" class="main-menu">
            <li class="main-menu_item">
                <a href="Inicio.aspx" class="main-menu-link">
                    <img src="../Imagenes/logoBlanco.png"/ style="height:60px; width:80px; padding:3px; padding-left:10px">
                </a>
            </li>
           </ul>
       
        <%--<p>Trustin</p>--%>
        <div id="toggle-menu" class="toggle-menu">
            
            <label for="toggle-menu-checkbox">
                <img src="https://freesvg.org/img/menu-icon.png" alt="icon-menu"/>
            </label>
        </div>
        <input type="checkbox" class="toggle-menu__checkbox" id="toggle-menu-checkbox"/>
        <ul id="main-menu" class="main-menu">
            
            <li class="main-menu_item">
                <a href="InicioSesion.aspx" class="main-menu-link">Conéctate</a>
            </li>
            <li class="main-menu-item">
                <a href="#" class="main-menu-link">Registrarse</a>
            </li>
        </ul>
    </nav>
    <br />

    <div style="justify-content:center; align-items:center; display:flex; flex-direction: column; padding-bottom:100px">
        
      <%--  <div style="justify-content:center; align-items:center; display: flex; flex-direction:column">
            <img src="../Imagenes/LogoColor.png"/ style="height:190px; width:230px; padding:10px">
        </div>--%>
        <div class="container" style="padding:40px">
     
        <div class="content">
          <form action="#" runat="server" >
                <h2 style="color:#B70839; font-family:Alkatra">Datos generales</h2>
            <div class="user-details">
              <div class="input-box">
                <span class="details">Nombre</span>
                  <input name="txtnombre" id="txtnombre" value="" placeholder="Nombre" runat="server"/>
                  <%--<asp:TextBox name="txtnombre" ID="txtnombre" placeholder="Nombre" runat="server" required></asp:TextBox>--%>
              </div>
                <div class="input-box">
                <span class="details">Apellido</span>
                <asp:TextBox name="txtapellido"  ID="txtapellido" placeholder="Apellido" runat="server" required></asp:TextBox>
              </div>
              <div class="input-box">
                <span class="details">Edad</span>
                <asp:TextBox  type="text" ID="txtedad" placeholder="Edad" runat="server" required></asp:TextBox>
              </div>
              <div class="gender-details">
              <input type="radio" name="gender" value="1" id="dot-1">
              <input type="radio" name="gender" value="2" id="dot-2">
              <input type="radio" name="gender" value="3" id="dot-3">
              <span class="gender-title">Género</span>
              <div class="category" runat="server" id="genero">
                <label for="dot-1">
                <span class="dot one"></span>
                <span class="gender">Hombre</span>
              </label>
              <label for="dot-2">
                <span class="dot two"></span>
                <span class="gender">Mujer</span>
              </label>
              <label for="dot-3">
                <span class="dot three"></span>
                <span class="gender">No binario</span>
                </label>
              </div>
            </div>
            <div class="input-box">
                <span class="details">Provincia</span>
                  <select id="provincia" name="provincia" required>
                    <option value=""></option>
                    <option value="1">San José</option>
                    <option value="2">Alajuela</option>
                    <option value="3">Cartago</option>
                    <option value="4">Heredia</option>
                    <option value="5">Guanacaste</option>
                    <option value="6">Puntarenas</option>
                    <option value="7">Limón</option>
                </select>
              </div>
            <div class="input-box">
                <span class="details">Correo electrónico</span>
                <asp:TextBox ID="txtemail" placeholder="Email" runat="server" required></asp:TextBox>
              </div>
              <div class="input-box">
                <span class="details">Contraseña</span>
                  <asp:TextBox type="password" ID="txtcontrasena" placeholder="Contraseña" runat="server" required></asp:TextBox>
              </div>
                
            </div>
              <div style="margin-top:60px"> <h2 style="color:#B70839; font-family:Alkatra">Sobre ti</h2></div>
              <div class="user-details">
                <div class="input-box">
                <span class="details">En este momento busco...</span>
                <select id="busco" name="busco"  onchange="showSelect();"  runat="server" required>
                    <option data-img_src="https://images.emojiterra.com/twitter/512px/1f498.png" value="1">Pareja para largo plazo</option>
                    <option data-img_src="https://images.emojiterra.com/twitter/512px/1f942.png" value="2">Corto plazo</option>
                    <option data-img_src="https://images.emojiterra.com/google/android-11/512px/1f389.png" value="3">Diversión</option>
                    <option data-img_src="https://emojigraph.org/media/mozilla/waving-hand_1f44b.png" value="4">Nuevos amigos</option>
                    <option data-img_src="https://images.emojiterra.com/google/android-pie/512px/1f914.png" value="5">Lo sigo pensando</option>
                   </select>
                  <label name="lblbusco" id="lblbusco"></label>
                 </div>
                  <div class="input-box">
                    <span class="details">Te gustaría conocer</span>
                      <select id="generoInteres" name="generoInteres" required>
                    <option value=""></option>
                        <option value="1">Hombre</option>
                        <option value="2">Mujer</option>
                        <option value="3">Ambos</option>
                    </select>
                  </div>
                  <div class="input-box">
                    <span class="details">Signo Zodiacal</span>
                      <select id="signo" name="signo" required>
                    <option value=""></option>
                        <option value="1">Acuario</option>
                        <option value="2">Aries</option>
                        <option value="3">Tauro</option>
                        <option value="4">Gémenis</option>
                        <option value="5">Cáncer</option>
                        <option value="6">Leo</option>
                        <option value="7">Virgo</option>
                        <option value="8">Libra</option>
                        <option value="9">Escorpio</option>
                        <option value="10">Sagitario</option>
                        <option value="11">Piscis</option>
                        <option value="12">Capricornio</option>
                    </select>
                  </div>
                  <div class="input-box">
                    <span class="details">Tus intereses</span>
                      <select data-placeholder="--Seleccione--" multiple class="escoger-items" id="categoria" name="categoria" required>
                          
                          <optgroup label="Deporte">
                            <option value="1">Correr</option>
                            <option value="2">Caminar</option>
                            <option value="3">Natación</option>
                            <option value="4">Hockey</option>
                            <option value="5">Ejercicio en casa</option>
                            <option value="6">Yoga</option>
                            <option value="7">Gimnasia</option>
                            <option value="8">Baloncesto</option>
                            <option value="9">Pilates</option>
                            <option value="10">Patinar</option>
                            <option value="11">Esquí</option>
                            <option value="12">Surf</option>
                         <optgroup label="Diversión y salud">
                            <option value="13">Spa</option>
                            <option value="14">Autocuidado</option>
                            <option value="15">Viajar</option>
                            <option value="16">Cine</option>
                            <option value="17">Teatro</option>
                            <option value="18">Spotify</option>
                            <option value="19">Meditación</option>
                            <option value="20">Guitarrista</option>
                            <option value="21">Leer</option>
                            <option value="22">Cantar</option>
                            <option value="23">Autocine</option>
                            <option value="24">Poesía</option>
                            <option value="25">Moda vintage</option>
                            <option value="26">Salir de compras</option>
                            <option value="27">Escape room</option>
                            <option value="28">Anime</option>
                            <option value="29">Play Station</option>
                            <option value="30">Festividades</option>
                            <option value="31">Hip Hop</option>
                            <option value="32">Fotografía</option>
                            <option value="33">Cosplay</option>
                            <option value="34">Instagram</option>
                            <option value="35">Pasear a mi perro</option>
                            <option value="36">Tatuajes</option>
                            <option value="37">YouTube</option>
                            <option value="38">Marvel</option>
                            <option value="39">Maquillaje</option>
                            <option value="40">Disney</option>
                        <optgroup label="Comida">
                            <option value="41">Sushi</option>
                            <option value="42">Café</option>
                            <option value="43">Té helado</option>
                            <option value="44">Vino</option>
                            <option value="45">Ramen</option>
                            <option value="46">Comida asiática</option>
                            <option value="47">Té de burbujas</option>
                            <option value="48">Té</option>
                    </select>
                  </div>
                  </div>
              <div class="user-details">
                  <div class="input-box">
                    <span class="details">Breve descripción sobre ti</span>
                      <asp:TextBox ID="txtdescripcion" placeholder="La descripción será visible para los demás usuarios" runat="server" style="max-height:120px; min-height:120px; max-width:500px; min-width:500px" required ></asp:TextBox>
                  </div>
                  </div>
              <div class="user-details">
                  <div class="input-box">
                    <span class="details">Agregue foto para su perfil</span> 
                      <asp:FileUpload ID="FileUpload1" accept=".jpg,.jpeg,.png,.jfif" runat="server" AllowMultiple="True" />
                  </div>
              </div>
            <div class="button-register" role="button">
                <asp:Button ID="btnguardarregistro1" runat="server" Text="Registrar" OnClick="btnguardarregistro1_Click" />
            </div>
          </form>
            <script>
                $(".escoger-items").chosen({
                    no_results_text: "Escoja una opción",
                });
            </script>
        </div>
      </div>
    </div>
    <div></div>
    <footer class="main-footer" style="background:#B70839">
        <div style="display:flex; justify-content:center; flex-wrap:wrap">
                    
                    <div  style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                        <h4 style="text-align:center; font-weight:600; color:#ffff" >Información
                            <br />
                            TrustIn APSW 1C2023
                        </h4>
                        <img src="../Imagenes/CUC-logo-blanco.png" alt="Imagen perfil" style="height:60px ; align-content:center; align-items:center; justify-content:center"/>
                        
                    </div>
                <div  style="width:auto; margin:20px; padding: 20px;  display:flex; align-items: center; flex-direction:column">
                    <h4 style="text-align:center; font-weight:600; color:#fff">
                        G. Tarde Equipo 3
                            <br />
                            <p style="text-align:center; font-weight:500; color:#fff">William Araya Rodriguez <br /> Brenda Quesada Artavia <br /> Nathalia Ramirez Coto</p>
                     </h4>                    

                </div>
            </div>
    </footer>

  
</body>
</html>
