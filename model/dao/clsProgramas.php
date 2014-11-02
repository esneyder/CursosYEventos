<?php

  class clsProgramas{
    /*  Declaración de variables */
    protected $_IdPrograma;
    protected $_Descripcion;
    protected $_Titulo;
    protected $_Imagen;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    

    public function Listar_Programas() {
      $query = "SELECT IdPrograma, Titulo, Descripcion, Imagen 
                FROM tmProgramas";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    public function Buscar_Programa($id){
      $query = "SELECT TipoPrograma, Programa
                FROM vprogramasestudiantes
                WHERE NroDocumento = '".$id."'";
      return $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);     
    }

    /*Si el campo $id se envía true, es porque se va consultar 
    que no se este ingresando un tipo de programa que ya exista, osea la "Descripcion"*/
    public function Existe_Programa($id = false) {
      if($id){
        $query = "SELECT * FROM tmProgramas WHERE Titulo = '{$this->_Titulo}' AND IdPrograma <> {$this->_IdPrograma}";
      }else{
        $query = "SELECT Descripcion 
                FROM tmProgramas
                WHERE Titulo = '{$this->_Titulo}'";
      }
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      return empty($this->_resultado) ? '0' : '1';
    }

    public function Registrar_Programa() {
      $ins = "INSERT INTO tmProgramas (Titulo, Descripcion, Imagen) VALUES ('{$this->_Titulo}', '{$this->_Descripcion}', '{$this->_Imagen}')";
      return $this->_conexion->exec($ins);
    }

    public function Actualizar_Programa() {
      $upd = "UPDATE tmProgramas SET Titulo = '{$this->_Titulo}', 
                                     Descripcion = '{$this->_Descripcion}', 
                                     Imagen = '{$this->_Imagen}'
              WHERE IdPrograma = {$this->_IdPrograma}";
      return $this->_conexion->exec($upd);
    }

    /*    Métodos Get y Set    */
    
    public function get_IdPrograma() {
      return $this->_IdPrograma;
    }

    public function set_IdPrograma($_IdPrograma) {
      $this->_IdPrograma = $_IdPrograma;
    }

    public function get_Descripcion() {
      return $this->_Descripcion;
    }

    public function set_Descripcion($_Descripcion) {
      $this->_Descripcion = $_Descripcion;
    }

    public function get_Titulo() {
      return $this->_Titulo;
    }

    public function set_Titulo($_Titulo) {
      $this->_Titulo = $_Titulo;
    }

    public function get_Imagen() {
      return $this->_Imagen;
    }

    public function set_Imagen($_Imagen) {
      $this->_Imagen = $_Imagen;
    }

  }
?>