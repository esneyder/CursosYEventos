$(document).ready(function(){
  
});

function Mostrar_Mensaje(clase, mensaje){
  $('.alertas').children().remove();
  $(".alertas").html('<div role="alert" class="alert '+clase+' alert-dismissible col-xs-12 col-md-offset-3 col-md-6 col-md-offset-3">'+
    '<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>'+
    '<strong>'+mensaje+'</strong>' +
  '</div>');
  
}

function CerrarNuevo(){
  $('.nuevo').children().remove();
}

function CerrarEditar(){
  $('.editar').children().remove();
}

/********************************Tipos Programas********************************/

function Listar_TiposProgramas() {
  $.ajax({
  url: '../../controller/ctrolTiposProgramas.php?accion=ListarTiposProgramas',
  type: 'post',
    beforeSend: function() {
        $(".resultado").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      $(".resultado").html(data);
    }
  });
}

function frmNuevoTipoPrograma(){
  $(".nuevo").html('<form class="form-horizontal" role="form" id="frmNuevoTipoPrograma">' +
                          '<div class="form-group col-sm-12">' +
                            '<label for="txtTipoPrograma" class="col-sm-4 control-label">Tipo Programa</label>' +
                            '<div class="col-sm-8">' +
                              '<input type="text" class="form-control" name="txtTipoPrograma" id="txtTipoPrograma" placeholder="Tipo de Programa" value="" autofocus>' +
                            '</div>' +
                          '</div>' +
                          '<div class="form-group">' +
                          '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="Registrar_TiposProgramas(); return false;">Guardar</a></div>' +
                            '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>' +
                          '</div>' +
                        '</form>');
  CerrarEditar();
  $('.alertas').children().remove();
}

function Registrar_TiposProgramas() {
  $.ajax({
  url: '../../controller/ctrolTiposProgramas.php?accion=RegistrarTipoPrograma',
  data: $('#frmNuevoTipoPrograma').serialize(),
  type: 'post',
    beforeSend: function() {
        $(".alertas").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El Tipo de Programa ha sido registrado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarNuevo();
      Listar_TiposProgramas();
    }
  });
}

function frmEditarTipoPrograma(id, descripcion){
  $(".editar").html('<form class="form-horizontal" role="form" id="frmEditarTipoPrograma">' +
                        '<div class="form-group col-sm-12">' +
                          '<label for="txtTipoPrograma" class="col-sm-4 control-label">Tipo Programa</label>' +
                          '<div class="col-sm-8">' +
                            '<input type="hidden" class="form-control" id="txtIdTipoPrograma" name="txtIdTipoPrograma" value="'+id+'">'+
                            '<input type="text" class="form-control" id="txtTipoPrograma" name="txtTipoPrograma" placeholder="Tipo de Programa" value="'+descripcion+'">' +
                          '</div>' +
                        '</div>' +
                        '<div class="form-group">' +
                          '<div class="col-sm-offset-4 col-sm-8"><a href="" class="btn btn-default" onclick="Actualizar_TipoPrograma(); return false;">Guardar</a></div>' +
                        '</div>' +
                        '</form>');
  CerrarNuevo();
  $('.alertas').children().remove();
}

function Actualizar_TipoPrograma() {
  $.ajax({
  url: '../../controller/ctrolTiposProgramas.php?accion=ActualizarTipoPrograma',
  data: $('#frmEditarTipoPrograma').serialize(),
  type: 'post',
    beforeSend: function() {
        $(".alertas").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El Tipo de Programa ha sido actualizado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarEditar();
      Listar_TiposProgramas();
    }
  });
}

/*******************************************************************************/
/*********************************Tipos de Estudio*******************************/

function Listar_TiposEstudios(){
  $.ajax({
    url: '../../controller/ctrolTiposEstudio.php?accion=ListarTiposEstudios',
    type: 'post',
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".resultado").html(data);
      }
  });
}

