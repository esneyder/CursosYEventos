<?php
  class bsPagos extends clsPagos{
    
    function Combo_Pagos($id = ''){
      $combo = '<select id="cbo_Pagos" name="cbo_Pagos">
                <option value="0">Seleccione</option>';
      $resultado = $this->Listar_Pagoss()->fetchAll(PDO::FETCH_BOTH);
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
    
    public function tblPagos($array){
      $tabla = "<table class='table table-bordered table-hover'>
                    <thead>
                        <tr>
                            <th>Tipo Programa</th>
                            <th>Editar</th>
                        </tr>
                    </thead>
                    <tbody>";
      foreach ($array as $value){
          $tabla .= "<tr align='center'>
                      <td>".utf8_encode($value[1])."</td>
                      <td><a href='' onclick='frmEditarTipoEstudio($value[0], \"$value[1]\");return false;'><i class='fa fa-pencil'></i></a></td>
                    </tr>";
      }
      $tabla .= "</tbody></table>";
      return $tabla;
    }
  }
?>