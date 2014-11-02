<?php

class clsCursos {

    private $_conexion;
    private $_resultado;

    function __construct() {
        $this->_conexion = cls_Conexion::Conectar();
    }

    //Esta funcion se encarga de trarme toda la info de los cursos que estÃ¡n activos
    //que esten en una fecha disponible y que no vayan a exceder el tope de estudiantes maximo.
    
    public function getAllCourse($page = 0){
        date_default_timezone_set('America/Bogota');
        $query = "SELECT PO.IdPrograma_Ofertado, COUNT(IdEstudiante)
         Inscritos,PO.MaxEstudiantes,P.Descripcion,P.Titulo,P.Imagen
                    FROM trprograma_ofertado PO 
                    LEFT JOIN (SELECT IdPrograma_Ofertado, 
                    IdEstudiante FROM trprogramaestudiantes) PE 
                        ON PO.IdPrograma_Ofertado = PE.IdPrograma_Ofertado
                    INNER JOIN tmprogramas P
                        ON	PO.IdPrograma = P.IdPrograma  
                    WHERE  Estado = 1
                    GROUP BY PO.IdPrograma_Ofertado
                    HAVING COUNT(PE.IdEstudiante) < PO.MaxEstudiantes
                    ORDER BY IdPrograma_Ofertado
                    LIMIT ".$page.",4";
        //('".date('Y-m-d H:s:i')."' >= po.FechaInicio AND '".date('Y-m-d H:s:i')."' <= po.FechaFinalizacion) AND
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }
     

    //Esta funcion se encarga de trarme un curso segÃºn el ID
    public function getDataCourse($id){
        /*$query = "SELECT * FROM trprograma_ofertado po
                INNER JOIN tmtiposprograma tp
                    ON po.IdTipoPrograma = tp.IdTipoPrograma
                INNER JOIN tmprogramas p
                    ON po.IdPrograma = p.IdPrograma
                LEFT JOIN tmhabilidadesdesarrollar HD ON p.IdPrograma = HD.IdPrograma
                WHERE po.IdPrograma_Ofertado = " . $id;*/
        $query = "SELECT * FROM vprogramsoffered WHERE IdPrograma_Ofertado = ".$id;
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    //consultamos todos los tipos de documentos
    public function getAllTypeDocument() {
        $query = "SELECT * FROM tmtiposdocumentos";
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }

    public function getAllDeparments() {
        $query = "SELECT * FROM tmdepartamentos";
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }
    
    public function getAllCities($Iddeparment){
        $query = "SELECT * FROM tmciudades WHERE IdDepartamento = ".$Iddeparment;
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }
    
    public function getAllEstadoCivil(){
        $query = "SELECT * FROM tmestadocivil";
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }
}