<?php  include '../controller/ctrolIndex.php'; ?>

<!DOCTYPE html>
<html lang="es">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
    <meta charset="utf-8">
    <title>Cursos Y Eventos Facultad de Ingeniería</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="/bootstrap/img/favicon.ico">
    <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link href="css/jquery.idealforms.css" rel="stylesheet">
    <link href="css/modern-business.css" rel="stylesheet">

    <link href="css/styles.css" type="text/css" rel="stylesheet">

    <script type='text/javascript' src="js/jquery.min.js"></script>
    <script type='text/javascript' src="js/bootstrap.min.js"></script>
    <script type='text/javascript' src="js/model.js"></script>
    <script type='text/javascript' src="js/site.js"></script>
    <!-- CSS code from Bootply.com editor -->            
    <style type="text/css">
      /* override bootstrap styles */
      @import url('http://fonts.googleapis.com/css?family=Oswald:300,400:latin,latin-ext');

      .navbar-form input, .form-inline input {
        width:auto;
      }
    </style>
    <script type="text/javascript">
      $(document).ready(function(){
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        });
      });
    </script>
  </head>
  <!-- HTML code from Bootply.com editor -->
  <body>
    <header class="navbar navbar-bright navbar-fixed-top" role="navigation">
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
    </header>  
    <header id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <div class="fill img-responsive" style="background-image:url('images/bannersuperior.jpg');" ></div>
          <div class="carousel-caption"></div>
        </div>
        <div class="item">
          <div class="fill img-responsive" style="background-image:url('images/bannersuperior1.jpg');" ></div>
          <div class="carousel-caption"></div>
        </div>
        <div class="item">
          <div class="fill img-responsive" style="background-image:url('images/bannersuperior2.jpg');"></div>
          <div class="carousel-caption"></div>
        </div>
      </div>
      <!-- Controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
      </a>
    </header>   
    <div class="container">
    <!-- Header Carousel -->
      <div class="row">        
        <div class="col-md-12">          
          <div class="panel">
            <div class="panel-body" id="contentMain">
              <!--/Cursos-->
              <div class="row" id="contentCourses">
                <?php 
                    //echo '<pre>';print_r($dataCursos);'</pre>';                    
                    if(!empty($dataCursos)){
                        foreach ($dataCursos as $key => $value){
                        ?>
                        <div class="col-md-6" style="height: 250px;">
                          <div class="col-md-2 col-sm-3 text-center">
                            <a class="story-title" href="#"><img alt="" src="<?php echo $value[5]; ?>" style="width:100px;height:100px" class=""></a>
                          </div>
                          <div class="col-sm-offset-1 col-md-9 col-sm-9">
                            <h3><?php echo utf8_encode($value[4]); ?></h3>
                            <div class="row">
                              <div class="col-xs-12"><b>Descripción:</b></div>
                            </div>
                            <div class="row">
                              <div class="col-xs-12">
                                <?php 
                                $arrayNomb = str_split(utf8_encode($value[3]));
                                $descripFinal = "";
                                if (count($arrayNomb) < 200){
                                    $descripFinal = utf8_encode($value[3]);
                                } else {
                                    for ($i = 0; $i < 199; $i++){
                                        $descripFinal.=$arrayNomb[$i];
                                    }
                                    $descripFinal.= ".......";
                                }
                                    echo $descripFinal;
                                ?>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-xs-9">
                                <h4><span class="label label-default" style="cursor:pointer;" onclick="getDataDetailCourse(<?php echo $value[0]; ?>);">Leer más</span></h4>
                              </div>
                            </div>
                          </div>
                        </div>
                    <?php }
                    }else{
                        echo '<h2>Lo sentimos no hay ofertas publicadas</h2>';
                    }
                    ?>
              </div>
              <hr>              
              <div onclick="getMoreCourses()" id="moreCourses" class="btn btn-primary pull-right">Más <i class="glyphicon glyphicon-chevron-right"></i></div>
            </div>
          </div>                                          
       	</div><!--/col-12-->
      </div>
    </div>                                                  
    <hr>
    <div class="container" id="footer">
      <div class="row">
        <div class="col col-sm-12">
          
          <h1>Síguenos</h1>
          <div class="btn-group">
           <a class="btn btn-twitter btn-lg" href="#"><i class="icon-twitter icon-large"></i> Twitter</a>
    	   <a class="btn btn-facebook btn-lg" href="#"><i class="icon-facebook icon-large"></i> Facebook</a>
    	   <a class="btn btn-google-plus btn-lg" href="#"><i class="icon-google-plus icon-large"></i> Google+</a>
          </div>
          
        </div>
      </div>
    </div>

    <hr>

    <hr>

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