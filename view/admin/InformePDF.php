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
	
	//$pdf->AliasNbPages();
	$pdf->AddPage();
	$pdf->SetFont('Times','', 23);
	$pdf->SetFillColor(189, 189, 189);
    $pdf->SetTextColor(0, 0, 0);//Color del  del texto Información Personal
	$pdf->Ln(7);
	$pdf->MultiCell(0, 7, utf8_decode('CANTIDAD ESTUDIANTES POR CURSO'), 0, 'C');

	//Información Personal
	$pdf->Output();
?>