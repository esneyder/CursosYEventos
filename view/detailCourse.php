<?php 
//echo '<pre>';print_r($dataDetailCursos);'</pre>';
?>
<div class="row">
    <div class="col-md-6">
        <div class="col-md-2 col-sm-3 text-center">
            <a class="story-title" href="#"><img alt="" src="<?php echo $dataDetailCursos[0][5]; ?>" style="width:100px;height:100px" class=""></a>
        </div>
        <div class="col-sm-offset-1 col-md-9 col-sm-9">
            <h3><?php echo utf8_encode($dataDetailCursos[0][3]); ?></h3>
            <div class="row">
                <div class="col-xs-12"><b>Descripción:</b></div>
            </div>
            <div class="row">
                <div class="col-xs-12"><?php echo utf8_encode($dataDetailCursos[0][4]); ?></div>
            </div>
            <div class="row">
                <div class="col-xs-9">
                    <!-- Button trigger modal -->
                    <br>
                    <button class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">
                        Registrarse
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!--id Programa del programa ofertado-->
    <input type="hidden" id="IdPrograma_Ofertado" value="<?php echo $dataDetailCursos[0][8]; ?>" />
    <div class="col-md-6">
        <h3>Habilidades que desarrolla:</h3>
        <ul>
        <?php
            $banderaHabili = true;
            $count2 = count($dataDetailCursos);
            for ($i = 0; $i < $count2; $i++){
                if($dataDetailCursos[$i][13] != ""){
                ?>
                    <li><?php echo utf8_encode($dataDetailCursos[$i][14]); ?></li>
                <?php
                }else if($banderaHabili){
                    echo '<h4>No hay habilidades a desarrollar</h4>';
                    $banderaHabili = false;
                }
            }
        ?>
        </ul>
        
        <h3>Requisitos: </h3>
        <ul>
            <?php
            $count = count($dataDetailCursos);
            $banderaRequisi = true;
            for ($i = 0; $i < $count; $i++){
                if($dataDetailCursos[$i][15] != ""){
                ?>
                    <li><?php echo utf8_encode($dataDetailCursos[$i][16]); ?></li>
                <?php
                }else if($banderaRequisi){
                    echo '<h4>No hay requisitos</h4>';
                    $banderaRequisi = false;
                }
            }
            ?>
        </ul>
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
                    </ul>
                </nav>
                <form action="" class="form-horizontal bv-form" id="inscripcionEstudent">
                    <div class="idealsteps-wrap">
                        <!-- Step 1 -->
                        <section class="idealsteps-step" id="idealsteps-step1" style="display: block">                            
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Tipo de documento</label>
                                <div class="col-lg-6">
                                    <?php echo $cboTypeDocument; ?>
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
                                        <?php echo $cboAllDeparments; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Ciudad de nacimiento</label>
                                <div class="col-lg-6">
                                    <select name="cbo_cityNacimi" id="cbo_cityNacimi" class="form-control">
                                        
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
                                    <?php echo $cboAllEstadoCivil; ?>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Sexo</label>
                                <div class="col-lg-6">
                                    <select name="cbo_sexo" id="cbo_sexo" class="form-control">
                                        <option value="0">-- Seleccione -- </option>
                                        <option value="M">Masculino</option>
                                        <option value="F">Femenino</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Cantidad de hijos</label>
                                <div class="col-lg-6">
                                    <input type="text" onkeypress = "return validCampos(event,'number');" class="form-control" id="txt_cantHijos" name="txt_cantHijos" />
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
                                        <?php echo $cboAllDeparments; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Ciudad</label>
                                <div class="col-lg-6">
                                    <select name="cbo_cityProce" id="cbo_cityProce" class="form-control">
                                        
                                    </select>
                                </div>
                            </div>
                            <div class="form-group has-feedback">
                                <label class="col-sm-4 control-label">Telefono fijo</label>
                                <div class="col-lg-6">
                                    <input type="text" onkeypress="return validCampos(event,'number');" class="form-control" name="txt_telProce" id="txt_telProce" />
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
                                    <input onkeypress = "return validCampos(event,'number');" type="text" max="6" value="1" class="form-control" name="txt_estraProce" id="txt_estraProce" />
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
                                    <input type="text" class="form-control" name="txt_dirTraba" id="txt_dirTraba" />
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
                                        <input type="text" class="form-control" name="txt_instiEstuRS" id="txt_instiEstuRS" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Título obtenido</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_tituObtenEstuRS" id="txt_tituObtenEstuRS" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Departamento</label>
                                    <div class="col-lg-6">
                                        <select name="cbo_deparmentEstuRS" id="cbo_deparmentEstuRS" class="form-control">
                                            <?php echo $cboAllDeparments; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Ciudad</label>
                                    <div class="col-lg-6">
                                        <select name="cbo_cityEstuRS" id="cbo_cityEstuRS" class="form-control">
                                        
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Universitario</legend>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Institución</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_instiEstuRU" id="txt_instiEstuRU" />
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Título obtenido</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_tituObtenEstuRU" id="txt_tituObtenEstuRU"/>
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Departamento</label>
                                    <div class="col-lg-6">                                        
                                        <select name="cbo_deparmentEstuRU" id="cbo_deparmentEstuRU" class="form-control">
                                            <?php echo $cboAllDeparments; ?>
                                        </select>
                                    </div>                                    
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Ciudad</label>
                                    <div class="col-lg-6">
                                        <select name="cbo_cityEstuRU" id="cbo_cityEstuRU" class="form-control">
                                        
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Otro</legend>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Institución</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_instiEstuRO"  id="txt_instiEstuRO"/>
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Título obtenido</label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" name="txt_tituObtenEstuRO" id="txt_tituObtenEstuRO"/>
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Departamento</label>
                                    <div class="col-lg-6">
                                        <select name="cbo_deparmentEstuRO" id="cbo_deparmentEstuRO" class="form-control">
                                            <?php echo $cboAllDeparments; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group has-feedback">
                                    <label class="col-sm-4 control-label">Ciudad</label>
                                    <div class="col-lg-6">
                                        <select name="cbo_cityEstuRO" id="cbo_cityEstuRO" class="form-control">
                                        
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="pull-right">
                                <button type="button" onclick="updateTab(2,false)" class="btn btn-primary">Anterior</button>                                
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
<script>
    //el getAllCities es el que trae el data de las ciudades según el id
    //del departamento este recibe dos parametros el id del departamento y al cbo que 
    //lo voy a asignar esa respuesta
    $("#cbo_deparmentNacimi").on('change',function(){
        getAllCities($(this).val(),'cbo_cityNacimi');
    });
    
    $("#cbo_deparmentProce").on('change',function(){
        getAllCities($(this).val(),'cbo_cityProce');
    });
    
    //selects de estudios realizados
    $("#cbo_deparmentEstuRS").on('change',function(){
        getAllCities($(this).val(),'cbo_cityEstuRS');
    });
    
    $("#cbo_deparmentEstuRU").on('change',function(){
        getAllCities($(this).val(),'cbo_cityEstuRU');
    });
    $("#cbo_deparmentEstuRO").on('change',function(){
        getAllCities($(this).val(),'cbo_cityEstuRO');
    });    
</script>
