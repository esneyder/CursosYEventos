<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsUsuario.php';
    include '../model/bussiness/bsUsuario.php';
  
    $objUsu = new bsUsuario;
    
    if($_POST['email'] != null){
        $objUsu->set_CorreoElectronico(strtolower(trim($_POST["email"])));

        $usuario = $objUsu->Validar_CorreoElectronico();

        if(!empty($usuario))
            echo "Se ha enviado una nueva contraseña a la dirección de correo electrónico ".$usuario.".";
        else
            echo "La dirección de correo electrónico no es correcta.";
    }
    else {
        echo "Verifique que los campos no esten vacios.";
    }
?>