function frmNuevoTipoEstudio(){
  $(".nuevo").html('<form class="form-horizontal" role="form" id="frmNuevoTipoEstudio">' +
                          '<div class="form-group col-sm-12">' +
                            '<label for="txtTipoEstudio" class="col-sm-4 control-label">Tipo Estudio</label>' +
                            '<div class="col-sm-8">' +
                              '<input type="text" class="form-control" name="txtTipoEstudio" id="txtTipoEstudio" placeholder="Tipo de Estudio" value="" autofocus>' +
                            '</div>' +
                          '</div>' +
                          '<div class="form-group">' +
                          '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="Registrar_TiposEstudios(); return false;">Guardar</a></div>' +
                            '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>' +
                          '</div>' +
                        '</form>');
  CerrarEditar();
  $('.alertas').children().remove();
}

function Registrar_TiposEstudios() {
  $.ajax({
  url: '../../controller/ctrolTiposEstudio.php?accion=RegistrarTipoEstudio',
  data: $('#frmNuevoTipoEstudio').serialize(),
  type: 'post',
    beforeSend: function() {
        $(".alertas").html('');
    },
    success:  function(data){
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El Tipo de Estudio ha sido registrado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarNuevo();
      Listar_TiposEstudios();
    }
  });
}

function frmEditarTipoEstudio(id, descripcion){
  $(".editar").html('<form class="form-horizontal" role="form" id="frmEditarTipoEstudio">' +
                        '<div class="form-group col-sm-12">' +
                          '<label for="txtTipoEstudio" class="col-sm-4 control-label">Tipo Estudio</label>' +
                          '<div class="col-sm-8">' +
                            '<input type="hidden" class="form-control" id="txtIdTipoEstudio" name="txtIdTipoEstudio" value="'+id+'">'+
                            '<input type="text" class="form-control" id="txtTipoEstudio" name="txtTipoEstudio" placeholder="Tipo de Estudio" value="'+descripcion+'">' +
                          '</div>' +
                        '</div>' +
                        '<div class="form-group">' +
                          '<div class="col-sm-offset-4 col-sm-8"><a href="" class="btn btn-default" onclick="Actualizar_TipoEstudio(); return false;">Guardar</a></div>' +
                        '</div>' +
                        '</form>');
  CerrarNuevo();
  $('.alertas').children().remove();
}

function Actualizar_TipoEstudio() {
  $.ajax({
  url: '../../controller/ctrolTiposEstudio.php?accion=ActualizarTipoEstudio',
  data: $('#frmEditarTipoEstudio').serialize(),
  type: 'post',
    beforeSend: function() {
        $(".alertas").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El Tipo de Estudio ha sido actualizado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarEditar();
      Listar_TiposEstudios();
    }
  });
}


/*******************************************************************************/
/************************************Programas**********************************/

function Listar_Programas(){
  $.ajax({
    url: '../../controller/ctrolProgramas.php?accion=ListarProgramas',
    type: 'post',
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".resultado").html(data);
      }
  });
}

function frmNuevoPrograma(){
  $(".nuevo").html('<fieldset class="scheduler-border"><legend class="scheduler-border">Registrar Programa</legend><form class="form-horizontal" role="form" id="frmNuevoPrograma" enctype="multipart/form-data">' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="txtTitulo" class="col-sm-4 control-label">Titulo</label>' +
                      '<div class="col-sm-8">' +
                        '<input type="text" class="form-control" name="txtTitulo" id="txtTitulo" placeholder="Nombre del programa" value="" autofocus>' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="txtDescripcion" class="col-sm-4 control-label">Descripción</label>' +
                      '<div class="col-sm-8">' +
                          '<textarea class="form-control" rows="3" name="txtDescripcion" id="txtDescripcion" style="resize: none;" placeholder="Descripción del programa" ></textarea>' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="Imagen" class="col-sm-4 control-label">Imagen</label>' +
                      '<div class="col-sm-8">' +
                        '<input type="file" class="input-file" title="Añadir imagen" id="Imagen" name="Imagen"> ' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="Registrar_Programas(); return false;">Guardar</a></div>' +
                      '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>' +
                    '</div>' +
                  '</form></fieldset>');
  CerrarEditar();
  $('.alertas').children().remove();
}

