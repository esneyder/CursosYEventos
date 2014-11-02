var page_begin = 4;//variable global que guarda desde que fila empieza a traer los cursos
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
    //Estas banderasStep son para verficar que en cada tab todos los campos esten validos
    //En caso de no estarlo muestra la pestaña con los errores de validación
    var banderaStep = 0,banderaStep2 = 0,banderaStep3 = 0,banderaStep4 = 0;
    
    //Validaciones del tab 1
    if($("#cbo_tipo_documento").val() == 0){
        updateTab(0,true);
        var message = messageValidInscripcion('No ha seleccionado el tipo de documento.');
        $("#cbo_tipo_documento").after(message).parent().parent().addClass('has-error');
    }else if($("#cbo_tipo_documento").val() != ""){
        $("#cbo_tipo_documento").parent().parent().removeClass('has-error');
        $("#cbo_tipo_documento").parent().find('span').remove();
        banderaStep ++;
    }
    
    if($("#txt_expedida").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo expedida esta vacío');
        $("#txt_expedida").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_expedida").val() != ""){
        $("#txt_expedida").parent().parent().removeClass('has-error');
        $("#txt_expedida").parent().find('span').remove();
        banderaStep ++;
    }

    if($("#txt_documento").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo documento esta vacío');
        $("#txt_documento").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_documento").val() != ""){
        $("#txt_documento").parent().parent().removeClass('has-error');
        $("#txt_documento").parent().find('span').remove();
        banderaStep ++;
    }
    
    if($("#txt_nombres").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo nombre esta vacío');
        $("#txt_nombres").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_nombres").val() != ""){
        $("#txt_nombres").parent().parent().removeClass('has-error');
        $("#txt_nombres").parent().find('span').remove();
        banderaStep ++;
    }
    
    if($("#txt_apellido1").val() == ""){
        updateTab(0,true);
        var message = messageValidInscripcion('El campo apellido 1 esta vacío');
        $("#txt_apellido1").after(message).parent().parent().addClass('has-error');
    }else if($("#txt_apellido1").val() != ""){
        $("#txt_apellido1").parent().parent().removeClass('has-error');
        $("#txt_apellido1").parent().find('span').remove();
        banderaStep ++;
    }
    //Fin Validaciones del tab 1
    //Validaciones del tab 2
    //si banderaStep es igual a la cantidad de campos que había que validar entra a la segunda pestaña y así sucesivamente
    if(banderaStep == 5){        
        if($("#cbo_deparmentNacimi").val() == 0){
            updateTab(1,true);
            var message = messageValidInscripcion('No ha seleccionado el departamento de nacimiento');
            $("#cbo_deparmentNacimi").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_deparmentNacimi").val() != ""){
            $("#cbo_deparmentNacimi").parent().parent().removeClass('has-error');
            $("#cbo_deparmentNacimi").parent().find('span').remove();
            banderaStep2 ++;
        }
        
        if($("#cbo_cityNacimi").val() == 0){
            updateTab(1,true);
            var message = messageValidInscripcion('No ha seleccionado la ciudad de nacimiento');
            $("#cbo_cityNacimi").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_cityNacimi").val() != ""){
            $("#cbo_cityNacimi").parent().parent().removeClass('has-error');
            $("#cbo_cityNacimi").parent().find('span').remove();
            banderaStep2 ++;
        }
        
        if($("#txt_libretaMili").val() == ""){
            updateTab(1,true);
            var message = messageValidInscripcion('El campo libreta militar esta vacío');
            $("#txt_libretaMili").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_libretaMili").val() != ""){
            $("#txt_libretaMili").parent().parent().removeClass('has-error');
            $("#txt_libretaMili").parent().find('span').remove();
            banderaStep2 ++;
        }
        
        if($("#txt_districtoMili").val() == ""){
            updateTab(1,true);
            var message = messageValidInscripcion('El campo districto militar esta vacío');
            $("#txt_districtoMili").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_districtoMili").val() != ""){
            $("#txt_districtoMili").parent().parent().removeClass('has-error');
            $("#txt_districtoMili").parent().find('span').remove();
            banderaStep2 ++;
        }
        
        if($("#cbo_estadoCivil").val() == 0){
            updateTab(1,true);
            var message = messageValidInscripcion('No ha seleccionado el estado civil');
            $("#cbo_estadoCivil").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_estadoCivil").val() != ""){
            $("#cbo_estadoCivil").parent().parent().removeClass('has-error');
            $("#cbo_estadoCivil").parent().find('span').remove();
            banderaStep2 ++;
        }
        
        if($("#cbo_sexo").val() == 0){
            updateTab(1,true);
            var message = messageValidInscripcion('No ha seleccionado el sexo');
            $("#cbo_sexo").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_sexo").val() != ""){
            $("#cbo_sexo").parent().parent().removeClass('has-error');
            $("#cbo_sexo").parent().find('span').remove();
            banderaStep2 ++;
        }        
    }
    //Fin de validación tab 2
    
    //Validaciones del tab 3    
    //Si todos los campos del tab 2 que son 6 están validos entonces pasamos a la tercera pestaña
    if(banderaStep2 == 6){
        if($("#txt_dirProce").val() == ""){
            updateTab(2,true);
            var message = messageValidInscripcion('El campo dirección de prodecencía esta vacío');
            $("#txt_dirProce").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_dirProce").val() != ""){
            $("#txt_dirProce").parent().parent().removeClass('has-error');
            $("#txt_dirProce").parent().find('span').remove();
            banderaStep3 ++;
        }
        
        if($("#txt_barrioProce").val() == ""){
            updateTab(2,true);
            var message = messageValidInscripcion('El campo barrio de prodecencía esta vacío');
            $("#txt_barrioProce").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_barrioProce").val() != ""){
            $("#txt_barrioProce").parent().parent().removeClass('has-error');
            $("#txt_barrioProce").parent().find('span').remove();
            banderaStep3 ++;
        }
        
        if($("#cbo_deparmentProce").val() == 0){
            updateTab(2,true);
            var message = messageValidInscripcion('No ha seleccionado el departamento de procedencía.');
            $("#cbo_deparmentProce").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_deparmentProce").val() != ""){
            $("#cbo_deparmentProce").parent().parent().removeClass('has-error');
            $("#cbo_deparmentProce").parent().find('span').remove();
            banderaStep3 ++;
        }
        
        if($("#cbo_cityProce").val() == 0){
            updateTab(2,true);
            var message = messageValidInscripcion('No ha seleccionado la ciudad de procedencía.');
            $("#cbo_cityProce").after(message).parent().parent().addClass('has-error');
        }else if($("#cbo_cityProce").val() != ""){
            $("#cbo_cityProce").parent().parent().removeClass('has-error');
            $("#cbo_cityProce").parent().find('span').remove();
            banderaStep3 ++;
        }

        if($("#txt_telProce").val() == ""){
            updateTab(2,true);
            var message = messageValidInscripcion('El campo teléfono esta vacío.');
            $("#txt_telProce").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_telProce").val() != ""){
            $("#txt_telProce").parent().parent().removeClass('has-error');
            $("#txt_telProce").parent().find('span').remove();
            banderaStep3 ++;
        }

        if($("#txt_celProce").val() == ""){
            updateTab(2,true);
            var message = messageValidInscripcion('El campo celular esta vacío.');
            $("#txt_celProce").after(message).parent().parent().addClass('has-error');
        }else if($("#txt_celProce").val() != ""){
            $("#txt_celProce").parent().parent().removeClass('has-error');
            $("#txt_celProce").parent().find('span').remove();
            banderaStep3 ++;
        }
        
        var emailProcede = $("#txt_mailProce");

        if(emailProcede.val() == ""){
            updateTab(2,true);
            var message = messageValidInscripcion('El campo email esta vacío.');
            emailProcede.after(message).parent().parent().addClass('has-error');
        }else if(emailProcede.val() != ""){
            //Validamos si el email que escribieron es correcto
            if(validarExpreRegulares('email',emailProcede.val())){
                emailProcede.parent().parent().removeClass('has-error');
                emailProcede.parent().find('span').remove();
                banderaStep3 ++;
            }else{
                updateTab(2,true);
                var message = messageValidInscripcion('El campo email es incorrecto.');
                emailProcede.after(message).parent().parent().addClass('has-error');
            }
        }
    }
    //Fin de validación tab 3
    if(banderaStep3 == 7){
        var data = llenarArrayInfoStudent();
        saveStudent(data);
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
//Validamos campos mas especificos. a diferencía del 
//anterior que es validCampos este solo valida cuando oprimen una tecla
//mientras que este nos puede valida un mail,o una url o fecha etc..
function validarExpreRegulares(type,valor){
    // creamos nuestra regla con expresiones regulares.
    var validEmail = /[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
    // utilizamos test para comprobar si el parametro valor cumple la regla
    if(type == "email"){
        if (validEmail.test(valor))
            return true;
        else
            return false;
    }    
}

function utf8_encode(argString) {
    if (argString === null || typeof argString === 'undefined') {
        return '';
    }
    var string = (argString + ''); // .replace(/\r\n/g, "\n").replace(/\r/g, "\n");
    var utftext = '', start, end, stringl = 0;

    start = end = 0;
    stringl = string.length;
    for (var n = 0; n < stringl; n++) {
        var c1 = string.charCodeAt(n);
        var enc = null;

        if (c1 < 128) {
            end++;
        } else if (c1 > 127 && c1 < 2048) {
            enc = String.fromCharCode(
                    (c1 >> 6) | 192, (c1 & 63) | 128
                    );
        } else if ((c1 & 0xF800) != 0xD800) {
            enc = String.fromCharCode(
                    (c1 >> 12) | 224, ((c1 >> 6) & 63) | 128, (c1 & 63) | 128
                    );
        } else { // surrogate pairs
            if ((c1 & 0xFC00) != 0xD800) {
                throw new RangeError('Unmatched trail surrogate at ' + n);
            }
            var c2 = string.charCodeAt(++n);
            if ((c2 & 0xFC00) != 0xDC00) {
                throw new RangeError('Unmatched lead surrogate at ' + (n - 1));
            }
            c1 = ((c1 & 0x3FF) << 10) + (c2 & 0x3FF) + 0x10000;
            enc = String.fromCharCode(
                    (c1 >> 18) | 240, ((c1 >> 12) & 63) | 128, ((c1 >> 6) & 63) | 128, (c1 & 63) | 128
                    );
        }
        if (enc !== null) {
            if (end > start) {
                utftext += string.slice(start, end);
            }
            utftext += enc;
            start = end = n + 1;
        }
    }
    if (end > start) {
        utftext += string.slice(start, stringl);
    }
    return utftext;
}

function utf8_decode(str_data) {
  var tmp_arr = [],
    i = 0,
    ac = 0,
    c1 = 0,
    c2 = 0,
    c3 = 0,
    c4 = 0;

  str_data += '';

  while (i < str_data.length) {
    c1 = str_data.charCodeAt(i);
    if (c1 <= 191) {
      tmp_arr[ac++] = String.fromCharCode(c1);
      i++;
    } else if (c1 <= 223) {
      c2 = str_data.charCodeAt(i + 1);
      tmp_arr[ac++] = String.fromCharCode(((c1 & 31) << 6) | (c2 & 63));
      i += 2;
    } else if (c1 <= 239) {
      // http://en.wikipedia.org/wiki/UTF-8#Codepage_layout
      c2 = str_data.charCodeAt(i + 1);
      c3 = str_data.charCodeAt(i + 2);
      tmp_arr[ac++] = String.fromCharCode(((c1 & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
      i += 3;
    } else {
      c2 = str_data.charCodeAt(i + 1);
      c3 = str_data.charCodeAt(i + 2);
      c4 = str_data.charCodeAt(i + 3);
      c1 = ((c1 & 7) << 18) | ((c2 & 63) << 12) | ((c3 & 63) << 6) | (c4 & 63);
      c1 -= 0x10000;
      tmp_arr[ac++] = String.fromCharCode(0xD800 | ((c1 >> 10) & 0x3FF));
      tmp_arr[ac++] = String.fromCharCode(0xDC00 | (c1 & 0x3FF));
      i += 4;
    }
  }
  return tmp_arr.join('');
}

function llenarArrayInfoStudent(){
    var dataInfoStudent = [];
        
    dataInfoStudent[0]= $("#cbo_tipo_documento").val();
    dataInfoStudent[1]= $("#txt_expedida").val();
    dataInfoStudent[2]= $("#txt_documento").val();
    dataInfoStudent[3]= $("#txt_nombres").val();
    dataInfoStudent[4]= $("#txt_apellido1").val();
    dataInfoStudent[5]= $("#txt_apellido2").val();

    dataInfoStudent[6]= $("#cbo_deparmentNacimi").val();
    dataInfoStudent[7]= $("#cbo_cityNacimi").val();
    dataInfoStudent[8]= $("#txt_libretaMili").val();
    dataInfoStudent[9]= $("#txt_districtoMili").val();
    dataInfoStudent[10]= $("#cbo_estadoCivil").val();        
    dataInfoStudent[11]= $("#cbo_sexo").val();
    dataInfoStudent[12]= $("#txt_cantHijos").val();
    //FALTAN SI TIENE HIJOS


    dataInfoStudent[13]= $("#txt_dirProce").val();
    dataInfoStudent[14]= $("#txt_barrioProce").val();
    dataInfoStudent[15]= $("#cbo_deparmentProce").val();
    dataInfoStudent[16]= $("#cbo_cityProce").val();
    dataInfoStudent[17]= $("#txt_telProce").val();
    dataInfoStudent[18]= $("#txt_celProce").val();        
    dataInfoStudent[19]= $("#txt_mailProce").val();
    dataInfoStudent[20]= $("#txt_estraProce").val();
    dataInfoStudent[21]= $("#txt_empreTrabaja").val();
    dataInfoStudent[22]= $("#txt_cargoTrabaja").val();        
    dataInfoStudent[23]= $("#txt_dirTraba").val();
    dataInfoStudent[24]= $("#txt_fax").val();
    
    dataInfoStudent[25]= $("#txt_instiEstuRS").val();
    dataInfoStudent[26]= $("#txt_tituObtenEstuRS").val();
    dataInfoStudent[27]= $("#cbo_deparmentEstuRS").val();
    dataInfoStudent[28]= $("#cbo_cityEstuRS").val();
    
    dataInfoStudent[29]= $("#txt_instiEstuRU").val();
    dataInfoStudent[30]= $("#txt_tituObtenEstuRU").val();
    dataInfoStudent[31]= $("#cbo_deparmentEstuRU").val();
    dataInfoStudent[32]= $("#cbo_cityEstuRU").val();

    dataInfoStudent[33]= $("#txt_instiEstuRO").val();
    dataInfoStudent[34]= $("#txt_tituObtenEstuRO").val();
    dataInfoStudent[35]= $("#cbo_deparmentEstuRO").val();
    dataInfoStudent[36]= $("#cbo_cityEstuRO").val();
    
    //Id del programa ofertado
    dataInfoStudent[37]= $("#IdPrograma_Ofertado").val();

    return dataInfoStudent;
}
//Liampiamos los campos luego de haber sido registrado
function cleanFieldsStudent(){
    $("#inscripcionEstudent").find('input').val('');
    $("#inscripcionEstudent").find('select').val(0);
}