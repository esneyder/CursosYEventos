<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsCursos.php';    

    $objCursos = new clsCursos();
 
    if(isset($_GET['accion'])){        
        header('Content-Type: application/json');
        switch ($_GET['accion']){
            case 1:
                $dataCursos = $objCursos->getAllCourse($_GET['page']);
                if(!empty($dataCursos)){
                    print_r(json_encode(array("data"=>$dataCursos,"message"=>"yes_data")));
                }else{
                    print_r(json_encode(array("message"=>"no_data")));
                }                
            break;
        }
    }else{        
        $dataCursos = $objCursos->getAllCourse();
    }

  