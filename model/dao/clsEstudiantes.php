<?php

  class clsEstudiantes{
    /*  Declaración de variables */
    protected $_IdTipoDocumento;
    protected $_NroDocumento;
    protected $_Expedida;
    protected $_Nombres;
    protected $_Apellido1;
    protected $_Apellido2;
    protected $_IdCiudad_Nacimiento;
    protected $_LibretaMilitar;
    protected $_Distrito;
    protected $_IdEstadoCivil;
    protected $_Genero;
    protected $_Religion;
    protected $_Cantidad_Hijos;
    protected $_Direccion;
    protected $_Barrio;
    protected $_IdCiu_Proviene;
    protected $_IdDep_Proviene;
    protected $_IdPais_Proviene;
    protected $_Fijo;
    protected $_Celular;
    protected $_Correo_Electronico;
    protected $_Estrato;
    protected $_Empresa;
    protected $_Cargo;
    protected $_Direccion_Empresa;
    protected $_Tel_Empresa;
    protected $_Fax_Empresa;
    protected $_programs_offered;
    private $_conexion;
    private $_resultado;
    
    /* Declaración método constructor, donde se inicializa la variable conexión */
    function __construct() {
      $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function Listar_Estudiantes() {
      $query = "SELECT IdTipoDocumento, NroDocumento, Expedida, Nombres, Apellidos, 
                CiuNacimiento, LibretaMilitar, Distrito, EstadoCivil, Genero, 
                Religion, Cantidad_Hijos, DireccionEstudiante, Barrio, CiuProviene, 
                DepProviene, PaisProviene, Fijo, Celular, Correo_Electronico, 
                Estrato, Empresa, Cargo, Direccion_Empresa, Tel_Empresa, Fax_Empresa
                FROM vEstudiantes";
      return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    public function Buscar_Estudiante($id = '') {
      if(!empty($id)){
        $query = "SELECT IdTipoDocumento, NroDocumento, Expedida, Nombres, Apellido1, Apellido2, 
                PaisNacimiento, DepNacimiento, CiuNacimiento, LibretaMilitar, Distrito, 
                EstadoCivil, Genero, Religion, Cantidad_Hijos, DireccionEstudiante, Barrio, 
                CiuProviene, DepProviene, PaisProviene, Fijo, Celular, Correo_Electronico, 
                Estrato, Empresa, Cargo, Direccion_Empresa, Tel_Empresa, Fax_Empresa
                FROM vEstudiantes
                WHERE NroDocumento LIKE '".$id."'";
      }else{
        $query = "SELECT IdTipoDocumento, NroDocumento, Expedida, Nombres, Apellidos, 
                CiuNacimiento, LibretaMilitar, Distrito, EstadoCivil, Genero, 
                Religion, Cantidad_Hijos, DireccionEstudiante, Barrio, CiuProviene, 
                DepProviene, PaisProviene, Fijo, Celular, Correo_Electronico, 
                Estrato, Empresa, Cargo, Direccion_Empresa, Tel_Empresa, Fax_Empresa
                FROM vEstudiantes
                WHERE NroDocumento LIKE '%{$this->_NroDocumento}%' 
                OR Nombres LIKE '%{$this->_Nombres}%'
                OR Apellido1 LIKE '%{$this->_Apellido1}%'
                OR Apellido2 LIKE '%{$this->_Apellido2}%'";
      }
      
      return $this->_resultado = $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    /*Si el campo $id se envía true, es porque se va consultar 
    que no se este ingresando un tipo de programa que ya exista, osea la "Descripcion"*/
    public function Existe_Estudiante($id = false) {
      $query = "SELECT * FROM tmEstudiantes WHERE NroDocumento = '{$this->_NroDocumento}'";
      $this->_resultado = $this->_conexion->Query($query)->fetch(PDO::FETCH_NUM);
      
      return empty($this->_resultado) ? '0' : '1';
    }
    
    public function BuscarCursos_Estudiante() {
      $query = "SELECT IdPrograma_Ofertado, IdPrograma, Programa, FechaInscripcion, FechaInicio, FechaFinalizacion, 
                NroDocumento, CONCAT(Nombres,' ',Apellidos) NombreCompleto, Precio, PagoRealizado, Correo_Electronico
                FROM vprogramasestudiantes 
                WHERE NroDocumento LIKE '%{$this->_NroDocumento}%' 
                OR Nombres LIKE '%{$this->_Nombres}%'
                OR Apellido1 LIKE '%{$this->_Apellido1}%'
                OR Apellido2 LIKE '%{$this->_Apellido2}%'";
      return $this->_resultado = $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    public function Registrar_Estudiante() {
      $query = "INSERT INTO tmEstudiantes (Descripcion) VALUES('{$this->_Descripcion}')";
      return $this->_conexion->exec($query);
    }

    public function Actualizar_Estudiante() {
      try
      {
        $upd = "UPDATE tmEstudiantes SET 
                  IdTipoDocumento    = '{$this->_IdTipoDocumento }',
                  NroDocumento   = '{$this->_NroDocumento}',
                  Expedida   = '{$this->_Expedida}',
                  Nombres  = '{$this->_Nombres}',
                  Apellido1  = '{$this->_Apellido1}',
                  Apellido2  = '{$this->_Apellido2}',
                  LibretaMilitar   = '{$this->_LibretaMilitar}',
                  Distrito   = '{$this->_Distrito}',
                  IdEstadoCivil  = '{$this->_IdEstadoCivil}',
                  IdGenero   = '{$this->_Genero}',
                  Religion   = '{$this->_Religion}',
                  Cantidad_Hijos   = '{$this->_Cantidad_Hijos}',
                  Direccion  = '{$this->_Direccion}',
                  Barrio   = '{$this->_Barrio}',
                  Fijo   = '{$this->_Fijo}',
                  Celular  = '{$this->_Celular}',
                  Correo_Electronico   = '{$this->_Correo_Electronico}',
                  Estrato  = '{$this->_Estrato}',
                  Empresa  = '{$this->_Empresa}',
                  Cargo  = '{$this->_Cargo}',
                  Direccion_Empresa  = '{$this->_Direccion_Empresa}',
                  Tel_Empresa  = '{$this->_Tel_Empresa}',
                  Fax_Empresa  = '{$this->_Fax_Empresa}'
                  WHERE NroDocumento = '{$this->_NroDocumento}'";
                  //echo $upd;
        return $this->_conexion->exec($upd);
      }
      catch(Exception $e){
        echo $e->getMessage();
      }
    }

    public function registrarCursoStudent($dataStudent) {
        date_default_timezone_set('America/Bogota');
        try {
            //$this->_conexion->beginTransaction();
            $result = $this->issetStudent();
            //$result = $this->Existe_Estudiante();
            //$this->_conexion->commit();
            //En caso de que sea mayor a cero es porque existe este estudiante
            if(count($result) > 0){
                $resultPS = $this->registrarProgramStudent();                
                //$this->_conexion->commit();
                if($resultPS != 'IssetProgrmaStudent'){
                    return $resultPS;
                }
                return $resultPS;
            }else{
                $query = "INSERT INTO tmestudiantes VALUES ('{$this->get_IdTipoDocumento()}','{$this->get_NroDocumento()}',
                '{$this->get_Expedida()}','{$this->get_Nombres()}','{$this->get_Apellido1()}','{$this->get_Apellido2()}',
                '57','{$this->get_IdDep_Nacimiento()}','{$this->get_IdCiudad_Nacimiento()}','{$this->get_LibretaMilitar()}','{$this->get_Distrito()}',
                '{$this->get_IdEstadoCivil()}','{$this->get_Genero()}','CATOLICO','{$this->get_Cantidad_Hijos()}','{$this->get_Direccion()}','{$this->get_Barrio()}','{$this->get_IdCiu_Proviene()}',
                '{$this->get_IdDep_Proviene()}','57','{$this->get_Fijo()}','{$this->get_Celular()}',
                '{$this->get_Correo_Electronico()}','{$this->get_Estrato()}','{$this->get_Empresa()}',
                '{$this->get_Cargo()}','{$this->get_Direccion_Empresa()}','','{$this->get_Fax_Empresa()}')";
                
                $queryStudent = $this->_conexion->exec($query);
                //$this->_conexion->commit();
                if ($queryStudent > 0){
                    $resultPS = $this->registrarProgramStudent();
                    //Registramos los estudios realizados
                    $result = $this->registrarEstudiosRealizados($dataStudent);
                    //$this->_conexion->commit();
                    return $result;
                }
            }
        } catch (Exception $ex){
            //$this->_conexion->rollBack();
            echo $ex->getMessage();
        }
    }
    //Cosultamos si un estudiante ya se encuentra registrado
    public function issetStudent(){
        $query = "SELECT * FROM tmestudiantes WHERE NroDocumento = '{$this->get_NroDocumento()}'";
        $this->_resultado = $this->_conexion->Query($query)->fetch();
        return $this->_resultado[1];//n° documento
    }

    public function registrarProgramStudent(){
        //Validamos primero que no se encuentre cursando el estudiante en este programa
        $queryIssetProgrmaStudent = "SELECT * FROM trprogramaestudiantes 
                WHERE IdPrograma_Ofertado = ".$this->get_programs_offered()." AND IdEstudiante = '".$this->get_NroDocumento()."'";
        $this->_resultado = $this->_conexion->Query($queryIssetProgrmaStudent)->fetch();        
        if(count($this->_resultado[0]) > 0){
            return "IssetProgrmaStudent";
        }else{            
            $queryProgrmaStudent = "INSERT INTO trprogramaestudiantes VALUES ('{$this->get_programs_offered()}',            
            '{$this->get_NroDocumento()}','" . date('Y-m-d H:s:i') . "',1)";
            return $this->_conexion->Exec($queryProgrmaStudent);
        }
    }

    //Metodo que se encarga de registrar los estudios realizados de cada estudiantes.
    //luego de haberlo registrado en la tbl tmestudiantes
    public function registrarEstudiosRealizados($dataStudentRealizados){
        $count = count($dataStudentRealizados);
        $query = "";
        $bandera1 = true;
        $bandera2 = true;
        $bandera3 = true;
        //empieza en la posición 25 porque de hay en andelante hasta el 36 están los
        //datos de estudios realizados
        for($i = 25; $i < $count; $i++){
            if($dataStudentRealizados[25] != "" && $bandera1 == true){
                $query .= "(3,null,'".$dataStudentRealizados[25]."','".$dataStudentRealizados[26]."',
                    '57','".$dataStudentRealizados[27]."','".$dataStudentRealizados[28]."','{$this->get_NroDocumento()}')";
                $i = 29;
                $bandera1 = false;
            }else if($dataStudentRealizados[29] != "" && $bandera2 == true){
                $query .= ",(4,null,'".$dataStudentRealizados[29]."','".$dataStudentRealizados[30]."',
                    '57','".$dataStudentRealizados[31]."','".$dataStudentRealizados[32]."','{$this->get_NroDocumento()}')";
                $i = 33;
                $bandera2 = false;
            }else if($dataStudentRealizados[33] != "" && $bandera3 == true){
                $query .= ",(2,null,'".$dataStudentRealizados[33]."','".$dataStudentRealizados[34]."',
                    '57','".$dataStudentRealizados[35]."','".$dataStudentRealizados[36]."','{$this->get_NroDocumento()}')";
                $i = 29;
                $bandera3 = false;
            }
        }
        $queryStuReali = " INSERT INTO tmestudiosrealizados VALUES ".$query;
        return $this->_conexion->Exec($queryStuReali);
    }

    /* Métodos Get y Set  para el encapsulamiento de los datos */
     
    public function get_IdTipoDocumento() {
      return $this->_IdTipoDocumento;
    }

    public function set_IdTipoDocumento($_IdTipoDocumento) {
      $this->_IdTipoDocumento = $_IdTipoDocumento;
    }

     public function get_NroDocumento() {
      return $this->_NroDocumento;
    }

    public function set_NroDocumento($_NroDocumento) {
      $this->_NroDocumento = $_NroDocumento;
    }

    public function get_Expedida() {
      return $this->_Expedida;
    }

    public function set_Expedida($_Expedida) {
      $this->_Expedida = $_Expedida;
    }

    public function get_Nombres() {
      return $this->_Nombres;
    }

    public function set_Nombres($_Nombres) {
      $this->_Nombres = $_Nombres;
    }

    public function get_Apellido1() {
      return $this->_Apellido1;
    }

    public function set_Apellido1($_Apellido1) {
      $this->_Apellido1 = $_Apellido1;
    }

    public function get_Apellido2() {
      return $this->_Apellido2;
    }

    public function set_Apellido2($_Apellido2) {
      $this->_Apellido2 = $_Apellido2;
    }

    public function get_IdCiudad_Nacimiento() {
      return $this->_IdCiudad_Nacimiento;
    }

    public function set_IdCiudad_Nacimiento($_IdCiudad_Nacimiento) {
      $this->_IdCiudad_Nacimiento = $_IdCiudad_Nacimiento;
    }

    public function get_IdDep_Nacimiento() {
      return $this->_IdDep_Nacimiento;
    }

    public function set_IdDep_Nacimiento($_IdDep_Nacimiento) {
      $this->_IdDep_Nacimiento = $_IdDep_Nacimiento;
    }

    public function get_IdPais_Nacimiento() {
      return $this->_IdPais_Nacimiento;
    }

    public function set_IdPais_Nacimiento($_IdPais_Nacimiento) {
      $this->_IdPais_Nacimiento = $_IdPais_Nacimiento;
    }

    public function get_LibretaMilitar() {
      return $this->_LibretaMilitar;
    }

    public function set_LibretaMilitar($_LibretaMilitar) {
      $this->_LibretaMilitar = $_LibretaMilitar;
    }

    public function get_Distrito() {
      return $this->_Distrito;
    }

    public function set_Distrito($_Distrito) {
      $this->_Distrito = $_Distrito;
    }

    public function get_IdEstadoCivil() {
      return $this->_IdEstadoCivil;
    }

    public function set_IdEstadoCivil($_IdEstadoCivil) {
      $this->_IdEstadoCivil = $_IdEstadoCivil;
    }

    public function get_Genero() {
      return $this->_Genero;
    }

    public function set_Genero($_Genero) {
      $this->_Genero = $_Genero;
    }
    
    public function get_Religion() {
      return $this->_Religion;
    }

    public function set_Religion($_Religion) {
      $this->_Religion = $_Religion;
    }


    public function get_Cantidad_Hijos() {
      return $this->_Cantidad_Hijos;
    }

    public function set_Cantidad_Hijos($_Cantidad_Hijos) {
      $this->_Cantidad_Hijos = $_Cantidad_Hijos;
    }

    public function get_Direccion() {
      return $this->_Direccion;
    }

    public function set_Direccion($_Direccion) {
      $this->_Direccion = $_Direccion;
    }

    public function get_Barrio() {
      return $this->_Barrio;
    }

    public function set_Barrio($_Barrio) {
      $this->_Barrio = $_Barrio;
    }

    public function get_IdCiu_Proviene() {
      return $this->_IdCiu_Proviene;
    }

    public function set_IdCiu_Proviene($_IdCiu_Proviene) {
      $this->_IdCiu_Proviene = $_IdCiu_Proviene;
    }

    public function get_IdDep_Proviene() {
      return $this->_IdDep_Proviene;
    }

    public function set_IdDep_Proviene($_IdDep_Proviene) {
      $this->_IdDep_Proviene = $_IdDep_Proviene;
    }

    public function get_IdPais_Proviene() {
      return $this->_IdPais_Proviene;
    }

    public function set_IdPais_Proviene($_IdPais_Proviene) {
      $this->_IdPais_Proviene = $_IdPais_Proviene;
    }

    public function get_Fijo() {
      return $this->_Fijo;
    }

    public function set_Fijo($_Fijo) {
      $this->_Fijo = $_Fijo;
    }

    public function get_Celular() {
      return $this->_Celular;
    }

    public function set_Celular($_Celular) {
      $this->_Celular = $_Celular;
    }

    public function get_Correo_Electronico() {
      return $this->_Correo_Electronico;
    }

    public function set_Correo_Electronico($_Correo_Electronico) {
      $this->_Correo_Electronico = $_Correo_Electronico;
    }

    public function get_Estrato() {
      return $this->_Estrato;
    }

    public function set_Estrato($_Estrato) {
      $this->_Estrato = $_Estrato;
    }

    public function get_Empresa() {
      return $this->_Empresa;
    }

    public function set_Empresa($_Empresa) {
      $this->_Empresa = $_Empresa;
    }

    public function get_Cargo() {
      return $this->_Cargo;
    }

    public function set_Cargo($_Cargo) {
      $this->_Cargo = $_Cargo;
    }

    public function get_Direccion_Empresa() {
      return $this->_Direccion_Empresa;
    }

    public function set_Direccion_Empresa($_Direccion_Empresa) {
      $this->_Direccion_Empresa = $_Direccion_Empresa;
    }

    public function get_Tel_Empresa() {
      return $this->_Tel_Empresa;
    }

    public function set_Tel_Empresa($_Tel_Empresa) {
      $this->_Tel_Empresa = $_Tel_Empresa;
    }

    public function get_Fax_Empresa() {
      return $this->_Fax_Empresa;
    }

    public function set_Fax_Empresa($_Fax_Empresa) {
      $this->_Fax_Empresa = $_Fax_Empresa;
    }

    public function get_programs_offered() {
        return $this->_programs_offered;
    }

    public function set_programs_offered($_programs_offered) {
        $this->_programs_offered = $_programs_offered;
    }
  }
?>