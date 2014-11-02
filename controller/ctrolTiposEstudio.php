<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsTiposEstudio.php';
    include '../model/bussiness/bsTiposEstudio.php';
  	  	
    $objTiposEst = new bsTiposEstudio();

    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
    		case 'ListarTiposEstudios':
			    $arrayTiposPro = $objTiposEst->Listar_TiposEstudios();
			    echo $objTiposEst->tblTiposEstudio($arrayTiposPro);
			break;
    		
    		case 'RegistrarTipoEstudio':
    			$objTiposEst->set_Descripcion(strtoupper(trim($_POST['txtTipoEstudio'])));
    			
    			if(!($objTiposEst->Existe_TipoEstudio())){
    				if($objTiposEst->Registrar_TipoEstudio() > 0)
    					echo 1; //<p>Registro satisfactorio</p>
    				else
    					echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
					
				}else
    				echo 2; //"<p>Este Tipo de Programa ya existe, por favor intente nuevamente</p>";
			break;

			case 'ActualizarTipoEstudio':
    			$objTiposEst->set_IdTipoEstudio(trim($_POST['txtIdTipoEstudio']));
    			$objTiposEst->set_Descripcion(strtoupper(trim($_POST['txtTipoEstudio'])));
    			
    			if(!($objTiposEst->Existe_TipoEstudio(true))){
    				if($objTiposEst->Actualizar_TipoEstudio() > 0)
    					echo 1; //'<p>Actualización satisfactoria</p>';
    				else
    					echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
					
				}else
    				echo 2; // "<p>El dato que esta ingresando ya existe, por favor intente nuevamente</p>";
			break;

    		default:
			break;
    	}
    }
?>