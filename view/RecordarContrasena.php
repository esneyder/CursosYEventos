<!DOCTYPE html> 
<html lang="es">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <meta charset="utf-8">
        <title>Cursos Y Eventos Facultad de Ingeniería</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <link rel="shortcut icon" href="/bootstrap/img/favicon.ico">
        <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet">
        <!-- <link href="css/bootstrap-combined.min.css" type="text/css" rel="stylesheet"> -->
        <link href="css/modern-business.css" rel="stylesheet">

        <link href="css/styles.css" type="text/css" rel="stylesheet">

        <script type='text/javascript' src="js/jquery.min.js"></script>
        <script type='text/javascript' src="js/bootstrap.min.js"></script>
        <!-- CSS code from Bootply.com editor -->            
        <style type="text/css">
          /* override bootstrap styles */
          @import url('http://fonts.googleapis.com/css?family=Oswald:300,400:latin,latin-ext');

        </style>
        <script type="text/javascript">
            function MostrarAlerta(resultado){
                $('#alert').html(resultado);
                $('#alert').css('display', 'block');
                //$('#alert').fadeOut(3000, function(){
                    //$('#alert').css('display', 'none');
                //});
            }

            function ValidarEmail(email)
            {
                $.ajax({
                    url: "../controller/ctrolUsuario.php",
                    type: "POST",
                    data: "email="+email,
                    success: function(resultado){
                        MostrarAlerta(resultado);
                    }
                });
            }
        </script>
    </head>
    <!-- HTML code from Bootply.com editor -->
    <body>
    <!-- <header class="navbar navbar-bright navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Inicio</a>
        </div>
        <nav class="collapse navbar-collapse" role="navigation">
          <ul class="nav navbar-nav">
            <li><a href="#">Ayuda</a></li>
          </ul>
        </nav>
      </div>
    </header>  -->
    <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-offset-4 col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <div class="panel-title">Has olvidado tu contraseña</div>
                    <div style="float:right; font-size: 90%; position: relative; top:-10px"><a href="Login.php">Atrás?</a></div>
                </div>     
                <div style="padding-top:30px" class="panel-body" >
                    <div style="display:none" id="alert" class="alert col-sm-12">
                        
                    </div>
                    <form id="loginform" class="form-horizontal" role="form" method="POST" action="return false" onsubmit="return false">
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input id="txtEmail" type="text" class="form-control" name="txtEmail" value="" placeholder="Email" autofocus>                                      
                        </div>
                        <div style="margin-top:10px" class="form-group">
                                <!-- Button -->
                            
                            <div class="col-sm-12 controls text-center">
                                <p>
                                    <button class="btn btn-default" onclick="ValidarEmail(document.getElementById('txtEmail').value);">Enviar</button>
                                </p>
                            <!--     <input type="submit" id="btn-login" class="btn btn-success" value="Iniciar">
                                <a id="btn-login" href="#" class="btn btn-success"></a>
                                <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a> -->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer>
      <div class="container">
        <div class="row">
            <div class="col-sm-12" class="">
              <div class="text-center">
                <b>¿Más información?</b> <br/>
                <b>Medellín: </b>(57) (4) - 2508328 • <b>Resto del país:</b> 01 8000 518328 <br/>
                <b>Email: </b> comunicaciones@unac.edu.co <br/>
                <b>Dirección: </b> Carrera 84 N° 33aa - 01 
              </div>
            </div>          
        </div>
      </div>
    </footer>    
    </body>
</html>