function Registrar_Programas() {
  var Imagen = document.getElementById("Imagen");
  var img = Imagen.files[0];
  var data = new FormData();
  var tit = $('#txtTitulo').val();
  var des = $('#txtDescripcion').val();
  data.append("Imagen",img); //Con este nombre se recibe en el controlador
  $.ajax({
    url: "../../controller/ctrolProgramas.php?accion=RegistrarPrograma&Titulo="+tit+"&Descripcion="+des,
    type:  'post',
    contentType: false,
    data: data,
    processData: false,
    cache: false,
    beforeSend: function() {
      $("#alertas").append().after("<img id='img' src='images/ajax-loader.gif'>");
    },
    success:  function(data){
      //Mostrar_Mensaje('', data);
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El Programa ha sido registrado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarNuevo();
      Listar_Programas();
    }
  });
}

function frmEditarPrograma(strInfo){
  var arrayInfo = strInfo.split("|");
  $(".editar").html('<fieldset class="scheduler-border"><legend class="scheduler-border">Modificar Programa</legend><form class="form-horizontal" role="form" id="frmNuevoPrograma" enctype="multipart/form-data">' +
                    '<input type="hidden" class="form-control" name="txtIdPrograma" id="txtIdPrograma" value="'+arrayInfo[0]+'">' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="txtTitulo" class="col-sm-4 control-label">Titulo</label>' +
                      '<div class="col-sm-8">' +
                        '<input type="text" class="form-control" name="txtTitulo" id="txtTitulo" placeholder="Nombre del programa" value="'+arrayInfo[1]+'">' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="txtDescripcion" class="col-sm-4 control-label">Descripción</label>' +
                      '<div class="col-sm-8">' +
                          '<textarea class="form-control" rows="3" name="txtDescripcion" id="txtDescripcion" style="resize: none;" placeholder="Descripción del programa" >'+arrayInfo[2]+'</textarea>' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="Imagen" class="col-sm-4 control-label">Imagen</label>' +
                      '<div class="col-sm-8">' +
                        '<img id="imgAct" src=../'+arrayInfo[3]+' width="100" height="100">' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group col-sm-12">' +
                      '<label for="Imagen" class="col-sm-4 control-label">Cambiar Imagen</label>' +
                      '<div class="col-sm-8">' +
                        '<input type="file" class="input-file" title="Añadir imagen" id="Imagen" name="Imagen"> ' +
                      '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="Actualizar_Programa(); return false;">Guardar</a></div>' +
                      '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarEditar(); return false;">Cerrar</a></div>' +
                    '</div>' +
                  '</form></fieldset>');
  CerrarNuevo();
  $('.alertas').children().remove();
}

function Actualizar_Programa() {
  var Imagen = document.getElementById("Imagen");
  var img = Imagen.files[0];
  var data = new FormData();
  var Id = $('#txtIdPrograma').val();
  var tit = $('#txtTitulo').val();
  var des = $('#txtDescripcion').val();
  var imgAct = $('#imgAct').attr('src'); //ImgActual
  data.append("Imagen",img); //Con este nombre se recibe en el controlador
  $.ajax({
    url: "../../controller/ctrolProgramas.php?accion=ActualizarPrograma&IdPrograma="+Id+"&Titulo="+tit+"&Descripcion="+des+"&imgAct="+imgAct,
    type:  'post',
    contentType: false,
    data: data,
    processData: false,
    cache: false,
    beforeSend: function() {
      $("#alertas").append().after("<img id='img' src='images/ajax-loader.gif'>");
    },
    success:  function(data){
      //Mostrar_Mensaje('alert-success', data)
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El Tipo de Estudio ha sido actualizado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarEditar();
      Listar_Programas();
    }
  });
}

/*******************************************************************************/
/***********************************Habilidades*********************************/

function Listar_Habilidades(){
  $.ajax({
    url: '../../controller/ctrolHabilidades.php?accion=ListarHabilidades',
    type: 'post',
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".resultado").html(data);
      }
  });
}

