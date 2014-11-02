<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsInformes.php';
    include '../model/bussiness/bsInformes.php';    
    
    $objInformes = new bsInformes();
    
    if(!empty($_GET['accion'])){
        header('Content-Type: application/json');
//        header('Content-Type: text/html; charset=iso-8859-1');
    	switch ($_GET['accion']){
            case 'informeStude_Curso':
                $result = $objInformes->getAllCourse_Student();
                for ($i = 0; $i < count($result); $i++) {
                    $result[$i][0] = utf8_encode($result[$i][0]);
                }
                print_r(json_encode($result));
            break;
        }
    }

?>