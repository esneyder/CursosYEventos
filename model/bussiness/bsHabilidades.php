<?php
  class bsHabilidades extends clsHabilidades{
    
    function Combo_Habilidades($id = ''){
      $combo = '<select id="cbo_Habilidades" name="cbo_Habilidades">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_Habilidades();
      foreach($resultado as $value){
        if($id != ''){
          if($id == $value[1]){
            $combo .= '<option value="'.$value[1].'" selected>'.$value[3].'</option>';
          }else{
            $combo .= '<option value="'.$value[1].'">'.$value[3].'</option>';
          }
        }
        else{
          //if($value[1] != 1)
          $combo .= '<option value="'.$value[1].'">'.$value[3].'</option>';
        }
      }
      return $combo;
    }
    
    public function tblHabilidades($array){
      $tabla = "<table class='table table-bordered table-hover'>
                    <thead>
                        <tr align='center'>
                            <th>Programa</th>
                            <th>Habilidad</th>
                            <th>Editar</th>
                        </tr>
                    </thead>
                    <tbody>";
      foreach ($array as $value){
        $strInfo = utf8_encode(implode($value, '|'));
        //En la ruta de la imagen nos salimos de la carpeta "../" ya que la ruta que se guarda 
        //en la base de datos se encuentra fuera de la carpeta 'admin'
          $tabla .= "<tr align='left'>
                      <td width='150'>".utf8_encode($value[2])."</td>
                      <td>".utf8_encode($value[3])."</td>
                      <td align='center'><a href='' onclick='frmEditarHabilidad(\"$strInfo\");return false;'><i class='fa fa-pencil'></i></a></td>
                    </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>