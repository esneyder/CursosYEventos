<?php

  class clsHabilidades{
    /*  Declaración de variables */
    protected $_IdPrograma;
    protected $_IdHabilidad;
    protected $_Descripcion;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function Listar_Habilidades() {
      $query = "SELECT H.IdPrograma, H.IdHabilidad, P.Titulo, H.Descripcion
                FROM tmHabilidadesDesarrollar H 
                INNER JOIN tmProgramas P ON H.IdPrograma = P.IdPrograma";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    /*Si el campo $id se envía true, es porque se va consultar 
    que no se este ingresando un tipo de programa que ya exista, osea la "Descripcion"*/
    public function Existe_Habilidad($id = false) {
      if($id){
        $query = "SELECT * FROM tmHabilidadesDesarrollar WHERE Titulo = '{$this->_Titulo}' AND IdPrograma <> {$this->_IdPrograma}";
      }else{
        $query = "SELECT Descripcion 
                FROM tmHabilidadesDesarrollar
                WHERE Descripcion = '{$this->_Descripcion}'";
      }
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      return empty($this->_resultado) ? '0' : '1';
    }

    public function Registrar_Habilidad() {
      $ins = "INSERT INTO tmHabilidadesDesarrollar (IdPrograma, Descripcion) 
              VALUES ('{$this->_IdPrograma}', '{$this->_Descripcion}')";
      return $this->_conexion->exec($ins);
    }

    public function Actualizar_Habilidad() {
      $upd = "UPDATE tmHabilidadesDesarrollar SET Descripcion = '{$this->_Descripcion}', 
                                     IdPrograma = '{$this->_IdPrograma}'
              WHERE IdHabilidad = {$this->_IdHabilidad}";
              echo $upd;
      return $this->_conexion->exec($upd);
    }

    /*    Métodos Get y Set    */
    
    public function get_IdPrograma() {
      return $this->_IdPrograma;
    }

    public function set_IdPrograma($_IdPrograma) {
      $this->_IdPrograma = $_IdPrograma;
    }


    public function get_IdHabilidad() {
      return $this->_IdHabilidad;
    }

    public function set_IdHabilidad($_IdHabilidad) {
      $this->_IdHabilidad = $_IdHabilidad;
    }

    public function get_Descripcion() {
      return $this->_Descripcion;
    }

    public function set_Descripcion($_Descripcion) {
      $this->_Descripcion = $_Descripcion;
    }
  }
?>