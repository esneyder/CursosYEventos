<?php

  class clsOfertados{
    /*  Declaración de variables */
    protected $_IdPrograma_Ofertado;
    protected $_IdTipoPrograma;
    protected $_IdPrograma;
    protected $_FechaInicio;
    protected $_FechaFinalizacion;
    protected $_MinEstudiantes;
    protected $_MaxEstudiantes;
    protected $_Estado;
    protected $_Precio;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function Listar_Ofertados() {
      $query = "SELECT PO.IdPrograma_Ofertado, TP.Descripcion AS TipoPrograma, P.Titulo AS Programa, DATE_FORMAT(PO.FechaInicio, '%d-%m-%Y') AS FechaInicio, DATE_FORMAT(PO.FechaFinalizacion, '%d-%m-%Y') AS FechaFinalizacion,
                PO.MinEstudiantes, PO.MaxEstudiantes, PO.Estado, PO.Precio 
                FROM trprograma_ofertado AS PO 
                INNER JOIN tmProgramas P ON PO.IdPrograma = P.IdPrograma
                INNER JOIN tmtiposprograma TP ON PO.IdTipoPrograma = TP.IdTipoPrograma";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    public function Publicar_Oferta() {
      $ins = "INSERT INTO trprograma_ofertado (IdTipoPrograma, IdPrograma, FechaInicio, 
                                              FechaFinalizacion, MinEstudiantes, MaxEstudiantes, Estado, Precio) 
            VALUES ({$this->_IdTipoPrograma}, {$this->_IdPrograma}, '{$this->_FechaInicio}', '{$this->_FechaFinalizacion}', 
              {$this->_MinEstudiantes}, {$this->_MaxEstudiantes}, {$this->_Estado}, {$this->_Precio})";
      //echo $ins;
      return $this->_conexion->exec($ins);
    }

    public function Actualizar_Oferta() {
      $upd = "UPDATE trprograma_ofertado SET MinEstudiantes = {$this->_MinEstudiantes}, 
                                              MaxEstudiantes = {$this->_MaxEstudiantes}, 
                                              Estado = {$this->_Estado}
                WHERE IdPrograma_Ofertado = $this->_IdPrograma_Ofertado;";
      //echo $upd;
      return $this->_conexion->exec($upd);
    }


    /*    Métodos Get y Set    */
  
    public function get_IdPrograma_Ofertado() {
      return $this->_IdPrograma_Ofertado;
    }

    public function set_IdPrograma_Ofertado($_IdPrograma_Ofertado) {
      $this->_IdPrograma_Ofertado = $_IdPrograma_Ofertado;
    }

    public function get_IdTipoPrograma() {
      return $this->_IdTipoPrograma;
    }

    public function set_IdTipoPrograma($_IdTipoPrograma) {
      $this->_IdTipoPrograma = $_IdTipoPrograma;
    }

    public function get_IdPrograma() {
      return $this->_IdPrograma;
    }

    public function set_IdPrograma($_IdPrograma) {
      $this->_IdPrograma = $_IdPrograma;
    }

    public function get_FechaInicio() {
      return $this->_FechaInicio;
    }

    public function set_FechaInicio($_FechaInicio) {
      $this->_FechaInicio = $_FechaInicio;
    }

    public function get_FechaFinalizacion() {
      return $this->_FechaFinalizacion;
    }

    public function set_FechaFinalizacion($_FechaFinalizacion) {
      $this->_FechaFinalizacion = $_FechaFinalizacion;
    }

    public function get_MinEstudiantes() {
      return $this->_MinEstudiantes;
    }

    public function set_MinEstudiantes($_MinEstudiantes) {
      $this->_MinEstudiantes = $_MinEstudiantes;
    }

    public function get_MaxEstudiantes() {
      return $this->_MaxEstudiantes;
    }

    public function set_MaxEstudiantes($_MaxEstudiantes) {
      $this->_MaxEstudiantes = $_MaxEstudiantes;
    }

    public function get_Estado() {
      return $this->_Estado;
    }

    public function set_Estado($_Estado) {
      $this->_Estado = $_Estado;
    }

    public function get_Precio() {
      return $this->_Precio;
    }

    public function set_Precio($_Precio) {
      $this->_Precio = $_Precio;
    }


  }
?>