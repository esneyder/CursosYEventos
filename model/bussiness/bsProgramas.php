<?php
  class bsProgramas extends clsProgramas{
    
    function Combo_Programas($id = ''){
      $combo = '<select id="cbo_Programas" name="cbo_Programas" class="form-control">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_Programas();
      foreach($resultado as $value){
        if($id != ''){
          if($id == $value[0]){
            $combo .= '<option value="'.$value[0].'" selected>'.utf8_encode($value[1]).'</option>';
          }else{
            $combo .= '<option value="'.$value[0].'">'.utf8_encode($value[1]).'</option>';
          }
        }
        else{
          //if($value[0] != 1)
          $combo .= '<option value="'.$value[0].'">'.utf8_encode($value[1]).'</option>';
        }
      }
      return $combo .= '</select>';
    }
    
    public function tblProgramas($array){
      
      $tabla = "<table class='table table-bordered table-hover'>
                    <thead>
                        <tr align='center'>
                            <th>Titulo</th>
                            <th>Descripción</th>
                            <th>Imagen</th>
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
                      <td>".utf8_encode($value[2])."</td>
                      <td align='center'><img id='img' src='../".utf8_encode($value[3])."' width='50' height='50'></td>
                      <td align='center'><a href='' onclick='frmEditarPrograma(\"$info\");return false;'><i class='fa fa-pencil'></i></a></td>
                    </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>