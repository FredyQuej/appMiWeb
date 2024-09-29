<?php
require('library/php-excel-reader/excel_reader2.php');
require('library/SpreadsheetReader.php');
require('connectordb.php');
#header('Content-type: application/vnd.ms-excel;charset=iso-8859-15');
#header('Content-Disposition: attachment; filename=nombre_archivo.xls');
#header('Content-type: application/vnd.ms-excel;charset=iso-8859-15');
if(isset($_POST['Submit'])){


  $mimes = ['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.oasis.opendocument.spreadsheet'];

  if(in_array($_FILES["file"]["type"],$mimes)){
    $uploadFilePath = 'uploads/'.basename($_FILES['file']['name']);
    move_uploaded_file($_FILES['file']['tmp_name'], $uploadFilePath);
    $Reader = new SpreadsheetReader($uploadFilePath);
    $totalSheet = count($Reader->sheets());
    echo "Has cargado un total de ".$totalSheet." Hojas Calculo";


    $html="<table border='1'>";

    $html.="<tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Fecha de Inicio</th>
            <th>Fecha de Fin</th>
            <th>Objetivo</th>
            <th>ID_tupo</th>
            <th>ID_Modo</th>
            
            </tr>";

    /* For Loop for all sheets */

    for($i=0;$i<$totalSheet;$i++){
      $Reader->ChangeSheet($i);
      foreach ($Reader as $Row)

      {

        $html.="<tr>";
        $id = isset($Row[0]) ? $Row[0] : '';
        $eventocol = isset($Row[1]) ? $Row[1] : '';
        $fecha_inicio = isset($Row[2]) ? $Row[2] : '';
        $fecha_fin = isset($Row[3]) ? $Row[3] : '';
        $objetivo = isset($Row[4]) ? $Row[4] : '';
        $tipo_evento_idtipo_evento = isset($Row[5]) ? $Row[5] : '';
        $modalidad_idmodalidad = isset($Row[6]) ? $Row[6] : '';
        
        $html.="<td>".$id."</td>";
      
        $html.="<td>".$eventocol."</td>";
        $html.="<td>".$fecha_inicio."</td>";
        $html.="<td>".$fecha_fin."</td>";
        $html.="<td>".$objetivo."</td>";
        $html.="<td>".$tipo_evento_idtipo_evento."</td>";
        $html.="<td>".$modalidad_idmodalidad."</td>";
        $html.="</tr>";
        #$query = "INSERT INTO prueba(title,description) values('".$title."','".$description."')";
        $query = "INSERT INTO evento(idevento,eventocol,fecha_inicio,fecha_fin,objetivo,tipo_evento_idtipo_evento,modalidad_idmodalidad)
                 VALUES('$id',
                        '$eventocol',
                        '$fecha_inicio',
                        '$fecha_fin',
                        '$objetivo',
                        '$tipo_evento_idtipo_evento',
                        '$modalidad_idmodalidad')";
        
        $mysqli->query($query);
       }
    }

    $html.="</table>";

    echo $html;
    #echo htmlentities($html, ENT_COMPAT, 'UTF-8');

    echo "<br />Datos Insertados en la base de datos";

  }else { 
    die("<br/>Sorry, . falló."); 
  }


}


?>