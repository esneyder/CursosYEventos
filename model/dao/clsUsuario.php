<?php

  class clsUsuario{
    protected $_usuario;
    protected $_contrasena;
    protected $_CorreoElectronico;
    private $_conexion;
    private $_resultado;
    
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function Validar_Usuario(){
        $sentencia = "SELECT * FROM tmusuarios WHERE Usuario = '{$this->_usuario}'";
        $this->_resultado = $this->_conexion->Query($sentencia);
        return $this->_resultado->fetch(PDO::FETCH_BOTH);
    }
    
    public function Iniciar_Sesion() {
      $query = "SELECT * 
                FROM tmusuarios
                WHERE Usuario='{$this->_usuario}' AND Contrasena='{$this->_contrasena}'";
      $this->_resultado = $this->_conexion->Query($query);
      
      session_start();
      return $_SESSION['usuario']=$this->_resultado->fetch(PDO::FETCH_BOTH);
    }

    public function Restablecer_Contrasena(){
      $upd = "UPDATE tmusuarios SET Contrasena='".$this->_contrasena."'";
      return $this->_conexion->Exec($upd);
    }
    
    public function Validar_CorreoElectronico() {
      $query = "SELECT Correo_Electronico 
                FROM tmusuarios
                WHERE Correo_Electronico='{$this->_CorreoElectronico}'";
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      return $this->_resultado[0];  
    }
    
    public function Validar_Pregunta() {
      $query = "SELECT * 
                FROM tmusuarios U
                INNER JOIN tmPreguntas P ON P.id_pregunta = U.id_pregunta
                WHERE usuario='{$this->_usuario}'";
      return $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
    }
    
    public function Modificar_Usuario() {
      try{
        $upd = "UPDATE tmusuarios 
                SET usuario = '{$this->_usuario}',
                    Correo_Electronico = '{$this->_CorreoElectronico}',
                WHERE id={$this->_idUsuario}";
          return $this->_conexion->Exec($upd);
      }
      catch(Exception $e){
        echo $e->getMessage();
      }
    }
    
    /*
      Cuando el usuario vaya a modificar la contraseña, se le pedida la anterior para la previa validación
    */
    public function Verificar_Contrasena() {
      try{
        $query = "SELECT Contrasena
                  FROM tmUsuarios
                  WHERE id={$this->_idUsuario}";
        return $this->_conexion->Query($query);
      }
      catch(Exception $e){
        echo $e->getMessage();
      }
    }
    
    /*
      Método para actualizar la contraseña.
    */
    public function Cambiar_Contrasena() {
      try{
        $upd = "UPDATE tmusuarios 
                SET Contrasena = '{$this->_contrasena}'
                WHERE id={$this->_idUsuario}";
        return $this->_conexion->Exec($upd);
      }
      catch(Exception $e){
        echo $e->getMessage();
      }
    }
    
    /**********************************************************/
    
    public function Aumentar_Intento(){
      $sentencia = "UPDATE tmusuarios SET IntentosFallidos = IntentosFallidos + 1 WHERE usuario='{$this->_usuario}'";
      return $this->_conexion->Exec($sentencia);
    }

   public function Reiniciar_Intentos(){
        try{
        $sentencia = "UPDATE tmusuarios SET IntentosFallidos = 0 WHERE usuario='{$this->_usuario}'";
        return $this->_conexion->Exec($sentencia);
        }  catch (Exception $e){
            echo $e->getMessage();
        }
   }
     
    public function get_usuario() {
      return $this->_usuario;
    }

    public function set_usuario($_usuario) {
      $this->_usuario = $_usuario;
    }

    public function get_contrasena() {
      return $this->_contrasena;
    }

    public function set_contrasena($_contrasena) {
      $this->_contrasena = $_contrasena;
    }

    public function get_CorreoElectronico() {
      return $this->_CorreoElectronico;
    }

    public function set_CorreoElectronico($_CorreoElectronico) {
      $this->_CorreoElectronico = $_CorreoElectronico;
    }
  }
?>
