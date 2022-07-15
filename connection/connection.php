<?php

$server = "localhost";
$user = "root";
$pass = "";
$database = "api_pahlawan";

$conn = mysqli_connect($server, $user, $pass, $database);

if (!$conn) {
    die("<script>alert('Failed to connect to Database.')</script>");
}