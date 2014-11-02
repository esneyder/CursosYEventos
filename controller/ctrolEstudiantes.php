<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsEstudiantes.php';
    include '../model/bussiness/bsEstudiantes.php';
  
    $objEstudiantes = new bsEstudiantes();
    
    if(isset($_GET['accion']) && !empty($_GET['accion']))
    {
    	switch ($_GET['accion']) {
    		case 'ListarEstudiantes':
    			$arrayEstudiantes = $objEstudiantes->Listar_Estudiantes();
    			echo $objEstudiantes->tblEstudiantes($arrayEstudiantes);
			break;

            //Se utiliza en el formulario Pagos, para buscar los cursos a los que el estudiante se ha inscrito.
            case 'BuscarCursosEstudiante':
                $objEstudiantes->set_NroDocumento(trim($_POST['q']));
                $objEstudiantes->set_Nombres(trim($_POST['q']));
                $objEstudiantes->set_Apellido1(trim($_POST['q']));
                $objEstudiantes->set_Apellido2(trim($_POST['q']));
                $cursosEstudiantes = $objEstudiantes->BuscarCursos_Estudiante();
                
                echo $objEstudiantes->tblCursos_Estudiantes($cursosEstudiantes);
            break;

            //Se utiliza en el formulario estudiante, para buscar estudiantes registrados.
            case 'BuscarEstudiante':
                $objEstudiantes->set_NroDocumento(trim($_POST['q']));
                $objEstudiantes->set_Nombres(trim($_POST['q']));
                $objEstudiantes->set_Apellido1(trim($_POST['q']));
                $objEstudiantes->set_Apellido2(trim($_POST['q']));
                $arrayEstudiantes = $objEstudiantes->Buscar_Estudiante();
                
                echo $objEstudiantes->tblEstudiantes($arrayEstudiantes);
            break;
            case 'InfoEstudiante':
                if(isset($_POST['arrayInfo'])){
                    $arrayInfo = $_POST['arrayInfo'];
                    include '../view/admin/InfoEstudiante.php';
                }

            break;

			case 'ActualizarEstudiante':
                $apellidos = explode(" ", $_POST['txtApellidos']);
    			$objEstudiantes->set_IdTipoDocumento(strtoUpper(trim($_POST['txtTipoDocumento'])));
                $objEstudiantes->set_Nombres(strtoUpper(trim($_POST['txtNombres'])));
                $objEstudiantes->set_Expedida(strtoUpper(trim($_POST['txtSexo'])));
                $objEstudiantes->set_IdEstadoCivil(strtoUpper(trim($_POST['txtEstadoCivil'])));
                // $objEstudiantes->set_IdPais_Proviene(strtoUpper(trim($_POST['txtPaisProviene'])));
                $objEstudiantes->set_Direccion(strtoUpper(trim($_POST['txtDireccion'])));
                $objEstudiantes->set_Fijo(strtoUpper(trim($_POST['txtTelefono'])));
                $objEstudiantes->set_Empresa(strtoUpper(trim($_POST['txtEmpresa'])));
                $objEstudiantes->set_Direccion_Empresa(strtoUpper(trim($_POST['txtDireccionEmpresa'])));
                $objEstudiantes->set_NroDocumento(strtoUpper(trim($_POST['txtNroDocumento'])));
                $objEstudiantes->set_Apellido1(strtoUpper(trim($apellidos[0])));
                $objEstudiantes->set_Apellido2(strtoUpper(trim($apellidos[1])));
                $objEstudiantes->set_LibretaMilitar(strtoUpper(trim($_POST['txtLibreta'])));
                $objEstudiantes->set_Religion(strtoUpper(trim($_POST['txtReligion'])));
                //$objEstudiantes->set_IdDep_Proviene(strtoUpper(trim($_POST['txtDepartamentoProviene'])));
                $objEstudiantes->set_Barrio(strtoUpper(trim($_POST['txtBarrio'])));
                $objEstudiantes->set_Celular(strtoUpper(trim($_POST['txtCelular'])));
                $objEstudiantes->set_Cargo(strtoUpper(trim($_POST['txtCargo'])));
                $objEstudiantes->set_Tel_Empresa(strtoUpper(trim($_POST['txtTelefonoEmpresa'])));
                $objEstudiantes->set_Expedida(strtoUpper(trim($_POST['txtExpedida'])));
                //$objEstudiantes->set_IdCiudad_Nacimiento(strtoUpper(trim($_POST['txtCiudadNacimiento'])));
                $objEstudiantes->set_Distrito(strtoUpper(trim($_POST['txtDistrito'])));
                $objEstudiantes->set_Cantidad_Hijos(strtoUpper(trim($_POST['txtNroHijos'])));
                //$objEstudiantes->set_IdCiu_Proviene(strtoUpper(trim($_POST['txtCiudadProviene'])));
                $objEstudiantes->set_Estrato(strtoUpper(trim($_POST['txtEstrato'])));
                $objEstudiantes->set_Correo_Electronico(strtoUpper(trim($_POST['txtCorreoElectronico'])));
                $objEstudiantes->set_Fax_Empresa(strtoUpper(trim($_POST['txtFax'])));

                if($objEstudiantes->Actualizar_Estudiante()==1){
                    echo 1;
                }
                else echo 0;
			break;

    		default:
			break;
    	}
    }
?>