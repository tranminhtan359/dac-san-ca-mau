<?php 

$server = "localhost";
$username = "root";
$password = "";
$database = "order";

$conn = mysqli_connect($server, $username, $password, $database,"3325",'utf8_general_ci');

if (!$conn) { // If Check Connection
    die("<script>alert('Connection Failed.')</script>");
}

?>