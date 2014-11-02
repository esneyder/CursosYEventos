<?php

  class clsRequisitos{
    /*  Declaración de variables */
    protected $_IdPrograma;
    protected $_IdRequisito;
    protected $_Descripcion;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function Listar_Requisitos() {
      $query = "SELECT P.IdPrograma, P.Titulo AS Programa, R.IdRequisito, R.Descripcion AS Requisito
                FROM tmprogramas AS P
                INNER JOIN tmrequisitos AS R ON P.IdPrograma = R.IdPrograma";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    public function Registrar_Requisito() {
      $ins = "INSERT INTO tmRequisitos (IdPrograma, Descripcion) VALUES ({$this->_IdPrograma}, '{$this->_Descripcion}')";
      //echo $ins;
      return $this->_conexion->exec($ins);
    }

    public function Actualizar_Requisito() {
      $upd = "UPDATE tmRequisitos SET IdPrograma = {$this->_IdPrograma}, 
                                     Descripcion = '{$this->_Descripcion}'
              WHERE IdRequisito = {$this->_IdRequisito}";
      //echo $upd;
      return $this->_conexion->exec($upd);
    }

    /*    Métodos Get y Set    */
    
    public function get_IdPrograma() {
      return $this->_IdPrograma;
    }

    public function set_IdPrograma($_IdPrograma) {
      $this->_IdPrograma = $_IdPrograma;
    }

    public function get_IdRequisito() {
      return $this->_IdRequisito;
    }

    public function set_IdRequisito($_IdRequisito) {
      $this->_IdRequisito = $_IdRequisito;
    }

    public function get_Descripcion() {
      return $this->_Descripcion;
    }

    public function set_Descripcion($_Descripcion) {
      $this->_Descripcion = $_Descripcion;
    }
  }
?>