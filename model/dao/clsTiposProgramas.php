<?php

  class clsTiposProgramas{
    /*  Declaración de variables */
    protected $_IdTipoPrograma;
    protected $_Descripcion;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function Listar_TiposProgramas() {
      $query = "SELECT IdTipoPrograma, Descripcion 
                FROM tmTiposPrograma";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_BOTH);
    }

    /*Si el campo $id se envía true, es porque se va consultar 
    que no se este ingresando un tipo de programa que ya exista, osea la "Descripcion"*/
    public function Existe_TipoPrograma($id = false) {
      if($id){
        $query = "SELECT * FROM tmtiposprograma WHERE Descripcion = '{$this->_Descripcion}' AND IdTipoPrograma <> {$this->_IdTipoPrograma}";
      }else{
        $query = "SELECT Descripcion 
                FROM tmTiposPrograma
                WHERE Descripcion = '{$this->_Descripcion}'";
      }
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      
      return empty($this->_resultado) ? '0' : '1';
    }

    public function Registrar_TipoPrograma() {
      $query = "INSERT INTO tmTiposPrograma (Descripcion) VALUES('{$this->_Descripcion}')";
      return $this->_conexion->exec($query);
    }

    public function Actualizar_TipoPrograma() {
      try
      {
        $query = "UPDATE tmTiposPrograma SET Descripcion = '{$this->_Descripcion}' 
                  WHERE IdTipoPrograma = '{$this->_IdTipoPrograma}'";
        return $this->_conexion->exec($query);
      }
      catch(Exception $e){
        echo $e->getMessage();
      }
    }

    /* Métodos Get y Set  para el encapsulamiento de los datos */
     
    public function get_IdTipoPrograma() {
      return $this->_IdTipoPrograma;
    }

    public function set_IdTipoPrograma($_IdTipoPrograma) {
      $this->_IdTipoPrograma = $_IdTipoPrograma;
    }

    public function get_Descripcion() {
      return $this->_Descripcion;
    }

    public function set_Descripcion($_Descripcion) {
      $this->_Descripcion = $_Descripcion;
    }

  }
?>