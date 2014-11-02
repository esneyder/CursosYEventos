<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsCorreo.php';
    include '../model/dao/clsPagos.php';
    include '../model/bussiness/bsPagos.php';
  	  	
    $objPagos = new bsPagos();
    $objCorreo = new clsCorreo();

    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
    		case 'BuscarEstudiante':
			    $arrayTiposPro = $objPagos->Listar_Pagos();
			    echo $objPagos->tblPagos($arrayTiposPro);
			break;
    		
    		case 'PagarCurso':
                //$objCorreo->Enviar_Correo('asunto', 'sbedoyag14@gmail.com', 'Mensaje');
                $objPagos->set_IdPrograma_Ofertado(trim($_POST['txtIdProgramaOfertado']));
                $objPagos->set_IdEstudiante(trim($_POST['txtNroDocumento']));
                $objPagos->set_NroConsignacion(trim($_POST['txtNroConsignacion']));
                $objPagos->set_FechaPago(trim($_POST['txtFechaConsignacion']));
                $objPagos->set_Valor(trim($_POST['txtValorPagar']));

                //Si el método de pago se inserta, se procede a enviar el correo al estudiante donde le indique que ha terminado
                //su proceso de inscripción.
                //$objCorreo->Enviar_Correo("Confirmación inscripción", $_POST['txtCorreoElectronico'], $_POST['txtNombres'], $_POST['txtPrograma']);
                if(!($objPagos->Existe_Consignacion())){
                    if($objPagos->Registrar_Pago() == 1){
                        //$objCorreo->Enviar_Correo("Confirmación inscripción", $_POST['txtCorreoElectronico'], $_POST['txtNombres'], $_POST['txtPrograma']);
                        echo 1;
                    }else{
                        echo 0;
                    }
                }else echo 2;
			break;

    		default:
			break;
    	}
    }
?>