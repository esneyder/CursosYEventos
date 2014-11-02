<?php

  class clsTiposEstudio{
    /*  Declaración de variables */
    protected $_IdTipoEstudio;
    protected $_Descripcion;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    

    public function Listar_TiposEstudios() {
      $query = "SELECT IdTipoEstudio, Descripcion 
                FROM tmTiposEstudios
                WHERE IdTipoEstudio <> 1";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_BOTH);
    }
    
    /*Si el campo $id se envía true, es porque se va consultar 
    que no se este ingresando un tipo de programa que ya exista, osea la "Descripcion"*/
    public function Existe_TipoEstudio($id = false) {
      if($id){
        $query = "SELECT * FROM tmTiposEstudios WHERE Descripcion = '{$this->_Descripcion}' AND IdTipoEstudio <> {$this->_IdTipoEstudio}";
      }else{
        $query = "SELECT Descripcion 
                FROM tmTiposEstudios
                WHERE Descripcion = '{$this->_Descripcion}'";
      }
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      
      return empty($this->_resultado) ? '0' : '1';
    }

    public function Registrar_TipoEstudio() {
      $query = "INSERT INTO tmTiposEstudios (Descripcion) VALUES('{$this->_Descripcion}')";
      return $this->_conexion->exec($query);
    }

    public function Actualizar_TipoEstudio() {
      try
      {
        $query = "UPDATE tmTiposEstudios SET Descripcion = '{$this->_Descripcion}' 
                  WHERE IdTipoEstudio = '{$this->_IdTipoEstudio}'";
        return $this->_conexion->exec($query);
      }
      catch(Exception $e){
        echo $e->getMessage();
      }
    }

    public function Estudios_Realizados($id){
      $query = "SELECT TE.Descripcion AS TipoEstudio, Institucion, Titulo_Obtenido, CONCAT(C.Descripcion,' - ', P.Descripcion) AS CiudadPais
                FROM  tmestudiosrealizados ER
                INNER JOIN tmpaises P ON ER.IdPais = P.IdPais
                INNER JOIN tmdepartamentos D ON ER.IdDepartamento = D.IdDepartamento
                INNER JOIN tmciudades C ON ER.IdDepartamento = C.IdDepartamento AND ER.IdCiudad = C.IdCiudad
                INNER JOIN tmtiposestudios TE ON ER.IdTipo_Estudio = TE.IdTipoEstudio
                WHERE ER.IdEstudiante = '".$id."'";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    /*    Métodos Get y Set    */
     
    public function get_IdTipoEstudio() {
      return $this->_IdTipoEstudio;
    }

    public function set_IdTipoEstudio($_IdTipoEstudio) {
      $this->_IdTipoEstudio = $_IdTipoEstudio;
    }

    public function get_Descripcion() {
      return $this->_Descripcion;
    }

    public function set_Descripcion($_Descripcion) {
      $this->_Descripcion = $_Descripcion;
    }

  }
?>