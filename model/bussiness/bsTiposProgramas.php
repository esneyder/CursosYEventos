<?php
  class bsTiposProgramas extends clsTiposProgramas{
    
    function Combo_TiposProgramas($id = ''){
      $combo = '<select id="cbo_TiposProgramas" name="cbo_TiposProgramas" class="form-control">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_TiposProgramas();
      foreach($resultado as $value){
        if($id != ''){
          if($id == $value[0]){
            $combo .= '<option value="'.$value[0].'" selected>'.$value[1].'</option>';
          }else{
            $combo .= '<option value="'.$value[0].'">'.$value[1].'</option>';
          }
        }
        else{
          //if($value[0] != 1)
          $combo .= '<option value="'.$value[0].'">'.$value[1].'</option>';
        }
      }
      return $combo.='</select>';
    }
    
    public function tblTiposProgramas($array){
      $tabla = "<table class='table table-bordered table-hover'>
                    <thead>
                        <tr>
                            <th class='text-center'>Tipo Programa</th>
                            <th class='text-center'>Editar</th>
                        </tr>
                    </thead>
                    <tbody>";
      foreach ($array as $value){
          $tabla .= "<tr>
                      <td>".utf8_encode($value[1])."</td>
                      <td class='text-center'><a href='' onclick='frmEditarTipoPrograma($value[0], \"$value[1]\");return false;'><i class='fa fa-pencil'></i></a></td>
                    </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>