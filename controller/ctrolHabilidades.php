<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsHabilidades.php';
    include '../model/dao/clsProgramas.php';
    include '../model/bussiness/bsHabilidades.php';
    include '../model/bussiness/bsProgramas.php';
  
    $objHabilidades = new bsHabilidades();
    $objProgramas = new bsProgramas();

    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
    		case 'ListarHabilidades':
    			$arrayProgramas = $objHabilidades->Listar_Habilidades();
    			echo $objHabilidades->tblHabilidades($arrayProgramas);
			break;
    		
    		case 'RegistrarHabilidad':
                $objHabilidades->set_IdPrograma(strtoupper(trim($_POST['cbo_Programas']))); 
                $objHabilidades->set_Descripcion(utf8_decode(strtoupper(trim($_POST['txtHabilidad'])))); 
		        
                 if($objHabilidades->Registrar_Habilidad() == 1)
                     echo 1; //<p>Registro satisfactorio</p>
                 else
                     echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
			break;

			case 'ActualizarHabilidad':
    			$objHabilidades->set_IdPrograma($_POST['cbo_Programas']);
                $objHabilidades->set_IdHabilidad(strtoupper(trim($_POST['txtIdHabilidad'])));
                $objHabilidades->set_Descripcion(utf8_decode(strtoupper(trim($_POST['txtHabilidad']))));

                if($objHabilidades->Actualizar_Habilidad() == 1)
                    echo 1; //<p>Actualización satisfactoria</p>
                else
                    echo 0; //'<p>Ha ocurrido un error, por favor intente nuevamente</p>';
			break;

    		default:
			break;
    	}
    }
?>