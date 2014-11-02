<?php
    session_start();
    if(isset($_SESSION['usuario']))
    {
?>
<!DOCTYPE html>
        <div id="">
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
                        <li class="active">
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
            <div class="infoEstudiante">
                <div id="page-wrapper">

                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    <?php echo $arrayInfo[3].' '.$arrayInfo[4]; ?> 
                                </h1>
                                <ol class="breadcrumb">
                                    <li>
                                        <i class="fa fa-home"></i>  <a href="index.php">Inicio</a>
                                    </li>
                                    <li class="">
                                        <a href="Estudiantes.php">Estudiantes </a><i class="fa fa-group"></i>
                                    </li>
                                    <li class="active">
                                        <i class="fa fa-male"></i> <?php echo $arrayInfo[3].' '.$arrayInfo[4]; ?> 
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <!-- /.row -->

                            <form role="form" name="frmActualizarEstudiante" id="frmActualizarEstudiante" action="infoPDF.php">
                                <div class="col-xs-6 col-sm-4">
                                    <div class="form-group">
                                        <label for="txtTipoDocumento">Tipo Documento</label>
                                        <input class="form-control" id="txtTipoDocumento" name="txtTipoDocumento" placeholder="" value="<?php echo $arrayInfo[0]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="txtNombres">Nombres</label>
                                        <input class="form-control" placeholder="" id="txtNombres" name="txtNombres" value="<?php echo $arrayInfo[3]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="txtSexo">Sexo</label>
                                        <input class="form-control" placeholder="" id="txtSexo" name="txtSexo" value="<?php echo $arrayInfo[9]/* == "M" ? "MASCULINO" : "FEMENINO"*/; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Estado civil</label>
                                        <input class="form-control" placeholder="" id="txtEstadoCivil" name="txtEstadoCivil" value="<?php echo $arrayInfo[8]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Pais Proviene</label>
                                        <input disabled class="form-control" placeholder="" id="txtPaisProviene" name="txtPaisProviene" value="<?php echo $arrayInfo[16]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Direccion</label>
                                        <input class="form-control" placeholder="" id="txtDireccion" name="txtDireccion" value="<?php echo $arrayInfo[12]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Teléfono fijo</label>
                                        <input class="form-control" placeholder="" id="txtTelefono" name="txtTelefono" value="<?php echo $arrayInfo[17]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Empresa</label>
                                        <input class="form-control" placeholder="" id="txtEmpresa" name="txtEmpresa" value="<?php echo $arrayInfo[21]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Dirección Empresa</label>
                                        <input class="form-control" placeholder="" id="txtDireccionEmpresa" name="txtDireccionEmpresa" value="<?php echo $arrayInfo[23]; ?>">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <div class="form-group">
                                        <label>Nro Documento</label>
                                        <input class="form-control" placeholder="" id="txtNroDocumento" name="txtNroDocumento" value="<?php echo $arrayInfo[1]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Apellidos</label>
                                        <input class="form-control" placeholder="" id="txtApellidos" name="txtApellidos" value="<?php echo $arrayInfo[4]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Libreta Militar</label>
                                        <input class="form-control" placeholder="" id="txtLibreta" name="txtLibreta" value="<?php echo $arrayInfo[6]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Religión</label>
                                        <input class="form-control" placeholder="" id="txtReligion" name="txtReligion" value="<?php echo $arrayInfo[10]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Departamento Proviene</label>
                                        <input disabled class="form-control" placeholder="" id="txtDepartamentoProviene" name="txtDepartamentoProviene" value="<?php echo $arrayInfo[15]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Barrio</label>
                                        <input class="form-control" placeholder="" id="txtBarrio" name="txtBarrio" value="<?php echo $arrayInfo[13]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Celular</label>
                                        <input class="form-control" placeholder="" id="txtCelular" name="txtCelular" value="<?php echo $arrayInfo[18]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Cargo</label>
                                        <input class="form-control" placeholder="" id="txtCargo" name="txtCargo" value="<?php echo $arrayInfo[22]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Teléfono Empresa</label>
                                        <input class="form-control" placeholder="" id="txtTelefonoEmpresa" name="txtTelefonoEmpresa" value="<?php echo $arrayInfo[24]; ?>">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4">
                                    <div class="form-group">
                                        <label>Expedida</label>
                                        <input class="form-control" placeholder="" id="txtExpedida" name="txtExpedida" value="<?php echo $arrayInfo[2]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Ciudad Nacimiento</label>
                                        <input disabled class="form-control" placeholder="" id="txtCiudadNacimiento" name="txtCiudadNacimiento" value="<?php echo $arrayInfo[14]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Distrito</label>
                                        <input class="form-control" placeholder="" id="txtDistrito" name="txtDistrito" value="<?php echo $arrayInfo[7]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Nro de hijos</label>
                                        <input class="form-control" placeholder="" id="txtNroHijos" name="txtNroHijos" value="<?php echo $arrayInfo[11]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Ciudad Proviene</label>
                                        <input disabled class="form-control" placeholder="" id="txtCiudadProviene" name="txtCiudadProviene" value="<?php echo $arrayInfo[14]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Estrato</label>
                                        <input class="form-control" placeholder="" id="txtEstrato" name="txtEstrato" value="<?php echo $arrayInfo[20]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Correo electrónico</label>
                                        <input class="form-control" placeholder="" id="txtCorreoElectronico" name="txtCorreoElectronico" value="<?php echo $arrayInfo[19]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Fax Empresa</label>
                                        <input class="form-control" placeholder="" id="txtFax" name="txtFax" value="<?php echo $arrayInfo[25]; ?>">
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 text-center">
                                    <div class="col-xs-9 col-sm-9 text-center">
                                        <div class="form-group">
                                            <a href="" class="btn btn-default" onclick="ActualizarEstudiante(); return false;"><i class="fa fa-fw fa-check"></i> Guardar</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-3 col-sm-3 text-center">
                                        <input type="submit" class="btn btn-default" value="Descargar PDF">
                                        <!-- <div class="form-group">
                                            <a href="#" id="btnDescargarPDF" class="btn btn-default"><i class="fa fa-fw fa-file-pdf-o"></i> Descargar</a>
                                        </div> -->
                                    </div>
                                </div>
                            </form>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-xs-12 col-md-offset-1 col-md-10 col-md-offset-1">
                                <!-- <div class="alertas alert alert-warning" style="display: none"> -->
                                <div class="alertas text-center">
                                    
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                    </div>
                    <!-- /.container-fluid -->
                </div>
            <!-- /#page-wrapper -->
        </div>
        <div class="resultado">
            
        </div>
    </div>
    <script>
        $( "#frmActualizarEstudiante" ).submit(function(event) {
          window.open('infoPDF.php?q='+$('#txtNroDocumento').val());
          event.preventDefault();
        });
        // $('#btnDescargarPDF').click(function(){
        //     window.open('infoPDF.php');
        // });
    </script>
<?php
    }else{
        echo '<script type="text/javascript">location.href = "../Logout.php";</script>';
    }    
?>