<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsOfertados.php';
    include '../model/dao/clsTiposProgramas.php';
    include '../model/dao/clsProgramas.php';
    include '../model/bussiness/bsOfertados.php';
    include '../model/bussiness/bsTiposProgramas.php';
    include '../model/bussiness/bsProgramas.php';
  
    $objOfertados = new bsOfertados();
    $objTiposProgramas = new bsTiposProgramas();
    $objProgramas = new bsProgramas();


    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {

            case 'ListarOfertados':
                //$Combo_Programas = $objProgramas->Combo_Programas();
                $arrayOfertados = $objOfertados->Listar_Ofertados();
                echo $objOfertados->tblOfertados($arrayOfertados);
            break;

            case 'frmPublicarOferta':
                $Combo_TiposPrograma = $objTiposProgramas->Combo_TiposProgramas();
                $Combo_Programas = $objProgramas->Combo_Programas();
                
                echo '<div class="">
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-9  column col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
                            <form class="form-horizontal" role="form" name="frmPublicarOferta" id="frmPublicarOferta">
                                <fieldset>
                                    <!-- Form Name -->
                                    <legend>Publicar Oferta</legend>
                                    <!-- Select Basic -->
                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtTipoPrograma">Tipo Programa</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            '.$Combo_TiposPrograma.'
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="cbo_Programas">Programa</label>         
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            '.$Combo_Programas.'
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtFechaInicio">Fecha Inicio</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input type="date" class="form-control input-md" placeholder="" id="txtFechaInicio" name="txtFechaInicio" value="">
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtFechaFinalizacion">Fecha Finalización</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input type="date" class="form-control input-md" placeholder="" id="txtFechaFinalizacion" name="txtFechaFinalizacion" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label">Cupo mímino</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" placeholder="" id="txtCupoMin" name="txtCupoMin" value="">
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label">Cupo máximo</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" placeholder="" id="txtCupoMax" name="txtCupoMax" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtPrecio">Precio</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" placeholder="" id="txtPrecio" name="txtPrecio" value="">
                                        </div>
                                    </div>

                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="button1id"></label>
                                        <div class="col-md-8">
                                            <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="PublicarOferta(); return false;">Publicar</a></div>
                                            <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>';
            break;
    		
    		case 'PublicarOferta':
                $objOfertados->set_IdTipoPrograma($_POST['cbo_TiposProgramas']);
                $objOfertados->set_IdPrograma($_POST['cbo_Programas']);
                $objOfertados->set_FechaInicio($_POST['txtFechaInicio']);
                $objOfertados->set_FechaFinalizacion($_POST['txtFechaFinalizacion']);
                $objOfertados->set_MinEstudiantes(trim($_POST['txtCupoMin']));
                $objOfertados->set_MaxEstudiantes(trim($_POST['txtCupoMax']));
                $objOfertados->set_Estado('1');
                $objOfertados->set_Precio(strtoupper(trim($_POST['txtPrecio'])));

                if($objOfertados->Publicar_Oferta() == 1){
                    echo 1; //Registro exitoso
                }else{
                    echo 0; //Problemas al insertar
                }
			break;

            case 'frmEditarOferta':
            if(isset($_POST['arrayInfo'])){
                $arrayInfo = $_POST['arrayInfo'];
                echo '<div class="">
                        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-9  column col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
                            <form class="form-horizontal" role="form" name="frmEditarOferta" id="frmEditarOferta">
                                <fieldset>
                                    <legend>Actualizar Oferta</legend>
                                    <input type="hidden" id="txtProgramaOfertado" name="txtProgramaOfertado" value="'.$arrayInfo[0].'">
                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtTipoPrograma">Tipo Programa</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" id="txtTipoPrograma" name="txtTipoPrograma" value="'.$arrayInfo[1].'" disabled>
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txt_Programas">Programa</label>         
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" id="txt_Programas" name="txt_Programas" value="'.$arrayInfo[2].'" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtFechaInicio">Fecha Inicio</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input disabled type="text" class="form-control input-md" placeholder="" id="txtFechaInicio" name="txtFechaInicio" value="'.$arrayInfo[3].'">
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtFechaFinalizacion">Fecha Finalización</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input disabled type="text" class="form-control input-md" placeholder="" id="txtFechaFinalizacion" name="txtFechaFinalizacion" value="'.$arrayInfo[4].'">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label">Cupo mímino</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" placeholder="" id="txtCupoMin" name="txtCupoMin" value="'.$arrayInfo[5].'">
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label">Cupo máximo</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" placeholder="" id="txtCupoMax" name="txtCupoMax" value="'.$arrayInfo[6].'">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtPrecio">Precio</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <input class="form-control input-md" placeholder="" id="txtPrecio" name="txtPrecio" value="$ '.number_format($arrayInfo[8]).'" disabled>
                                        </div>
                                        <label class="col-xs-6 col-sm-3 col-md-3  control-label" for="txtPrecio">Estado</label>
                                        <div class="col-xs-6 col-sm-3 col-md-3 ">
                                            <select name="cbo_estado" id="cbo_estado" class="form-control">
                                                <option value="1">Activo</option>
                                                <option value="0">Inactivo</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="button1id"></label>
                                        <div class="col-md-8">
                                            <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="ActualizarOferta(); return false;">Actualizar</a></div>
                                            <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>';
            
            }
            break;

			case 'ActualizarOferta':
                $objOfertados->set_IdPrograma_Ofertado($_POST['txtProgramaOfertado']);
                $objOfertados->set_MinEstudiantes(trim($_POST['txtCupoMin']));
                $objOfertados->set_MaxEstudiantes(trim($_POST['txtCupoMax']));
                $objOfertados->set_Estado($_POST['cbo_estado']);
                if($objOfertados->Actualizar_Oferta() == 1){
                    echo 1;
                }else{
                    echo 0;
                }
			break;

    		default:
			break;
    	}
    }
?>