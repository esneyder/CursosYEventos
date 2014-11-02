
<?php
	require('../../generic/fpdf17/fpdf.php');
	include '../../config/config.php';
	include '../../generic/cls_Conexion.php';
	include '../../model/dao/clsEstudiantes.php';
	include '../../model/dao/clsProgramas.php';
	include '../../model/dao/clsTiposEstudio.php';
	include '../../model/bussiness/bsEstudiantes.php';
	include '../../model/bussiness/bsProgramas.php';
	include '../../model/bussiness/bsTiposEstudio.php';

	class PDF extends FPDF
	{
	// Cabecera de página
		function Header()
		{

		    // Logo
		    $this->Image('../images/cua.png',80,10,50,0,'PNG');
		    $this->Ln(25);//Salto de línea para ubicar el título
		    $this->SetFont('Times','',8);
		    $this->Cell(0, 7, utf8_decode('NIT 860403751-3'), 0, 1, 'C');//Título
		    //$this->Ln(25);//Salto de línea para ubicar el título
		    // Arial bold 18
		    $this->SetFont('Times','B',18);
		    $this->SetFillColor(87,  151, 112);
		    $this->SetTextColor(255, 255, 255);//Color del Titulo
		    $this->Cell(0, 10, utf8_decode('CORPORACIÓN UNIVERSITARIA ADVENTISTA'), 0, 1, 'C', true);//Título
		    
		    //Establecer una nueva fuente para la información general de la universidad
		    $this->SetFont('Arial','',10);
		    $this->Cell(0, 10, utf8_decode('Dirección: Carrera 84 N° 33AA 01 - PBX 250 83 28 - Email: comunicaciones@unac.edu.co'), 0, 1, 'C', true);
		    
		    //Medellín: (57) (4) - 2508328 • Resto del país: 01 8000 518328 
 

		}
		// // Pie de página
		// function Footer()
		// {
		//     // Posición: a 1,5 cm del final
		//     $this->SetY(-15);
		//     // Arial italic 8
		//     $this->SetFont('Arial','I',8);
		//     // Número de página
		//     $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
		// }
	}

	//$_GET['q'];


	// Creación del objeto de la clase heredada
	$pdf = new PDF();
	$objEstudiantes = new bsEstudiantes();
	$objEstudios = new bsTiposEstudio();
	$objProgramas = new bsProgramas();
	$info = $objEstudiantes->Buscar_Estudiante($_GET['q']);
	
	//$pdf->AliasNbPages();
	$pdf->AddPage();
	$pdf->SetFont('Times','',12);

	//Información Personal
	$pdf->SetFillColor(189, 189, 189);
    $pdf->SetTextColor(0, 0, 0);//Color del  del texto Información Personal
	$pdf->Ln(4);
	$pdf->MultiCell(0, 7, utf8_decode('INFORMACIÓN PERSONAL'), 1, 'C', true);
	//Encabezados
	$pdf->Cell(50, 7, utf8_decode('Primer Apellido: '), 'L', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode('Segundo Apellido: '), 'L', 0, 'C');
	$pdf->Cell(90, 7, utf8_decode('Nombres: '), 'LR', 1, 'C');
	//Valores
	$pdf->SetFont('Times','',10);
	$pdf->Cell(50, 7, utf8_decode($info[0][4]), 'LB', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode($info[0][5]), 'LB', 0, 'C');
	$pdf->Cell(90, 7, utf8_decode($info[0][3]), 'LRB', 1, 'C');

	$pdf->Ln(4);
	
	$pdf->SetFont('Times','',12);
	//Fecha y lugar de nacimiento
	$pdf->SetFillColor(189, 189, 189);
    $pdf->SetTextColor(0, 0, 0);//Color del  del texto Información Personal
    $pdf->MultiCell(0, 7, utf8_decode('FECHA Y LUGAR DE NACIMIENTO'), 1, 'C', true);
    //Encabezados
	$pdf->Cell(40, 7, utf8_decode('Fecha: '), 'L', 0, 'C');
	$pdf->Cell(60, 7, utf8_decode('Ciudad: '), 'L', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode('Departamento: '), 'L', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode('Pais: '), 'LR', 1, 'C');
	//Valores
	$pdf->SetFont('Times','',10);
	$pdf->Cell(40, 7, utf8_decode(''), 'LB', 0, 'C');
	$pdf->Cell(60, 7, utf8_encode($info[0][8]), 'LB', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode($info[0][7]), 'LB', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode($info[0][6]), 'LRB', 1, 'C');
	//Encabezados
	$pdf->SetFont('Times','',12);
	$pdf->Cell(35, 7, utf8_decode('Tipo Documento: '), 'L', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode('Número: '), 'L', 0, 'C');
	$pdf->Cell(55, 7, utf8_decode('Expedida: '), 'L', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode('Libreta militar: '), 'L', 0, 'C');
	$pdf->Cell(20, 7, utf8_decode('Distrito: '), 'LR', 1, 'C');
	//Valores
	$pdf->SetFont('Times','',10);
	$pdf->Cell(35, 7, utf8_decode($info[0][0]), 'LB', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode($info[0][1]), 'LB', 0, 'C');
	$pdf->Cell(55, 7, utf8_decode($info[0][2]), 'LB', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode($info[0][9]), 'LB', 0, 'C');
	$pdf->Cell(20, 7, utf8_decode($info[0][10]), 'LRB', 1, 'C');
	
	$pdf->Ln(4);
	$pdf->SetFont('Times','',12);
	//Datos generales
	$pdf->SetFillColor(189, 189, 189);
    $pdf->SetTextColor(0, 0, 0);//Color del  del texto Información Personal
    $pdf->Cell(50, 10, utf8_decode('ESTADO CIVIL'), 'LT', 0, 'C', true);
    $pdf->Cell(50, 10, utf8_decode('SEXO'), 'LT', 0, 'C', true);
    $pdf->Cell(60, 10, utf8_decode('RELIGIÓN'), 'LT', 0, 'C', true);
    $pdf->Cell(30, 10, utf8_decode('CANT HIJOS'), 'LTR', 1, 'C', true);
	$pdf->SetFont('Times','',10);
    $pdf->Cell(50, 10, utf8_decode($info[0][11]), 'LB', 0, 'C');
    $pdf->Cell(50, 10, utf8_decode($info[0][12]), 'LB', 0, 'C');
    $pdf->Cell(60, 10, utf8_decode($info[0][13]), 'LB', 0, 'C');
    $pdf->Cell(30, 10, utf8_decode($info[0][14]), 'LRB', 1, 'C');
    
	$pdf->Ln(4);
	$pdf->SetFont('Times','',12);
    //PROCEDENCIA
    $pdf->MultiCell(0, 7, utf8_decode('PROCEDENCIA'), 1, 'C', true);
    //Encabezados
	$pdf->Cell(50, 7, utf8_decode('Barrio: '), 'L', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode('Departamento: '), 'L', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode('Ciudad: '), 'L', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode('País: '), 'LR', 1, 'C');
	//Valores
	$pdf->SetFont('Times','',10);
	$pdf->Cell(50, 7, utf8_decode($info[0][16]), 'LB', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode($info[0][18]), 'LB', 0, 'C');
	$pdf->Cell(50, 7, utf8_decode($info[0][17]), 'LB', 0, 'C');
	$pdf->Cell(40, 7, utf8_decode($info[0][19]), 'LRB', 1, 'C');

 	//Encabezados
 	$pdf->SetFont('Times','',12);
	$pdf->Cell(50, 7, utf8_decode('Dirección: '), 'L', 0, 'C');
	$pdf->Cell(20, 7, utf8_decode('Estrato: '), 'L', 0, 'C');
	$pdf->Cell(30, 7, utf8_decode('Fijo: '), 'L', 0, 'C');
	$pdf->Cell(30, 7, utf8_decode('Celular: '), 'L', 0, 'C');
	$pdf->Cell(60, 7, utf8_decode('Correo Electrónico: '), 'LR', 1, 'C');	
	//Valores
	$pdf->SetFont('Times','',10);
	$pdf->Cell(50, 7, utf8_decode($info[0][15]), 'LB', 0, 'C');
	$pdf->Cell(20, 7, utf8_decode($info[0][23]), 'LB', 0, 'C');
	$pdf->Cell(30, 7, utf8_decode($info[0][20]), 'LB', 0, 'C');
	$pdf->Cell(30, 7, utf8_decode($info[0][21]), 'LB', 0, 'C');
	$pdf->Cell(60, 7, utf8_decode($info[0][22]), 'LRB', 1, 'C');	
	//Encabezados
	$pdf->SetFont('Times','',12);
	$pdf->Cell(50, 7, utf8_decode('Empresa donde trabaja: '), 'L', 0, 'C');
	$pdf->Cell(45, 7, utf8_decode('Dirección: '), 'L', 0, 'C');
	$pdf->Cell(45, 7, utf8_decode('Cargo: '), 'L', 0, 'C');
	$pdf->Cell(25, 7, utf8_decode('Tel: '), 'L', 0, 'C');
	$pdf->Cell(25, 7, utf8_decode('FAX: '), 'LR', 1, 'C');
	//Valores
	// echo '<pre>';
	// print_r($info);
	// exit();
	$pdf->SetFont('Times','',8);
	$pdf->Cell(50, 7, utf8_decode($info[0][24]), 'LB', 0, 'C');
	$pdf->SetFont('Times','',10);
	$pdf->Cell(45, 7, utf8_decode($info[0][26]), 'LB', 0, 'C');
	$pdf->Cell(45, 7, utf8_decode($info[0][25]), 'LB', 0, 'C');
	$pdf->Cell(25, 7, utf8_decode($info[0][27]), 'LB', 0, 'C');
	$pdf->Cell(25, 7, utf8_decode($info[0][28]), 'LRB', 1, 'C');

	$pdf->Ln(4);
	$estudios = $objEstudios->Estudios_Realizados($_GET['q']);
	//TE.Descripcion AS TipoEstudio, Institucion, Titulo_Obtenido, CONCAT(C.Descripcion,' - ', P.Descripcion) AS CiudadPais
	
	//ESTUDIOS REALIZADOS
	$pdf->SetFont('Times','',12);
	$pdf->MultiCell(0, 7, utf8_decode('ESTUDIOS REALIZADOS'), 1, 'C', true);
    $pdf->Cell(30, 7, utf8_decode('TIPO'), 1, 0, 'C');
	$pdf->Cell(60, 7, utf8_decode('INSTITUCIÓN'), 1, 0, 'C');
	$pdf->Cell(45, 7, utf8_decode('TÍTULO OBTENIDO'), 1, 0, 'C');
	$pdf->Cell(55, 7, utf8_decode('PAÍS - CIUDAD'), 1, 1, 'C');

	$pdf->SetFont('Times','',10);
	// echo count($estudios[0]);
	// exit();
	for($f = 0; $f < count($estudios); $f++){
		//for($c = 0; $c < count($estudios[0]); $c++){
			$pdf->Cell(30, 7, utf8_decode($estudios[$f][0]), 1, 0, 'C');
			$pdf->Cell(60, 7, utf8_decode($estudios[$f][1]), 1, 0, 'C');//Institución
			$pdf->Cell(45, 7, utf8_decode($estudios[$f][2]), 1, 0, 'C');//Titulo obtenido
			$pdf->Cell(55, 7, utf8_decode($estudios[$f][3]), 1, 1, 'C');//Ciudad-Pais
		//	break;
		//}	
	}
	//var_dump($estudios);
	//exit();
	
	// $pdf->Cell(30, 7, utf8_decode('Secundarios'), 1, 0, 'C');
	// $pdf->Cell(60, 7, utf8_decode(''), 1, 0, 'C');//Institución
	// $pdf->Cell(45, 7, utf8_decode(''), 1, 0, 'C');//Titulo obtenido
	// $pdf->Cell(55, 7, utf8_decode(''), 1, 1, 'C');//Ciudad-Pais

	// $pdf->Cell(30, 7, utf8_decode('Universitarios'), 1, 0, 'C');
	// $pdf->Cell(60, 7, utf8_decode(''), 1, 0, 'C');
	// $pdf->Cell(45, 7, utf8_decode(''), 1, 0, 'C');
	// $pdf->Cell(55, 7, utf8_decode(''), 1, 1, 'C');

	// $pdf->Cell(30, 7, utf8_decode('Otros'), 1, 0, 'C');
	// $pdf->Cell(60, 7, utf8_decode(''), 1, 0, 'C');
	// $pdf->Cell(45, 7, utf8_decode(''), 1, 0, 'C');
	// $pdf->Cell(55, 7, utf8_decode(''), 1, 1, 'C');

	$pdf->Ln(4);
	
	$programa = $objProgramas->Buscar_Programa($_GET['q']);
	//Programa incrito
	$pdf->SetFont('Times','',12);
	$pdf->Cell(60, 7, utf8_decode('TIPO DE PROGRAMA'), 1, 0, 'C', true);
	$pdf->Cell(130, 7, utf8_decode('PROGRAMA'), 1, 1, 'C', true);
	//Información programa
	$pdf->Cell(60, 7, utf8_decode($programa[0]), 1, 0, 'C');
	$pdf->Cell(130, 7, utf8_decode($programa[1]), 1, 1, 'C');
    //$pdf->title('Información básica [Estudiante]');
	$pdf->Output();
?>