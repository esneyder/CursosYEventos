<?php 
//echo '<pre>';print_r($dataDetailCursos);'</pre>'; 
?>
<div class="row">
    <div class="col-md-6">
        <div class="col-md-2 col-sm-3 text-center">
            <a class="story-title" href="#"><img alt="" src="<?php echo $dataDetailCursos[13]; ?>" style="width:100px;height:100px" class=""></a>
        </div>
        <div class="col-sm-offset-1 col-md-9 col-sm-9">
            <h3><?php echo utf8_encode($dataDetailCursos[11]); ?></h3>
            <div class="row">
                <div class="col-xs-12"><b>Descripción:</b></div>
            </div>
            <div class="row">
                <div class="col-xs-12"><?php echo $dataDetailCursos[12]; ?></div>
            </div>
            <div class="row">
                <div class="col-xs-9">
                    <!-- Button trigger modal -->
                    <button class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">
                        Registrarse
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Formulario de inscripción</h4>
            </div>
            <div class="modal-body">
                <div class="idealsteps-container">
                <!--<nav class="idealsteps-nav"></nav>-->
                <nav class="idealsteps-nav">
                    <ul>
                        <li onclick="updateTab(0,false)" class="idealsteps-step-active"><a tabindex="-1">Dato 1</a></li>
                        <li onclick="updateTab(1,false)"><a tabindex="-1">Dato 2<!--<span class="counter zero">0</span>--></a></li>
                        <li><a onclick="updateTab(2,false)" tabindex="-1">Dato 3</a></li>
                        <li><a onclick="updateTab(3,false)" tabindex="-1">Dato 4</a></li>
                        <li><a onclick="updateTab(4,false)" tabindex="-1">Dato 5</a></li>
                    </ul>
                </nav>
                <form action="" class="form-horizontal bv-form" id="inscripcionEstudent">
                    <div class="idealsteps-wrap">
                        <!-- Step 1 -->
                        <section class="idealsteps-step" id="idealsteps-step1" style="display: block">                            
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Tipo de documento</label>
                                <div class="col-lg-6">
                                    <select name="tipo_documento" class="form-control">
                                        <?php foreach ($dataTypeDocument as $key => $value) { ?>
                                            <option value="<?php echo $value[0]; ?>"><?php echo $value[1]; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Expedida</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txt_expedida" name="txt_expedida" />
                                </div>
                            </div>                            
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">N° Documento</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" onkeypress = "return validCampos(event,'number');" id="txt_documento" name="txt_documento" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Nombres</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txt_nombres" name="txt_nombres" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Apellido 1</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txt_apellido1" name="txt_apellido1" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Apellido 2</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="txt_apellido2" name="txt_apellido2" />
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="button" id="nextTab" onclick="updateTab(1,false)" class="btn btn-primary">Siguiente</button>
                            </div>
                        </section>
                        <!-- Step 2 -->
                        <section class="idealsteps-step has-feedback">
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Departamento de nacimiento</label>
                                <div class="col-lg-6">
                                    <select name="cbo_deparmentNacimi" id="cbo_deparmentNacimi" class="form-control">
                                        <?php foreach ($dataDeparment as $key => $value) { ?>
                                        <option value="<?php echo $value[1]; ?>"><?php echo utf8_encode($value[2]); ?></option>
                                        <?php } ?>                                     
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Ciudad de nacimiento</label>
                                <div class="col-lg-6">
                                    <select name="cbo_cityNacimi" class="form-control">

                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Libreta militar</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_libretaMili" id="txt_libretaMili" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Districto</label>
                                <div class="col-lg-6">
                                    <input type="text" onkeypress = "return validCampos(event,'number');" class="form-control" id="txt_districtoMili" name="txt_districtoMili" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Estado civil</label>
                                <div class="col-lg-6">
                                    <select name="cbo_estadoCivil" id="cbo_estadoCivil" class="form-control">
                                        <option value="0">-- Seleccione -- </option>
                                        <option value="1">Soltero</option>
                                        <option value="2">Casado</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Sexo</label>
                                <div class="col-lg-6">
                                    <select name="cbo_sexo" class="form-control">
                                        <option value="0">-- Seleccione -- </option>
                                        <option value="0">Masculino</option>
                                        <option value="0">Femenino</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Tiene hijos</label>
                                <div class="col-lg-3">
                                    <input type="radio" name="readio_tieneHijos" >Si
                                </div>
                                <div class="col-lg-3">
                                    <input type="radio" name="readio_tieneHijos" >No
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Edad de los hijos</label>
                                <div class="col-lg-2">
                                    <input type="radio" name="radio_edadHijos">1 - 10
                                </div>
                                <div class="col-lg-2" >
                                    <input type="radio" name="radio_edadHijos">10 - 20
                                </div>
                                <div class="col-lg-2">
                                    <input type="radio" name="radio_edadHijos"> > 20
                                </div>
                            </div>                            
                            <div class="pull-right">
                                <button type="button" onclick="updateTab(0,false)" class="btn btn-primary">Anterior</button>
                                <button type="button" onclick="updateTab(2,false)"class="btn btn-primary">Siguiente</button>
                            </div>
                        </section>
                        <!-- Step 3 -->
                        <section class="idealsteps-step ">
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Dirección</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_dirProce" id="txt_dirProce" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Barrio</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_barrioProce" id="txt_barrioProce" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Departamento</label>
                                <div class="col-lg-6">
                                    <select name="cbo_deparmentProce" id="cbo_deparmentProce" class="form-control">
                                        <option>-- Seleccione -- </option>                                       
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Ciudad</label>
                                <div class="col-lg-6">
                                    <select name="cbo_deparmentProce" id="cbo_deparmentProce" class="form-control">
                                        <option>-- Seleccione -- </option>                                       
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Telefono fijo</label>
                                <div class="col-lg-6">
                                    <input type="text" onkeypress = "return validCampos(event,'number');" class="form-control" name="txt_telProce" id="txt_telProce" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Telefono celular</label>
                                <div class="col-lg-6">
                                    <input type="text" onkeypress = "return validCampos(event,'number');" class="form-control" name="txt_celProce" id="txt_celProce" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Correo electronico</label>
                                <div class="col-lg-6">
                                    <input type="text" id="txt_mailProce" class="form-control" name="txt_mailProce" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Estrato</label>
                                <div class="col-lg-2">
                                    <input onkeypress = "return validCampos(event,'number');" type="number" min="1" max="6" value="1" class="form-control" name="txt_estraProce" id="txt_estraProce" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Empresa donde trabaja</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_empreTraba" id="txt_empreTrabaja" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Cargo</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_cargoTraba" id="txt_cargoTrabaja" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Dirección</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_dirTraba" />
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Fax</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="txt_fax" id="txt_fax" />
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="button" onclick="updateTab(1,false)" class="btn btn-primary">Anterior</button>
                                <button type="button" onclick="updateTab(3,false)"class="btn btn-primary">Siguiente</button>
                            </div>
                        </section>
                        <!-- Step 4-->
                        <section class="idealsteps-step">
                            <fieldset>
                                <legend>Secundaría</legend>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Institución</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_instiEstuRS" id="txt_institutoEstuR" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Título obtenido</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_tituObtenEstuRS" id="txt_tituloObtenEstuR" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Ciudad y Pais</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_ciudaPaisEstuRS" id="txt_ciudaPaisEstuR" />
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Universitario</legend>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Institución</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_instiEstuRU" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Título obtenido</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_tituObtenEstuRU" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Ciudad y Pais</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_ciudaPaisEstuRU" />
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Otro</legend>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Institución</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_instiEstuRO" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Título obtenido</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_tituObtenEstuRO" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Ciudad y Pais</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_ciudaPaisEstuRO" />
                                    </div>
                                </div>
                            </fieldset>
                            <div class="pull-right">
                                <button type="button" onclick="updateTab(2,false)" class="btn btn-primary">Anterior</button>
                                <button type="button" onclick="updateTab(4,false)"class="btn btn-primary">Siguiente</button>
                            </div>
                        </section>
                        <!-- Step 5-->
                        <section class="idealsteps-step">
                            <fieldset>
                                <legend>Programa al que se inscribe</legend>
                                <div class="form-group has-feedback">
                                    <!--<label class="col-sm-4 control-label">Ciudad y Pais</label>-->
                                    <div class="col-lg-6">
                                        <textarea style="width:563px;height: 163px;max-width:563px;max-height: 163px; " class="form-control" name="texta_programaInscribe" id="texta_programaInscribe"></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Tipo de programa</legend>
                                
                            </fieldset>
                            <div class="pull-right">
                                <button type="button" onclick="updateTab(3,false)" class="btn btn-primary">Anterior</button>                                
                                <button type="button" onclick="validInscripcionStudent()" class="btn btn-success">Guardar</button>
                            </div>
                        </section>
                    </div>
                    <span id="invalid"></span>
                </form>
            </div>
        </div>
    </div>
</div>
</div>