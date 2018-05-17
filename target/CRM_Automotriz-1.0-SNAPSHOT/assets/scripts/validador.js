$(document).ready(function () {
    $("#formulario").validate();

    $("#dni").rules("add", {
        required: true,
        messages: {
            required: "<h4>El campo DNI es obligatorio</h4>"
        }
    });

    $('#submit_button').click(function () {
        $("#formulario").valid();
        $("#formulario").submit();
    });
});