function frmNuevaHabilidad(){
  $.ajax({
    url: '../../controller/ctrolProgramas.php?accion=ComboProgramas',
    type: 'post',
    success:  function(data){
      $(".nuevo").html('<form class="form-horizontal" role="form" id="frmNuevaHabilidad">' +
                          '<div class="form-group col-sm-12">' +
                            '<label for="cbo_Programa" class="col-sm-4 control-label">Programa</label>' +
                            '<div class="col-sm-8">' +data+ '</div>' +
                          '</div>' +
                          '<div class="form-group col-sm-12">' +
                            '<label for="txtHabilidad" class="col-sm-4 control-label">Habilidad</label>' +
                            '<div class="col-sm-8">' +
                              '<input type="text" class="form-control" name="txtHabilidad" id="txtHabilidad" placeholder="Resultado de aprendizaje" value="" autofocus>' +
                            '</div>' +
                          '</div>' +
                          '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="Registrar_Habilidad(); return false;">Guardar</a></div>' +
                            '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>' +
                          '</div>' +
                        '</form>');
      CerrarEditar();
      $('.alertas').children().remove();
    }
  });
}

function Registrar_Habilidad() {
  $.ajax({
    url: '../../controller/ctrolHabilidades.php?accion=RegistrarHabilidad',
    data: $('#frmNuevaHabilidad').serialize(),
    type: 'post',
    beforeSend: function() {
        $(".alertas").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      Mostrar_Mensaje('alert-success', data);
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El resultado de aprendizaje ha sido registrado exitosamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Ha ocurrido un error, por favor intente nuevamente.')
      }
      CerrarNuevo();
      Listar_Habilidades();
    }
  });
}

function frmEditarHabilidad(strInfo){
  var arrayInfo = strInfo.split("|");
  $.ajax({
    url: '../../controller/ctrolProgramas.php?accion=ComboProgramas&strInfo='+strInfo,
    type: 'post',
    success:  function(data){
      $(".editar").html('<form class="form-horizontal" role="form" id="frmEditarHabilidad">' +
                          '<div class="form-group col-sm-12">' +
                            '<label for="cbo_Programa" class="col-sm-4 control-label">Programa</label>' +
                            '<div class="col-sm-8">' +data+ '</div>' +
                          '</div>' +
                          '<div class="form-group col-sm-12">' +
                            '<label for="txtHabilidad" class="col-sm-4 control-label">Habilidad</label>' +
                            '<div class="col-sm-8">' +
                              '<input type="hidden" class="form-control" name="txtIdHabilidad" id="txtIdHabilidad" value="'+arrayInfo[1]+'">' +
                              '<input type="text" class="form-control" name="txtHabilidad" id="txtHabilidad" placeholder="Resultado de aprendizaje" value="'+arrayInfo[3]+'" autofocus>' +
                            '</div>' +
                          '</div>' +
                          '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="Actualizar_Habilidad(); return false;">Guardar</a></div>' +
                            '<div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarEditar(); return false;">Cerrar</a></div>' +
                          '</div>' +
                        '</form>');
      CerrarNuevo();
      $('.alertas').children().remove();
    }
  });
}

function Actualizar_Habilidad() {
  $.ajax({
  url: '../../controller/ctrolHabilidades.php?accion=ActualizarHabilidad',
  data: $('#frmEditarHabilidad').serialize(),
  type: 'post',
    beforeSend: function() {
        $(".alertas").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      if(data == 1){
        Mostrar_Mensaje('alert-success', 'El resultado de aprendizaje ha sido actualizado exitosamente.')
      }else if(data == 2){
        Mostrar_Mensaje('alert-danger', 'El dato que esta ingresando ya existe, por favor intente nuevamente.')
      }else{
        Mostrar_Mensaje('alert-danger', 'Error, por favor intente nuevamente.')
      }
      CerrarEditar();
      Listar_Habilidades();
    }
  });
}


/*******************************************************************************/
/***********************************Estudiantes*********************************/


