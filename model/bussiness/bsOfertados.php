<?php
  class bsOfertados extends clsOfertados{
    
    function Combo_Ofertados($id = ''){
      $combo = '<select id="cbo_Ofertados" name="cbo_Ofertados" class="form-control">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_Ofertados();
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
    
    public function tblOfertados($array){
      $tabla = "<table class=' table table-hover'>
                  <thead>
                      <tr>
                          <th>TipoPrograma</th>
                          <th>Titulo</th>
                          <th>Fecha Inicio</th>
                          <th>Fecha Finalización</th>
                          <th>Cupo Min</th>
                          <th>Cupo Max</th>
                          <th>Estado</th>
                          <th>Precio</th>
                          <th>Editar</th>
                      </tr>
                  </thead>
                  <tbody>";
      foreach ($array as $value){
        $info = utf8_encode(implode($value, '|'));
        $estado = $value[7] == 1 ? "Activo" : "Inactivo";
        //En la ruta de la imagen nos salimos de la carpeta "../" ya que la ruta que se guarda 
        //en la base de datos se encuentra fuera de la carpeta 'admin'
          $tabla .= "<tr align='left'>
                      <td>".utf8_encode($value[1])."</td>
                      <td>".utf8_encode($value[2])."</td>
                      <td>".$value[3]."</td>
                      <td>".$value[4]."</td>
                      <td align='right'>".$value[5]."</td>
                      <td align='right'>".$value[6]."</td>
                      <td>".$estado."</td>
                      <td align='right'>$ ".number_format($value[8])."</td>
                      <td align='center'><a href='' onclick='frmEditarOfertado(\"$info\");return false;'><i class='fa fa-pencil'></i></a></td>
                    </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>