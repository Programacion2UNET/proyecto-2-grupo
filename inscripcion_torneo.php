<?php
session_start();
$_SESSION["ntorneos"]=null;
$_SESSION["ftorneos"]=null;
?>


<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="Styles/style.css">
    <title> Inscripcion de Torneo</title>
</head>
<body>
    <h1>Bienvenido<?php echo" ".$_SESSION['user']['usuario'] ?></h1>
    <section id="PInicio">
    <h1 style="color:white;">Inscribirse en un torneo</h1>
    <?php 
    
    
	 	
    $connection = mysqli_connect('localhost', 'root', '');
 	if(!$connection){
 		die('No hay conexion a la BD');
 	}
 	$torneos='torneo_registro';
 	mysqli_select_db($connection,'basetorneo'); // entro a la base de datos
 	$res = mysqli_query($connection, "SELECT * FROM $torneos");	// leo la tabla de torneos completa...
	$i=0;

 	while ($consulta=mysqli_fetch_array($res)) { // consulta almacena torneo almacenado
 	//	echo $consulta['Torneosname'];
 		
 		$_SESSION["ntorneos"][$i]=$consulta["nombre_torneo"];
        $_SESSION["ftorneos"][$i]=$consulta["fecha_realizacion"];
            // ese torneo a su vez se almacena en una variable predefinida que hace la funcion de vector


 		# code...
				$i++; // con la i determino el tamaño del array mas tarde
 	}	

        
        
    ?>
    <form  method='post'>

	 		<select name="Torneos">
					
			 		<optgroup label='Selecciona torneo disponible'>
					<?php 
					for ($i=0; $i < count($_SESSION["ntorneos"]); $i++) { 
					
						echo "<option value=".$_SESSION['ntorneos'][$i]."> ".$_SESSION['ntorneos'][$i]." </option>";
					}
					 
					 	
					  ?>
					</optgroup>	

				</select>

	 		
			
	 		<input name="Cantidad" type="text" required maxlength="2" placeholder="Cantidad de participantes..">  
	 		<select name="Opcion">
	 		<optgroup label="Seleccionar Nivel del Torneo">
	 			
	 				<option value="Principiante" >Principiante</option>
					<option value="Aficionados">Aficionados</option>
					<option value="Profesionales">Profesionales</option>
					</optgroup>

	 			</select>
					

					<br><br><input class='boton-verde' value='Inscribir' type='submit' id='inscribir' name='inscribir'> 
			</form>  
	   
        
        
        
        
    </section>
    
    <?php
        if(isset($_POST['inscribir'])){
            $connection = mysqli_connect('localhost', 'root', '');
            if(!$connection){
            die('No hay conexion a la BD');
            }

         mysqli_select_db($connection,'basetorneo');
        $idd=$_SESSION['user']['id']; 

        for($k=0;$k<count($_SESSION['ntorneos']);$k++){
            
            if($_POST['Torneos']==$_SESSION['ntorneos'][$k]){
                $fecha_torneo=$_SESSION['ftorneos'][$k];
            }
        }
        
            
        $sql= sprintf("INSERT INTO torneo_usuario  (id_user, nombre_torneo, fecha,participantes,nivel) VALUES ('%u','%s','%s', '%u','%s')",$idd,$_POST['Torneos'],$fecha_torneo,$_POST['Cantidad'],$_POST['Opcion']);
        $res = mysqli_query($connection, $sql);

       


        mysqli_select_db($connection,'basetorneo'); 
        $res = mysqli_query($connection, "SELECT * FROM torneo_usuario");	
        echo "<h1 id=".'PInicio'.">Torneos para ".$_SESSION['user']['usuario']." </h1><br>";
        while ($consulta=mysqli_fetch_array($res)) { 

            if($_SESSION['user']['id']==$consulta['id_user']){
                $tor=$consulta['nombre_torneo'];
                $ftor=$consulta['fecha'];
                echo "<h1 >Torneo: $tor Fecha : $ftor </h1> "; 
            }





            }


        }
    
    
    
    ?>
    
    
</body>
</html>