<?php
  class cls_Conexion {
    public static $_driver = DRIVER;
    public static $_host = HOST;
    public static $_dbname = DBNAME;
    public static $_user = USER;
    public static $_pass = PASS;
    public static $_conect;
    
    public function __constructor(){}
    
    public static function Conectar(){
      $dsn = self::$_driver.":host=".self::$_host.";dbname=".self::$_dbname;
      
      if(!isset(self::$_conect)){
        self::$_conect = new PDO($dsn, self::$_user, self::$_pass, array(PDO::ATTR_PERSISTENT => true));
        self::$_conect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      }
      return self::$_conect;
    }
    
//    public function Query($query=''){
//      return self::$_conect = query($query);
//    }
//    
//    public function Exec($query=''){
//      return self::$_conect = exec($query);
//    }
    
    public function __clone() {
      trigger_error('Este objeto no se puede clonar ', E_USER_ERROR);
    }
    
  }
?>
