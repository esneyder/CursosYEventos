<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsCursos.php';
    include '../model/dao/clsEstudiantes.php';
    include '../model/bussiness/bsCursos.php';
    include '../model/bussiness/bsEstudiantes.php';

    $objCursos = new bsCursos();
    $objStudent = new bsEstudiantes();
    
    if(isset($_POST['accion'])){
        switch ($_POST['accion']){
            case 'cboCities':
                //Consultamos la ciudades
                $cboAllCities = $objCursos->Combo_Cities($_POST['idDeparment']);
                echo $cboAllCities;
            break;
            case 'saveStudent':
                $dataStudent = $_POST['infoStudent'];
                
                $objStudent->set_IdTipoDocumento($dataStudent[0]);
                $objStudent->set_Expedida($dataStudent[1]);
                $objStudent->set_NroDocumento($dataStudent[2]);                
                $objStudent->set_Nombres($dataStudent[3]);
                $objStudent->set_Apellido1($dataStudent[4]);
                $objStudent->set_Apellido2($dataStudent[5]);
                $objStudent->set_IdDep_Nacimiento($dataStudent[6]);
                $objStudent->set_IdCiudad_Nacimiento($dataStudent[7]);
                $objStudent->set_LibretaMilitar($dataStudent[8]);
                $objStudent->set_Distrito($dataStudent[9]);
                $objStudent->set_IdEstadoCivil($dataStudent[10]);
                $objStudent->set_Genero($dataStudent[11]);
                $objStudent->set_Religion('');
                $objStudent->set_Cantidad_Hijos($dataStudent[12]);
                
                $objStudent->set_Direccion($dataStudent[13]);
                $objStudent->set_Barrio($dataStudent[14]);
                $objStudent->set_IdDep_Proviene($dataStudent[15]);
                $objStudent->set_IdCiu_Proviene($dataStudent[16]);

                $objStudent->set_IdPais_Proviene('57');
                $objStudent->set_Fijo($dataStudent[17]);
                $objStudent->set_Celular($dataStudent[18]);
                $objStudent->set_Correo_Electronico($dataStudent[19]);
                $objStudent->set_Estrato($dataStudent[20]);
                $objStudent->set_Empresa($dataStudent[21]);
                $objStudent->set_Cargo($dataStudent[22]);
                $objStudent->set_Direccion_Empresa($dataStudent[23]);
                //$objStudent->set_Tel_Empresa($dataStudent[13]);
                $objStudent->set_Fax_Empresa($dataStudent[24]);
                $objStudent->set_programs_offered($dataStudent[37]);

                $result = $objStudent->registrarCursoStudent($dataStudent);
                if($result != 'IssetProgrmaStudent'){
                    echo 'successInsert';
                }else{
                    echo 'IssetProgrmaStudent';
                }
            break;
        }
    }else{
        $dataDetailCursos = $objCursos->getDataCourse($_POST['data']);// post[data] es el id que llega del curso por ajax
        $cboTypeDocument = $objCursos->Combo_TypeDocument();
        $cboAllDeparments = $objCursos->Combo_Deparment();
        $cboAllEstadoCivil = $objCursos->Combo_EstadoCivil();
        include '../view/detailCourse.php';
    }