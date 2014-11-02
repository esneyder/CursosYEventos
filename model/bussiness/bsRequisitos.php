<?php
  class bsRequisitos extends clsRequisitos{
    
    function Combo_Requisitos($id = ''){
      $combo = '<select id="cbo_Requisitos" name="cbo_Requisitos">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_Requisitos()->fetchAll(PDO::FETCH_BOTH);
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
    
    public function tblRequisitos($array){
      //IdPrograma, Titulo AS Programa, IdRequisito, Requisito
      $tabla = "<table class='table table-bordered table-hover'>
                    <thead>
                        <tr align='center'>
                            <th>Programa</th>
                            <th>Requisito</th>
                            <th>Editar</th>
                        </tr>
                    </thead>
                    <tbody>";
      foreach ($array as $value){
        $info = utf8_encode(implode($value, '|'));
        //En la ruta de la imagen nos salimos de la carpeta "../" ya que la ruta que se guarda 
        //en la base de datos se encuentra fuera de la carpeta 'admin'
          $tabla .= "<tr align='left'>
                      <td width='150'>".utf8_encode($value[1])."</td>
                      <td>".utf8_encode($value[3])."</td>
                      <td align='center'><a href='' onclick='frmEditarRequisito(\"$info\");return false;'><i class='fa fa-pencil'></i></a></td>
                    </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>