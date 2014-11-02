<?php

  class clsPagos{
    /*  Declaración de variables */
    protected $_IdPrograma_Ofertado;
    protected $_IdEstudiante;
    protected $_NroConsignacion;
    protected $_FechaPago;
    protected $_FechaRecibido;
    protected $_Valor;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }

    public function Listar_Pagos() {
      $query = "SELECT IdPrograma, Titulo AS Programa, IdPrograma_Ofertado, NroDocumento, Nombres, Apellidos, 
                        FechaInicio, FechaFinalizacion, Precio, FechaInscripcion, Correo_Electronico
                FROM vEstudiantes";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_BOTH);
    }
    
    public function Existe_Consignacion() {
      $query = "SELECT NroConsignacion FROM tmPagos WHERE NroConsignacion = '{$this->_NroConsignacion}';";
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      return empty($this->_resultado[0]) ? '0' : '1';
    }

    public function Registrar_Pago() {
      $ins = "INSERT INTO tmPagos (IdPrograma_Ofertado, IdEstudiante, NroConsignacion, FechaPago, FechaRecibido, Valor) 
                VALUES({$this->_IdPrograma_Ofertado}, '{$this->_IdEstudiante}', '{$this->_NroConsignacion}', 
                  '{$this->_FechaPago}', NOW(), {$this->_Valor})";
      return $this->_conexion->exec($ins);
    }

    /*    Métodos Get y Set    */

    public function get_IdPrograma_Ofertado() {
      return $this->_IdPrograma_Ofertado;
    }

    public function set_IdPrograma_Ofertado($_IdPrograma_Ofertado) {
      $this->_IdPrograma_Ofertado = $_IdPrograma_Ofertado;
    }

    public function get_IdEstudiante() {
      return $this->_IdEstudiante;
    }

    public function set_IdEstudiante($_IdEstudiante) {
      $this->_IdEstudiante = $_IdEstudiante;
    }

    public function get_NroConsignacion() {
      return $this->_NroConsignacion;
    }

    public function set_NroConsignacion($_NroConsignacion) {
      $this->_NroConsignacion = $_NroConsignacion;
    }

    public function get_FechaPago() {
      return $this->_FechaPago;
    }

    public function set_FechaPago($_FechaPago) {
      $this->_FechaPago = $_FechaPago;
    }

    public function get_FechaRecibido() {
      return $this->_FechaRecibido;
    }

    public function set_FechaRecibido($_FechaRecibido) {
      $this->_FechaRecibido = $_FechaRecibido;
    }

    public function get_Valor() {
      return $this->_Valor;
    }

    public function set_Valor($_Valor) {
      $this->_Valor = $_Valor;
    }
  }
?>