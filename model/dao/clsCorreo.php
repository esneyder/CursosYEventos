<?php
    class clsCorreo{
        /*  Declaración de variables */
        protected $_para;
        protected $_asunto;
        protected $_mensaje;
        private $_conexion;
        private $_resultado;
    
        /* Declaración método constructor, donde se inicializa la variable conexión */
        function __construct() {
            $this->_conexion = cls_Conexion::Conectar();
        }
    
        public function Enviar_Correo($_asunto, $_destinatario, $_nombre, $_programa) {
            ini_set("SMTP","localhost");//Cambien mail.cantv.net Por localhost ... ojo, ojo OJO
            ini_set("smtp_port",25);
            ini_set("sendmail_from","sbedoyag14@gmail.com");
            
            $destinatario = $_destinatario; 
            $asunto = $_asunto; 
            $mensaje = ' 
            <html> 
            <head> 
               <title></title> 
            </head> 
            <body> 
            <h1>"'.$_nombre.'"</h1> 
            <p> 
            <b>Bienvenido al curso "'.$_programa.'", esperamos que aprendas y disfrutes de esta nueva experiencia.</b>
            </p> 
            </body> 
            </html> 
            '; 

            //para el envío en formato HTML 
            $headers = "MIME-Version: 1.0\r\n"; 
            $headers .= "Content-type: text/html; charset=utf-8\r\n"; 

            //dirección del remitente 
            $headers .= "From: Steven <sbedoyag14@gmail.com>\r\n"; 

            //dirección de respuesta, si queremos que sea distinta que la del remitente 
            //$headers .= "Reply-To: sbedoyag14@gmail.com\r\n"; 

            //ruta del mensaje desde origen a destino 
            //$headers .= "Return-path: holahola@desarrolloweb.com\r\n"; 

            //direcciones que recibián copia 
            //$headers .= "Cc: maria@desarrolloweb.com\r\n"; 

            //direcciones que recibirán copia oculta 
            //$headers .= "Bcc: pepe@pepe.com,juan@juan.com\r\n"; 
            
            if(mail($destinatario,$asunto,$mensaje,$headers)){
                echo 'Funcino';
                return '1';
            }
            else return '0';
        }
    }
?>


