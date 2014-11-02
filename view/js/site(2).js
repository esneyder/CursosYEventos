var page_begin = 2;//variable global que guarda desde que fila empieza a traer los cursos
$(document).ready(function(){
    updateMaskForm();
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    });
    
    $(window).resize(function(){        
        updateMaskForm();
    });

    $("#cbo_deparmentNacimi").on('change', 'div', function () {
        alert($(this).val());
    });
    //Scroll infinito
    /*$(window).scroll(function () {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
            getMoreCourses();
        }
    });*/
});

function updateMaskForm() {
    if ($(window).width() <= 420) {
        $(".idealsteps-container").addClass('adaptive');
    } else {
        $(".idealsteps-container").removeClass('adaptive');
    }
}

//Esta funcion se encarga de actulizar los tab del formulario de inscripción
function updateTab(step,bandera){
    if(!bandera){        
        $(".idealsteps-step").find('span').remove();
        $(".idealsteps-step").find('.form-group').removeClass('has-error');
    }
    //actualisamos las petañas de arriba
    $(".idealsteps-nav").find('ul li').removeClass('idealsteps-step-active');
    $(".idealsteps-nav").find('ul li:eq('+step+')').addClass('idealsteps-step-active');
    //actualisamos el contenido del form
    $(".idealsteps-wrap").children('.idealsteps-step').css('display','none');
    $(".idealsteps-wrap").children('.idealsteps-step:eq('+step+')').css('display','block');
}

//Funcion que se encarga de validar la inscripción del formulario
function validInscripcionStudent(){
    $("#idealsteps-step").find('span').remove();
    var banderaStep = false;
    /////Validaciones del tab 1
    if($("#txt_expedida").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo expedida esta vacío');
        $("#txt_expedida").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_expedida").val() != ""){
        $("#txt_expedida").parent().parent().removeClass('has-error');
        $("#txt_expedida").parent().find('span').remove();
        banderaStep = true;
    }

    if($("#txt_documento").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo documento esta vacío');
        $("#txt_documento").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_documento").val() != ""){
        $("#txt_documento").parent().parent().removeClass('has-error');
        $("#txt_documento").parent().find('span').remove();
        banderaStep = true;
    }
    
    if($("#txt_nombres").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo nombre esta vacío');
        $("#txt_nombres").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_nombres").val() != ""){
        $("#txt_nombres").parent().parent().removeClass('has-error');
        $("#txt_nombres").parent().find('span').remove();
        banderaStep = true;
    }
    
    if($("#txt_apellido1").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo apellido 1 esta vacío');
        $("#txt_apellido1").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_apellido1").val() != ""){
        $("#txt_apellido1").parent().parent().removeClass('has-error');
        $("#txt_apellido1").parent().find('span').remove();
        banderaStep = true;
    }
    
    if($("#txt_apellido2").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo apellido 2 esta vacío');
        $("#txt_apellido2").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_apellido2").val() != ""){
        $("#txt_apellido2").parent().parent().removeClass('has-error');
        $("#txt_apellido2").parent().find('span').remove();
        banderaStep = true;
    }
    //////Fin del tab 1
    
    /////Validaciones del tab 2
    if(banderaStep){
        if($("#cbo_deparmentNacimi").val() == 0){
            updateTab(1,true);
            var message = messageValidInscripcion('No ha seleccionado el departamento de nacimiento');
            $("#cbo_deparmentNacimi").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_deparmentNacimi").val() != ""){
            $("#cbo_deparmentNacimi").parent().parent().removeClass('has-error');
            $("#cbo_deparmentNacimi").parent().find('span').remove();
        }
        
        if($("#txt_libretaMili").val() == ""){
            updateTab(1,true);
            var message = messageValidInscripcion('El campo libreta militar esta vacío');
            $("#txt_libretaMili").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_libretaMili").val() != ""){
            $("#txt_libretaMili").parent().parent().removeClass('has-error');
            $("#txt_libretaMili").parent().find('span').remove();
        }
        
        if($("#txt_districtoMili").val() == ""){
            updateTab(1,true);
            var message = messageValidInscripcion('El campo districto esta vacío');
            $("#txt_districtoMili").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_districtoMili").val() != ""){
            $("#txt_districtoMili").parent().parent().removeClass('has-error');
            $("#txt_districtoMili").parent().find('span').remove();
        }
        
        if($("#cbo_estadoCivil").val() == 0){
            updateTab(1,true);
            var message = messageValidInscripcion('No ha seleccionado el estado civil');
            $("#cbo_estadoCivil").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_estadoCivil").val() != ""){
            $("#cbo_estadoCivil").parent().parent().removeClass('has-error');
            $("#cbo_estadoCivil").parent().find('span').remove();
        }
    }    
}
//Mesaje que muestra cuando el campo esta vacío o cuando no cumple con una expresion regular
function messageValidInscripcion(Message){
    var messageCamposVacios = '<span class="glyphicon glyphicon-remove form-control-feedback"></span>\
                    <span class="help-block" style="color:#a94442">'+Message+'</span>';
    return messageCamposVacios;
}

//validamos los campos que nos númericos o letras cada vez que presionan una caja de texto
function validCampos(e,id){
    var key = e.keyCode || e.which;
    var tecla = String.fromCharCode(key);
    var validNumber =  /^[0-9]*$/;//numeros
    var validName = /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙ�?É�?ÓÚñÑüÜ_\s]+$/;//letras_latinas

    if(id == "number" && validNumber.test(tecla)){
            return true;
    }else if(id == "letras" && validName.test(tecla)){
            return true;
    }else{
            return false;
    }
}