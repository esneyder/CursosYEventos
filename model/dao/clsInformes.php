<?php

class clsInformes {
    /* Declaración método constructor, donde se inicializa la variable conexión */
    private $_conexion;
    private $_resultado;

    function __construct() {
        $this->_conexion = cls_Conexion::Conectar();
    }
    
    public function getAllCourse_Student(){
        $query = 'SELECT p.Titulo ,COUNT(pe.IdEstudiante) AS cantidadStudent
                    FROM trprogramaestudiantes  pe
                    INNER JOIN trprograma_ofertado po
                            ON po.IdPrograma_Ofertado = pe.IdPrograma_Ofertado
                    INNER JOIN tmprogramas p
                            ON p.IdPrograma = po.IdPrograma
                    WHERE pe.Estado = 1
                    GROUP BY pe.IdPrograma_Ofertado';
        return $this->_conexion->Query($query)->fetchAll(PDO::FETCH_NUM);
    }    
}
