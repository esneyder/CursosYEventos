<?php
  class bsEstudiantes extends clsEstudiantes{
    
    function Combo_Estudiantes($id = ''){
      $combo = '<select id="cbo_Estudiantes" name="cbo_Estudiantes">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_Estudiantes()->fetchAll(PDO::FETCH_BOTH);
      foreach($resultado as $value){
        if($id != ''){
          if($id == $value[0]){
            $combo .= '<option value="'.$value[0].'" selected>'.$value[1].'</option>';
          }else{
            $combo .= '<option value="'.$value[0].'">'.$value[1].'</option>';
          }
        }
        else{
          if($value[0] != 1)
          $combo .= '<option value="'.$value[0].'">'.$value[1].'</option>';
        }
      }
      return $combo;
    }
    
    public function tblEstudiantes($array){
      $tabla = count($array)." registros encontrados.<br><br>
      <table class='table table-bordered table-hover'>
                        <thead>
                            <tr>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Nro Documento</th>
                                <th>Ver más</th>
                            </tr>
                        </thead>
                        <tbody>";
      foreach ($array as $value){
          $info = utf8_encode(implode($value, '|'));
          $tabla .= "<tr>
                                    <td>$value[3]</td>
                                    <td>$value[4]</td>
                                    <td>$value[1]</td>
                                    <td><a href='' onclick='InfoEstudiante(\"$info\");return false;'><i class='fa fa-plus-square'></i></a></td>
                                </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }

    public function tblCursos_Estudiantes($array){
      $tabla = count($array)." registros encontrados.<br><br>
            <table class='table table-bordered table-hover'>
                        <thead>
                            <tr>
                                <th>Nro Documento</th>
                                <th>Nombre</th>
                                <th>Programa</th>
                                <th>Fecha Inscripción</th>
                                <th>Precio</th>
                                <th>Deuda</th>
                                <th>Pagar</th>
                            </tr>
                        </thead>
                        <tbody>";
      foreach ($array as $value){
        $deuda = (($value[8])-$value[9]);
        $info = implode('|', $value);
          $tabla .= "<tr>
                        <td>".$value[6]."</td>
                        <td>".utf8_encode($value[7])."</td>
                        <td>".utf8_encode($value[2])."</td>
                        <td>".$value[3]."</td>
                        <td style='text-align: right'>".number_format($value[8])."</td>
                        <td style='text-align: right'>".number_format($deuda)."</td>";
          //Si la deuda del estudiante es mayor a 0, se muestra habilitado el icono de pagar
          $tabla .= $deuda > 0 ? "<td>
                                        <a href='' onclick='frmIngresarConsignacion(\"$info\");return false;'>
                                          <i class='fa fa-plus-square'></i>
                                        </a>
                                      </td>
                                    </tr>" 
                               : "<td><a><i class='fa fa-plus-square'></i></a></td></tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>