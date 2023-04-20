$(document).ready(function () {
    $("[id*=btnadd]").click(function () {

        if ($("[id*=txtnombre]").val() == "") {
            alert('Por favor ingrese el nombre');
            $("[id*=txtnombre]").focus();
            return false;
        }
        if ($("[id*=txtnombre]").val().length <= 2) {
            alert('Por favor ingrese un nombre con mas de 2 caracteres');
            $("[id*=txtnombre]").focus();
            return false;
        }
        if ($("[id*=txtapellido]").val() == "") {
            alert('Por favor ingrese el apellido');
            $("[id*=txtapellido]").focus();
            return false;
        }
        if ($("[id*=txtapellido]").val().length <= 2) {
            alert('Por favor ingrese un apellido con mas de 2 caracteres');
            $("[id*=txtapellido]").focus();
            return false;
        }
        if ($("[id*=txtcontraseña]").val() == "") {
            alert('Por favor ingrese la contraseña');
            $("[id*=txtcontraseña]").focus();
            return false;
        }
        if ($("[id*=txtcontraseña]").val().length <= 8) {
            alert('Por favor ingrese una contraseña con mas de 8 caracteres');
            $("[id*=txtcontraseña]").focus();
            return false;
        }
        if ($("[id*=txtemail]").val() == "") {
            alert('Por favor ingrese el correo');
            $("[id*=txtemail]").focus();
            return false;
        }
        if ($("[id*=txtemail]").val().length <= 8) {
            alert('Por favor ingrese un correo con mas de 8 caracteres');
            $("[id*=txtemail]").focus();
            return false;
        }
        if ($("[id*=txtemail]").val().length <= 8) {
            alert('Por favor ingrese un valido e.g abc@tucorreo.com');
            $("[id*=txtemail]").focus();
            return false;
        }
        if ($("[id*=txtfechanac]").val() == "") {
            alert('Por favor ingrese la fecha de nacimiento');
            $("[id*=txtfechanac]").focus();
            return false;
        }
        if ($("[id*=txtfecing]").val() == "") {
            alert('Por favor ingrese la fecha de ingreso');
            $("[id*=txtfecing]").focus();
            return false;
        }
        if ($("[d*=ddlrol] option:selected").val() == 0) {
            alert('Por favor seleccione un rol');
            $("[id*=ddlrol]").focus();
            return false;
        }
        if ($("[d*=ddlrol] option:selected").text() == "--Seleccione--") {
            alert('Por favor seleccione un rol');
            $("[id*=ddlrol]").focus();
            return false;
        }
        if ($("id*=ddlestado] option:selected").val() == 0) {
            alert('Por favor seleccione un estado');
            $("[id*=ddlestado]").focus();
            return false;
        }

        alert('Usuario Registrado con exito');
        return true;
    })

});