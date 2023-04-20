//function obtenerSiguienteUsuario(meGusta) {
//    // Realiza una solicitud al servidor para obtener los datos del siguiente usuario
//    $.ajax({
//        url: 'obtenerSiguienteUsuario.php',
//        type: 'POST',
//        data: { meGusta: meGusta },
//        dataType: 'json',
//        success: function (data) {
//            // Actualiza los campos de la página con los datos del siguiente usuario
//            $('#img').attr('src', data.imagen);
//            $('#lblNombre').text(data.nombre);
//            $('#lblEdad').text(data.edad);
//            $('#lblKilometro').text(data.kilometro);
//            $('#lblDescripcion').text(data.descripcion);
//        }
//    });
//}

//$(document).ready(function () {
//    // Agrega el evento de clic al botón "No me gusta"
//    $('#btnNomegusta').click(function () {
//        obtenerSiguienteUsuario(false);
//    });

//    // Agrega el evento de clic al botón "Me gusta"
//    $('#btnMegusta').click(function () {
//        obtenerSiguienteUsuario(true);
//    });
//});


<script type="text/javascript">
    // Evita que se envíe el formulario al hacer clic en los botones
    $(document).ready(function () {
        $(".no").click(function (e) {
            e.preventDefault();
        });

    $(".heart").click(function (e) {
        e.preventDefault();
        });

    $(".kiss").click(function (e)
