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
            function Validar(user, pass)
            {
                $.ajax({
                    url: "../controller/ctrolLogin.php",
                    type: "POST",
                    data: "usuario="+user+"&contrasena="+pass,
                    success: function(resultado){
                        //$('#login-alert').fadeOut(3000);
                        $('#login-alert').html(resultado);
                        $('#login-alert').css('display', 'block');
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
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <div class="panel-title">Iniciar Sesión</div>
                    <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="RecordarContrasena.php">Olvidaste tu contraseña?</a></div>
                </div>     
                <div style="padding-top:30px" class="panel-body" >
                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12 resultado">
                        
                    </div>
                    <form id="loginform" class="form-horizontal" role="form" method="POST" action="return false" onsubmit="return false">
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="txtUsuario" type="text" class="form-control" name="txtUsuario" value="" placeholder="Usuario" autofocus>                                        
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="txtContrasena" type="password" class="form-control" name="txtContrasena" placeholder="Contraseña">
                        </div>
                        <div style="margin-top:10px" class="form-group">
                                <!-- Button -->
                            
                            <div class="col-sm-12 controls">
                                <p>
                                    <button onclick="Validar(document.getElementById('txtUsuario').value, document.getElementById('txtContrasena').value);">Iniciar</button>
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