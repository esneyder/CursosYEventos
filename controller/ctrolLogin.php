<?php
    include '../config/config.php';
    include '../generic/cls_Conexion.php';
    include '../model/dao/clsUsuario.php';
    include '../model/bussiness/bsUsuario.php';
  
    $objUsu = new bsUsuario;
    
    if($_POST['usuario'] != null && $_POST['contrasena'] != null){
        $objUsu->set_usuario(strtolower(trim($_POST["usuario"])));
        $objUsu->set_contrasena(strtolower(trim($_POST["contrasena"])));
        //$objUsu->set_contrasena(md5(strtolower(trim($_POST["contrasena"]))));

        $usuario = $objUsu->Validar_Usuario();
        
        if(!empty($usuario)){
            if($usuario['IntentosFallidos']<3){
                $usuario = $objUsu->Iniciar_Sesion();
                if(!empty($usuario)){
                    $objUsu->Reiniciar_Intentos();
                    echo '<script>location.href = "../view/admin/"</script>';
                }else{
                    $objUsu->Aumentar_Intento($usuario);
                    echo "Usuario y/o contrasena incorrectos.";
                }
            }else{
              $objUsu->Aumentar_Intento($usuario);
              echo "Ha exedido el máximo de 3 intentos. Su cuenta ha sido bloqueada por favor comuníquece con el (la) administrador(a).";
            }
        }else{
            $objUsu->Aumentar_Intento($usuario);
            echo "El usuario no existe.";
        }
      }
      else {
            echo "Verifique que los campos no esten vacios.";
      }
?>