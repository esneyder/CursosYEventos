<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsRequisitos.php';
    include '../model/dao/clsProgramas.php';
    include '../model/bussiness/bsRequisitos.php';
    include '../model/bussiness/bsProgramas.php';
  
    $objRequisitos = new bsRequisitos();
    $objProgramas = new bsProgramas();

    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
    		case 'ListarRequisitos':
    			$arrayRequisitos = $objRequisitos->Listar_Requisitos();
    			echo $objRequisitos->tblRequisitos($arrayRequisitos);
			break;
    		
            case 'frmNuevoRequisito':
                $Combo_Programas = $objProgramas->Combo_Programas();

                echo '<fieldset class="scheduler-border"><legend class="scheduler-border">Registrar Requisito</legend>
                        <form class="form-horizontal" role="form" id="frmNuevoPrograma" enctype="multipart/form-data">
                        <div class="form-group col-sm-12">
                          <label for="cbo_Programas" class="col-sm-4 control-label">Programa</label>
                          <div class="col-sm-8">
                            '.$Combo_Programas.'
                          </div>
                        </div>
                        <div class="form-group col-sm-12">
                          <label for="txtRequisito" class="col-sm-4 control-label">Requisito</label>
                          <div class="col-sm-8">
                              <textarea class="form-control" rows="3" name="txtRequisito" id="txtRequisito" style="resize: none;" placeholder="Descripción del requisito" ></textarea>
                          </div>
                        </div>
                        <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="RegistrarRequisito(); return false;">Guardar</a></div>
                          <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>
                        </div>
                      </form></fieldset>';
            break;

            case 'RegistrarRequisito':
                $objRequisitos->set_IdPrograma($_POST['cbo_Programas']); 
                $objRequisitos->set_Descripcion(strtoupper(utf8_decode(trim($_POST['txtRequisito']))));
                
                if($objRequisitos->Registrar_Requisito() == 1)
                    echo 1; //<p>Registro satisfactorio</p>
                else
                    echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
            break;

            case 'frmEditarRequisito':
                //IdPrograma, Titulo AS Programa, IdRequisito, Requisito
                if(isset($_POST['arrayInfo'])){
                    $arrayInfo = $_POST['arrayInfo'];
                    
                    $Combo_Programas = $objProgramas->Combo_Programas($arrayInfo[0]);
                    echo '<fieldset class="scheduler-border">
                            <legend class="scheduler-border">Editar Requisito</legend>
                            <form class="form-horizontal" role="form" id="frmEditarRequisito" enctype="multipart/form-data">
                            <input type="hidden" id="txtIdRequisito" name="txtIdRequisito" value="'.$arrayInfo[2].'" >
                            <div class="form-group col-sm-12">
                              <label for="cbo_Programas" class="col-sm-4 control-label">Programa</label>
                              <div class="col-sm-8">
                                '.$Combo_Programas.'
                              </div>
                            </div>
                            <div class="form-group col-sm-12">
                              <label for="txtRequisito" class="col-sm-4 control-label">Requisito</label>
                              <div class="col-sm-8">
                                  <textarea class="form-control" rows="3" name="txtRequisito" id="txtRequisito" style="resize: none;">'.$arrayInfo[3].'</textarea>
                              </div>
                            </div>
                            <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="ActualizarRequisito(); return false;">Guardar</a></div>
                              <div class="col-sm-offset-2 col-sm-4"><a href="#" class="btn btn-default" onclick="CerrarNuevo(); return false;">Cerrar</a></div>
                            </div>
                          </form></fieldset>';
                }

            break;

    		case 'ActualizarRequisito':
                $objRequisitos->set_IdPrograma($_POST['cbo_Programas']); 
                $objRequisitos->set_IdRequisito($_POST['txtIdRequisito']); 
                $objRequisitos->set_Descripcion(strtoupper(utf8_decode(trim($_POST['txtRequisito']))));
                
                if($objRequisitos->Actualizar_Requisito() == 1)
                    echo 1; //<p>Registro satisfactorio</p>
                else
                    echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
			break;

    		default:
			break;
    	}
    }
?>