function Listar_Estudiantes(){
  $.ajax({
    url: '../../controller/ctrolEstudiantes.php?accion=ListarEstudiantes',
    type: 'post',
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".resultado").html(data);
      }
  });
}

function BuscarEstudiante(){
  //$('.infoEstudiante').children().remove();
  if($('#txtBuscar').val().length > 0){
    $.ajax({
      url: '../../controller/ctrolEstudiantes.php?accion=BuscarEstudiante',
      type: 'post',
      data: 'q='+$("#txtBuscar").val(),
        beforeSend: function() {
            $(".resultado").html('<img src="../images/loader.gif">');
        },
        success: function(data){
          $(".resultado").html(data);
        }
    });
  }
}

function InfoEstudiante(strInfo){
  $.ajax({
    url: '../../controller/ctrolEstudiantes.php?accion=InfoEstudiante',
    type: 'post',
    data:{ arrayInfo: strInfo.split('|') },
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".infoEstudiante").html(data);
      }
  });
}

function DescargarPDF(){
  $.ajax({
    url: $('#frmActualizarEstudiante').attr('action'),
    type: 'post',
    data: $('#frmActualizarEstudiante').serialize(),
      beforeSend: function() {
        //$(".resultado").html('<img src="../images/loader.gif">');
      },
      success: function(data){
        window.open('../../view/admin/InfoPDF.php?id=1')
        console.log(data);
        // Mostrar_Mensaje('', data);
      }
  });
}

function ActualizarEstudiante(){
  $.ajax({
    url: '../../controller/ctrolEstudiantes.php?accion=ActualizarEstudiante',
    type: 'post',
    data: $('#frmActualizarEstudiante').serialize(),
      beforeSend: function() {
        $(".resultado").html('<img src="../images/loader.gif">');
      },
      success: function(data){
        if(data==1){
          Mostrar_Mensaje('alert-success', 'Los datos han sido actualizados satisfactoriamente.');
        }else{
          Mostrar_Mensaje('alert-danger', 'No se han realizado cambios.');
        }
        $(".resultado").html('<div class="col-xs-12 col-sm-12 text-center">'+
                                    '<div class="form-group">'+
                                        '<a href="" class="btn btn-default" onclick="Volver(); return false;"><i class="fa fa-fw fa-arrow-left"></i> Volver</a>'+
                                    '</div>'+
                                '</div>');
      }
  });
}
function   Volver(){
  window.location.href = '../admin/Estudiantes.php';
}

/*******************************************************************************/
/************************************Ofertados**********************************/

function Listar_Ofertados(){
  $.ajax({
    url: '../../controller/ctrolOfertados.php?accion=ListarOfertados',
    type: 'post',
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".resultado").html(data);
      }
  });
}

function frmPublicarOferta(){
  $.ajax({
    url: '../../controller/ctrolOfertados.php?accion=frmPublicarOferta',
    type: 'post',
      beforeSend: function() {
          $(".nuevo").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".alertas").children().remove();
        $(".nuevo").html(data);
      }
  });
}

function PublicarOferta(){
  $.ajax({
    url: '../../controller/ctrolOfertados.php?accion=PublicarOferta',
    type: 'post',
    data: $('#frmPublicarOferta').serialize(),
      beforeSend: function() {
          $(".resultado").html('<img src="../images/loader.gif">');
      },
      success: function(data){
        if(data == 1){
          Mostrar_Mensaje('alert-success', 'El curso ha sido publicado exitosamente.');
          Listar_Ofertados();
          CerrarNuevo();
        }else{
          Mostrar_Mensaje('alert-danger', 'Verifique que los datos esten correctamente ingresados.');
        }
      }
  });
}

function frmEditarOfertado(strInfo){
  $.ajax({
    url: '../../controller/ctrolOfertados.php?accion=frmEditarOferta',
    type: 'post',
    data:{ arrayInfo: strInfo.split('|') },
      beforeSend: function() {
          $(".nuevo").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".nuevo").html(data);
      }
  });
}

