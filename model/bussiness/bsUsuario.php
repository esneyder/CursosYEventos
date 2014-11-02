<?php
  class bsUsuario extends clsUsuario{
    
    function Combo_Usuario($id = ''){
      $combo = '<select id="cbo_usuarios" name="cbo_usuarios">
                <option value="0">Seleccione</option>';
      $resultset = $this->Listar_Usuarios()->fetchAll(PDO::FETCH_BOTH);
      foreach($resultset as $value){
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
    
    public function tblUsuarios($array){
//      print'<pre>';print_r($array);exit();
      $tabla = "        
        <ul class='breadcrumb text-left'>
          <li><a href='../view/vw_principal.php'>Inicio</a> <span class='divider'>/</span></li>
          <li><a href='#'><i class='icon-wrench'></i></a> <span class='divider'>/</span></li>
          <li><a href='#'>Usuario</a> <span class='divider'>/</span></li>
          <li class='active'>Ver Usuarios</li>
        </ul>
          <table id='table_usu' class='table table-hover'>
                  <tr>
                    <th>Usuario</th>
                    <th>Correo Electrónico</th>
                    <th>Rol</th>
                    <th>Nombre</th>
                    <th>Deshabilitar</th>
                    <th>Habilitar</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                  </tr>";
      foreach ($array as $value){
        if($value[9] == 1){
          $tabla .= "<tr class='success' align='center'>
                      <td>".utf8_encode($value[1])."</td>
                      <td>".utf8_encode($value[3])."</td>
                      <td>".utf8_encode($value[11])."</td>
                      <td>".utf8_encode($value[5])."</td>
                      <td><a href='' onclick='DesUsu($value[0]);return false;'><i class='icon-ban-circle'></i></a></td>
                      <td><a href='' onclick='HabiUsu($value[0]);return false;'><i class='icon-ok'></i></a></td>
                      <td><a href='' onclick='frmModificarUsuario($value[0]);return false;'><i class='icon-edit'></i></a></td>
                      <td><a href='' onclick='EliminarUsuario($value[0]);return false;'><i class='icon-remove'></i></a></td>
                    </tr>";
        }else{
            $tabla .= "<tr class='error' align='center'>
                      <td>".utf8_encode($value[1])."</td>
                      <td>".utf8_encode($value[3])."</td>
                      <td>".utf8_encode($value[11])."</td>
                      <td>".utf8_encode($value[5])."</td>
                      <td><a href='#' onclick='DesUsu($value[0]);return false;'><i class='icon-ban-circle'></i></a></td>
                      <td><a href='#' onclick='HabiUsu($value[0]);return false;'><i class='icon-ok'></i></a></td>
                      <td><a href=''  onclick='frmModificarUsuario($value[0]);return false;'><i class='icon-edit'></i></a></td>
                      <td><a href=''  onclick='EliminarUsuario($value[0]);return false;'><i class='icon-remove'></i></a></td>
                    </tr>";
        }
      }
      $tabla .= "</table>";
      return $tabla;
    }
    
    function ComboPreguntas($array, $id=''){
      $combo = '<option value="0">Seleccione</option>';
      foreach($array as $value){
        if($id != '' && $id == $value[0])
          $combo .= '<option value="'.$value[0].'" selected>'.utf8_encode($value[1]).'</option>';
        else
        $combo .= '<option value="'.$value[0].'">'.utf8_encode($value[1]).'</option>';
      }
      return $combo;
    }
  }
?>