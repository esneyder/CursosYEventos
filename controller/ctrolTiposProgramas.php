<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsTiposProgramas.php';
    include '../model/bussiness/bsTiposProgramas.php';
  
    $objTiposPro = new bsTiposProgramas();
    
    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
    		case 'ListarTiposProgramas':
    			$arrayTiposPro = $objTiposPro->Listar_TiposProgramas();
    			echo $objTiposPro->tblTiposProgramas($arrayTiposPro);
			break;
    		
    		case 'RegistrarTipoPrograma':
    			$objTiposPro->set_Descripcion(strtoupper(trim($_POST['txtTipoPrograma'])));

    			if(!($objTiposPro->Existe_TipoPrograma())){

    				if($objTiposPro->Registrar_TipoPrograma() == 1)
    					echo 1; //<p>Registro satisfactorio</p>
    				else
    					echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
					
				}else
    				echo 2; //"<p>Este Tipo de Programa ya existe, por favor intente nuevamente</p>";
			break;

			case 'ActualizarTipoPrograma':
    			$objTiposPro->set_IdTipoPrograma(trim($_POST['txtIdTipoPrograma']));
    			$objTiposPro->set_Descripcion(strtoupper(trim($_POST['txtTipoPrograma'])));

    			if(!($objTiposPro->Existe_TipoPrograma(true))){
    				if($objTiposPro->Actualizar_TipoPrograma() == 1)
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