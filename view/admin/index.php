<?php
    session_start();
    if(isset($_SESSION['usuario']))
    {
?>
        <!DOCTYPE html>
        <html lang="es">
            <head>

                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="description" content="">
                <meta name="author" content="">

                <title>Cursos Y Eventos Facultad de Ingeniería</title>

                <!-- Bootstrap Core CSS -->
                <link href="css/bootstrap.min.css" rel="stylesheet">

                <!-- Custom CSS -->
                <link href="css/sb-admin.css" rel="stylesheet">

                <!-- Morris Charts CSS -->
                <link href="css/plugins/morris.css" rel="stylesheet">

                <!-- Custom Fonts -->
                <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

                <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                <!--[if lt IE 9]>
                    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
                    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
                <![endif]-->

            </head>

            <body>
                <div id="wrapper">
                    <!-- Navigation -->
                    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index.php">Cursos y Eventos</a>
                        </div>
                        <!-- Top Menu Items -->
                        <ul class="nav navbar-right top-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Admin <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#"><i class="fa fa-fw fa-gear"></i> Configuración</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="../../controller/ctrolCerrarSesion.php"><i class="fa fa-fw fa-power-off"></i> Salir</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                        <div class="collapse navbar-collapse navbar-ex1-collapse">
                            <ul class="nav navbar-nav side-nav active">
                                <!-- <li class="active">
                                    <a href="index.php"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                                </li> -->
                                <li>
                                    <a href="informes.php"><i class="fa fa-fw fa-bar-chart-o"></i> Informes</a>
                                </li>
                                <li>
                                    <a href="ofertados.php"><i class="fa fa-fw fa-navicon"></i> Ofertados</a>
                                </li>
                                <li>
                                    <a href="estudiantes.php"><i class="fa fa-fw fa-group"></i> Estudiantes</a>
                                </li>
                                <li>
                                    <a href="Pagos.php"><i class="fa fa-fw fa-dollar"></i> Pagos</a>
                                </li>
                                <li>
                                    <a href="Programas.php"><i class="fa fa-fw fa-book"></i> Programas</a>
                                </li>
                                <li>
                                    <a href="TiposProgramas.php"><i class="fa fa-fw"></i> Tipos Programas</a>
                                </li>
                                <li>
                                    <a href="Ayuda.php"><i class="fa fa-fw fa-question"></i> Ayuda</a>
                                </li>
                                <!-- <li>
                                    <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-plus"></i> Maestras <i class="fa fa-fw fa-caret-down"></i></a>
                                    <ul id="demo" class="collapse">
                                        <li><a href="TiposProgramas.php">Tipos Programas</a></li>
                                        <li><a href="Programas.php">Programas</a></li>
                                        <li><a href="Habilidades.php">Habilidades a Desarrollar</a></li>
                                        <li><a href="Requisitos.php">Requisitos</a></li>
                                        <!-- <li><a href="Profesores.php">Profesores</a></li> -->
                                        <!-- <li><a href="Preguntas.php">Preguntas</a></li> -->
                                        <!-- <li><a href="TiposEstudios.php">Tipos de estudios</a></li>
                                    </ul>
                                </li> -->
                                <li>
                                    <a href="Ayuda.php"><i class="fa fa-fw fa-question"></i> Ayuda</a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </nav>

                    <div id="page-wrapper">
                        <div class="container-fluid">
                            <!-- Page Heading -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <h1 class="page-header">
                                        Bienvenido(a) <small>Administrador (a)</small>
                                    </h1>
                                    <ol class="breadcrumb">
                                        <li class="active">
                                            <i class="fa fa-home"></i> Inicio
                                        </li>
                                    </ol>
                                </div>
                            </div>
                            <!-- /.row -->

                            <div class="row">
                                <div class="col-lg-6 col-lg-offset-3 text-center">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div><b>GESTIÓN DEL SITIO</b></div>
                                                </div>
                                            </div>
                                        </div>
                                            <div class="panel-footer">
                                                    <i class="fa fa-fw fa-question"></i>
                                                    En esta página encontrará varias opciones de configuración y administración para el sitio.</span></span>
                                                <div class="clearfix"></div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->

                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- /#page-wrapper -->

                </div>
                <!-- /#wrapper -->

                <!-- jQuery Version 1.11.0 -->
                <script src="js/jquery-1.11.0.js"></script>

                <!-- Bootstrap Core JavaScript -->
                <script src="js/bootstrap.min.js"></script>

                <br>
                <!-- <footer>
                  <div class="container">
                    <div class="row">
                        <div class="col-sm-12" class="" style="color: white">
                          <div class="text-center">
                            <b>¿Más información?</b> <br/>
                            <b>Medellín: </b>(57) (4) - 2508328 • <b>Resto del país:</b> 01 8000 518328 <br/>
                            <b>Email: </b> comunicaciones@unac.edu.co <br/>
                            <b>Dirección: </b> Carrera 84 N° 33aa - 01 
                          </div>
                        </div>          
                    </div>
                  </div>
                </footer>   -->
            </body>

    
        </html>
<?php
}else{
    echo '<script type="text/javascript">location.href = "../Logout.php";</script>';
}    
?>