function ActualizarOferta(){
  $.ajax({
    url: '../../controller/ctrolOfertados.php?accion=ActualizarOferta',
    type: 'post',
    data: $('#frmEditarOferta').serialize(),
      beforeSend: function() {
          //$(".resultado").html('<img src="../images/loader.gif">');
      },
      success: function(data){
         if(data == 1){
           Mostrar_Mensaje('alert-success', 'La oferta ha sidoactualizada exitosamente.')
              Listar_Ofertados();
              CerrarNuevo();
         }else{
           Mostrar_Mensaje('alert-danger', 'Verifique que los datos esten correctamente ingresados.');
         }
      }
  });
}

/*******************************************************************************/
/*************************************Pagos************************************/

function BuscarEstudianteCursos(){

  $('.alertas').children().remove();
  if($('#txtBuscar').val().length > 0){
    $.ajax({
      url: '../../controller/ctrolEstudiantes.php?accion=BuscarCursosEstudiante',
      type: 'post',
      data: 'q='+$("#txtBuscar").val(),
        beforeSend: function() {
            $(".resultado").html('<img src="../images/loader.gif">');
        },
        success: function(data){
          $(".resultado").html(data);
        }
    });
  }
}

function frmIngresarConsignacion(strInfo){
  var arrayInfo = strInfo.split("|");

  $(".resultado").html('<form role="form" name="frmPagarCurso" id="frmPagarCurso">'+
    '<input type="hidden" id="txtIdProgramaOfertado" name="txtIdProgramaOfertado" value="'+arrayInfo[0]+'">'+
    '<input type="hidden" id="txtCorreoElectronico" name="txtCorreoElectronico" value="'+arrayInfo[10]+'">'+
    '<div class="col-xs-6 col-sm-4">'+
        '<div class="form-group">'+
            '<label for="">Nro Documento</label>'+
            '<input class="form-control" id="txtNroDocumento" name="txtNroDocumento" placeholder="" value="'+arrayInfo[6]+'" readonly> '+
        '</div>'+
    '</div>'+
    '<div class="col-xs-6 col-sm-4">'+
        '<div class="form-group">'+
            '<label for="">Nombre Completo</label>'+
            '<input class="form-control" id="txtNombres" name="txtNombres" placeholder="" value="'+arrayInfo[7]+'" readonly> '+
        '</div>'+
    '</div>'+
    '<div class="col-xs-6 col-sm-4">'+
        '<div class="form-group">'+
            '<label for="">Programa</label>'+
            '<input class="form-control" id="txtPrograma" name="txtPrograma" placeholder="" value="'+arrayInfo[2]+'" readonly> '+
        '</div>'+
    '</div>'+
    '<div class="col-xs-6 col-sm-4">'+
        '<div class="form-group">'+
            '<label for="">Fecha Inscripción</label>'+
            '<input class="form-control" id="txtFechaInscripcion" name="txtFechaInscripcion" placeholder="" value="'+arrayInfo[3]+'" readonly> '+
        '</div>'+
    '</div>'+
    '<div class="col-xs-6 col-sm-4">'+
        '<div class="form-group">'+
            '<label for="">Costo</label>'+
            '<input class="form-control" id="txtPrecio" name="txtPrecio" placeholder="" value="'+arrayInfo[8]+'" readonly> '+
        '</div>'+
    '</div>'+
    '<div class="col-xs-6 col-sm-4">'+
        '<div class="form-group">'+
            '<label for="">Deuda a la fecha</label>'+
            '<input class="form-control" id="txtDeuda" name="txtDeuda" placeholder="" value="'+(arrayInfo[9]-arrayInfo[8])+'" readonly> '+
        '</div>'+
    '</div>'+
     '<div class="col-xs-6 col-sm-4">' +
        '<div class="form-group">' +
            '<label for="">Nro Consignación:</label>' +
            '<input class="form-control" id="txtNroConsignacion" name="txtNroConsignacion" placeholder="" value=""> ' +
        '</div>' +
    '</div>' +
    '<div class="col-xs-6 col-sm-4">' +
        '<div class="form-group">' +
            '<label for="">Valor a pagar:</label>' +
            '<input class="form-control" id="txtValorPagar" name="txtValorPagar" placeholder="" value=""> ' +
        '</div>' +
    '</div>' +
     '<div class="col-xs-6 col-sm-4">' +
        '<div class="form-group">' +
            '<label for="">Fecha Consignación:</label>' +
            '<input type="date" class="form-control" id="txtFechaConsignacion" name="txtFechaConsignacion" placeholder="" value=""> ' +
        '</div>' +
    '</div>' +
    '<div class="text-center">' +
        '<a href="#" class="btn btn-default" onclick="PagarCurso();return false;">Pagar</a>' +
    '</div>' +
'</form>');
}

