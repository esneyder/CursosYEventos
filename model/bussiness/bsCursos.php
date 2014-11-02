<?php
class bsCursos extends clsCursos {
    function Combo_Deparment($id = ''){
        $combo = '<option value="0">Seleccione</option>';
        $resultado = $this->getAllDeparments();
        foreach ($resultado as $value) {
            if ($id != '') {
                if ($id == $value[1]) {
                    $combo .= '<option value="' . $value[1] . '" selected>' . utf8_encode($value[2]) . '</option>';
                } else {
                    $combo .= '<option value="' . $value[1] . '">' . utf8_encode($value[2]) . '</option>';
                }
            } else {
                if ($value[1] != 1)
                    $combo .= '<option value="' . $value[1] . '">' . utf8_encode($value[2]) . '</option>';
            }
        }
        return $combo;
    }
    
    function Combo_Cities($id = ''){
        $combo = '<option value="0">Seleccione</option>';
        $resultado = $this->getAllCities($id);
        foreach ($resultado as $value) {
            if ($id != '') {
                if ($id == $value[1]) {
                    $combo .= '<option value="' . $value[1] . '" selected>' . utf8_encode($value[2]) . '</option>';
                } else {
                    $combo .= '<option value="' . $value[1] . '">' . utf8_encode($value[2]) . '</option>';
                }
            } else {
                if ($value[1] != 1)
                    $combo .= '<option value="' . $value[1] . '">' . utf8_encode($value[2]) . '</option>';
            }
        }
        return $combo;
    }
    
    
    function Combo_TypeDocument($id = ''){
        $combo = '<select name="cbo_tipo_documento" id="cbo_tipo_documento" class="form-control">
                <option value="0">Seleccione</option>';
        $resultado = $this->getAllTypeDocument();
        foreach ($resultado as $value) {
            if ($id != '') {
                if ($id == $value[0]){
                    $combo .= '<option value="' . $value[0] . '" selected>' . $value[1] . '</option>';
                } else {
                    $combo .= '<option value="' . $value[0] . '">' . $value[1] . '</option>';
                }
            } else {
                if ($value[0] != 1)
                    $combo .= '<option value="' . $value[0] . '">' . $value[1] . '</option>';
            }
        }
        return $combo.'</select>';
    }
    
    function Combo_EstadoCivil($id = ''){
        $combo = '<select name="cbo_estadoCivil" id="cbo_estadoCivil" class="form-control">
                <option value="0">Seleccione</option>';
        $resultado = $this->getAllEstadoCivil();
        foreach ($resultado as $value) {
            if ($id != '') {
                if ($id == $value[0]){
                    $combo .= '<option value="' . $value[0] . '" selected>' . $value[1] . '</option>';
                } else {
                    $combo .= '<option value="' . $value[0] . '">' . $value[1] . '</option>';
                }
            } else {
                if ($value[0] != 1)
                    $combo .= '<option value="' . $value[0] . '">' . $value[1] . '</option>';
            }
        }
        return $combo.'</select>';
    }
}

?>