<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsProgramas.php';
    include '../model/bussiness/bsProgramas.php';
  
    $objProgramas = new bsProgramas();

    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
            case 'ComboProgramas':
                if(isset($_GET['strInfo'])){
                    $strInfo = (explode("|", $_GET['strInfo']));
                    echo $objProgramas->Combo_Programas($strInfo[0]);
                }
                else
                    echo $objProgramas->Combo_Programas();
            break;

    		case 'ListarProgramas':
    			$arrayProgramas = $objProgramas->Listar_Programas();
    			echo $objProgramas->tblProgramas($arrayProgramas);
			break;
    		
    		case 'RegistrarPrograma':
                $objProgramas->set_Titulo(utf8_decode(strtoupper(trim($_GET['Titulo'])))); 
    			$objProgramas->set_Descripcion(utf8_decode(strtoupper(trim($_GET['Descripcion']))));
		        
    			if(isset($_FILES['Imagen'])){
    				$carpetaimg = "../view/images/programas/";
    				$nombrearchivo = trim($_FILES['Imagen']['name']);
    				$nombrearchivo = substr($nombrearchivo, -20); 
    				$nombrearchivo = str_replace(" ", "", $nombrearchivo);
    				$ruta = $carpetaimg . $nombrearchivo;
    				$objProgramas->set_Imagen($ruta);

    				if(move_uploaded_file($_FILES['Imagen']['tmp_name'], $ruta)){
    					if(!($objProgramas->Existe_Programa())){
    						if($objProgramas->Registrar_Programa() == 1)
    							echo 1; //<p>Registro satisfactorio</p>
    						else
    							echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
    					}else
    						echo 2; //"<p>Este Programa ya existe, por favor intente nuevamente</p>";
					}
		        }else{
		        	if($objProgramas->Existe_Programa()==0){
                        $objProgramas->set_Imagen('../view/images/programas/default.jpg');
                        if($objProgramas->Registrar_Programa() == 1)
                            echo 1; //<p>Registro satisfactorio</p>
                        else
                            echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
                    }else echo 2;//"<p>Este Programa ya existe, por favor intente nuevamente</p>";
		        }
			break;

			case 'ActualizarPrograma':
            
    			$objProgramas->set_IdPrograma(trim($_GET['IdPrograma']));
                $objProgramas->set_Titulo(utf8_decode(strtoupper(trim($_GET['Titulo'])))); 
    			$objProgramas->set_Descripcion(utf8_decode(strtoupper(trim($_GET['Descripcion']))));

                if(isset($_FILES['Imagen'])){//Si se va modificar la imagen
                    $carpetaimg = "../view/images/programas/";
                    $nombrearchivo = trim($_FILES['Imagen']['name']);
                    $nombrearchivo = substr($nombrearchivo, -20); 
                    $nombrearchivo = str_replace(" ", "", $nombrearchivo);
                    $ruta = $carpetaimg . $nombrearchivo;
                    $objProgramas->set_Imagen($ruta);

                    if(move_uploaded_file($_FILES['Imagen']['tmp_name'], $ruta)){
                        if(!($objProgramas->Existe_Programa(true))){
                            if($objProgramas->Actualizar_Programa() == 1)
                                echo 1; //<p>Actualización satisfactoria</p>
                            else
                                echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
                        }else
                            echo 2; //"<p>Este Programa ya existe, por favor intente nuevamente</p>";
                    }
                }else{//Si no se envia la ruta de la imagen actual
                    if(!($objProgramas->Existe_Programa(true))){
                        $objProgramas->set_Imagen(str_replace('../../', '../', $_GET['imgAct'])); 
                        if($objProgramas->Actualizar_Programa() == 1)
                            echo 1; //<p>Actualización satisfactoria</p>
                        else
                            echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
                    }else echo 2; //"<p>Este Programa ya existe, por favor intente nuevamente</p>";
                }
			break;

    		default:
			break;
    	}
    }
?>