function PagarCurso(){
   $.ajax({
     url: '../../controller/ctrolPagos.php?accion=PagarCurso',
     data: $('#frmPagarCurso').serialize(),
     type: 'post',
     beforeSend: function() {
        $(".alertas").html('<img src="../images/loader.gif">');
     },
     success:  function(data){
        
        // if(data == 1){
        //   Mostrar_Mensaje('alert-success', data);
        // }else{
        //   Mostrar_Mensaje('alert-danger', data);
        // }
        console.log(data);
        if(data == 1){
          Mostrar_Mensaje('alert-success', 'El pago se ha registrado con éxito, se le notificará al estudiante por medio de un correo electrónico.');
        }else if(data==2){
          Mostrar_Mensaje('alert-danger', 'El número de consecutivo, ya ha sido registrado, por favor verifique y vuelva a intentar.');
        }
        else{
          Mostrar_Mensaje('alert-danger', 'Ha ocurrido un error, por favor intente nuevamente.');
        }
     }
   });
}

/*******************************************************************************/
/************************************Requisitos*********************************/


function Listar_Requisitos() {
  $.ajax({
  url: '../../controller/ctrolRequisitos.php?accion=ListarRequisitos',
  type: 'post',
    beforeSend: function() {
        $(".resultado").html('<img src="../images/loader.gif">');
    },
    success:  function(data){
      $(".resultado").html(data);
    }
  });
}

function frmNuevoRequisito(){
  $.ajax({
    url: '../../controller/ctrolRequisitos.php?accion=frmNuevoRequisito',
    type: 'post',
      beforeSend: function() {
          $(".nuevo").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".nuevo").html(data);
      }
  });
}


function RegistrarRequisito(){
  $.ajax({
    url: '../../controller/ctrolRequisitos.php?accion=RegistrarRequisito',
    data: $('#frmNuevoPrograma').serialize(),
    type: 'post',
      beforeSend: function() {
          //$(".nuevo").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        if(data == 1){
          Mostrar_Mensaje('alert-success', 'El requisito ha sido registrado con éxito.');
          CerrarNuevo();
          Listar_Requisitos();
        }else{
          Mostrar_Mensaje('alert-danger', 'Ha ocurrido un error, por favor intente nuevamente.');
        }
      }
  });
}

function frmEditarRequisito(strInfo){
  var arrayInfo = strInfo.split("|");
  $.ajax({
    url: '../../controller/ctrolRequisitos.php?accion=frmEditarRequisito',
    data:{ arrayInfo: strInfo.split('|') },
    type: 'post',
      beforeSend: function() {
          $(".nuevo").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        $(".nuevo").html(data);
      }
  });
}

function ActualizarRequisito(){
  $.ajax({
    url: '../../controller/ctrolRequisitos.php?accion=ActualizarRequisito',
    data: $('#frmEditarRequisito').serialize(),
    type: 'post',
      beforeSend: function() {
          //$(".nuevo").html('<img src="../images/loader.gif">');
      },
      success:  function(data){
        //console.log(data);
         if(data == 1){
           Mostrar_Mensaje('alert-success', 'El requisito ha sido acutalizado satisfactoriamente.')
           CerrarNuevo();
         }
         else{
           Mostrar_Mensaje('alert-danger', 'Ha ocurrido un error, por favor intente nuevamente.')
         }
      }
  });
}