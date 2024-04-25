<?php
/* Database connection settings */
	$servername = "localhost";
    $username = "id21857156_root";		//put your phpmyadmin username.(default is "root")
    $password = "rfidsqlHostroot@123";			//if your phpmyadmin has a password put it here.(default is "root")
    $dbname = "id21857156_rfidsqlhost";
    
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	
	if ($conn->connect_error) {
        die("Database Connection failed: " . $conn->connect_error);
    }
?>