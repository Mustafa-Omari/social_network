<?php 

    ob_start(); // Turns on output buffering 
    session_start();

    $timezone = date_default_timezone_set("Etc/GMT+3");

    $conn = mysqli_connect('localhost' , 'root' , '' , 'social_network');

    if(mysqli_connect_errno()){
        echo 'Faild To Connect Database' . mysqli_connect_errno() ;
    }

?>