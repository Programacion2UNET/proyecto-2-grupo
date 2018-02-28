<?php
session_start();

$connection = mysqli_connect('localhost', 'root', '');
if(!$connection){
die('No hay conexion a la BD');
}
mysqli_select_db($connection,'basetorneo');
$sql = sprintf("SELECT * FROM torneo_usuario");
$res= mysqli_query($connection, $sql);

$_SESSION['torneos_consulta']=array();
$i=0;
if(mysqli_num_rows($res)>0){
    while($row = mysqli_fetch_assoc($res)) {
        $_SESSION['torneos_consulta'][$i++]=$row['nombre_torneo'];
    }
    
}



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ver Torneos</title>
    <link rel="stylesheet" href="Styles/style.css">
</head>
<body>
    <h1>Torneos</h1>
    <section id=PInicio>
                       
        <?php
        echo "<form action='' method='post'>";
        echo "<fieldset>";
             echo"  <label for='Torneos'>Torneos</label><br>";
            	echo "<select name='Torneos'>";	
			 		echo "<optgroup label='Selecciona torneo disponible'>";
                    
                    for($i=0;$i<count($_SESSION['torneos_consulta']);$i++){
                     $aux=$_SESSION['torneos_consulta'][$i];
                        echo "<option value='$aux'>$aux</option>";
                        
                    }
					echo "</optgroup>";	

				echo "</select>";
            
       echo " </fieldset>";
        echo "<input type='submit'' class='boton-verde' value='Consultar' name='Consultar' id='Consultar'>";
       echo "</form>";
        ?>
    </section>
    <?php
        if(isset($_POST['Consultar'])){
           $connection = mysqli_connect('localhost', 'root', '');
           if(!$connection){
           die('No hay conexion a la BD');
            }
            mysqli_select_db($connection,'basetorneo');
            $nombre_torneo_consulta=$_POST["Torneos"];
            $sql = sprintf("SELECT * FROM torneo_usuario WHERE nombre_torneo='$nombre_torneo_consulta' LIMIT 1");
            $res= mysqli_query($connection, $sql);
            
            if(mysqli_num_rows($res)>0){
                
                      
                echo "<br><br><form id='PInicio2'>";
                echo "<table border=1>";
                echo "<tr>";
                echo "<td>TORNEO </td>";               
                echo "<td>CATEGORIA </td>";
                echo "<td>NOMBRE DE EQUIPO </td>";
                echo "<td>PARTICIPANTES </td>";
                echo "<td>ACCIONES</td>";
                echo"</tr>";
                while( $row = mysqli_fetch_assoc($res)){
                    echo "<td>" . $row["nombre_torneo"]."</td>";
                    echo "<td>" . $row["nivel"]."</td>";
                    $idd=$row['id_user'];
                    $sql2 = sprintf("SELECT * FROM equipo WHERE id='55' LIMIT 1");
                    $res2= mysqli_query($connection, $sql2);
                    $rowx = mysqli_fetch_assoc($res2);
                    echo "<td>" . $rowx["nombre"]."</td>";
                    echo "<td>" . $row["participantes"]."</td>";
                }
                
                
                echo "</table>";
                echo "</form>";
            }
            
        }
    
    ?>
    
    
</body>
</html>