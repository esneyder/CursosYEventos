//consultamos el detalle de los cursos
function getDataDetailCourse(id){
    $("#contentMain").fadeOut(500,function(){
        $(this).load('../controller/ctroldetailCourse.php',{data:id},function(){
            $(this).fadeIn();
        });
    });
}

//traemos mas cursos para mostrar en el index cada vez que llege el scroll al final del la pagina
function getMoreCourses(){
    $.getJSON('../controller/ctrolIndex.php',{page:page_begin,accion:1},function(r){
        page_begin += 2;//aumentamos el comienzo de las fila en 2
        if(r.message == 'yes_data'){
            var data = r.data;
            var htmlCourses = "";
            console.log(data);
            
            $.each(data,function(i){
                var descripFinal = "";
                var arrayDescrip = data[i][3].split(' ');
                if(arrayDescrip.length < 40){
                    descripFinal = data[i][3];
                }else{
                    for(var j = 0; j < 41; j++){
                        descripFinal += ' ' + arrayDescrip[j];
                    }
                    descripFinal += ".......";
                }
                
                htmlCourses += '<div class="col-md-6 cursosAjax" style="height:250px; display:none;">\
                    <div class="col-md-2 col-sm-3 text-center">\
                      <a class="story-title" href="#"><img alt="" src="' + data[i][5] + '" style="width:100px;height:100px" class=""></a>\
                    </div>\
                    <div class="col-sm-offset-1 col-md-9 col-sm-9">\
                      <h3>' + data[i][4] + '</h3>\
                      <div class="row">\
                        <div class="col-xs-12"><b>Descripción:</b></div>\
                      </div>\
                      <div class="row">\
                        <div class="col-xs-12">' + descripFinal + '</div>\
                      </div>\
                      <div class="row">\
                        <div class="col-xs-9">\
                          <h4><span class="label label-default" style="cursor:pointer;" onclick="getDataDetailCourse(' + data[i][0] + ');">Leer más</span></h4>\
                        </div>\
                      </div>\
                    </div>\
                </div>';
            });

            $("#contentCourses").append(htmlCourses);
            $("#contentCourses").children('.cursosAjax').fadeIn();            
        }else{
            $("#moreCourses").css({display:'none'});//Ocultamos el btn de mas ya que no hay mas cursos
        }
    });
}
