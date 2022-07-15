<?php

include('connection.php');

// header result in json
header("Content-Type:Application/json");

// get access method
$method = $_SERVER['REQUEST_METHOD'];

//variable result response
$result = array();

error_reporting(0);

session_start();

if (isset($_SESSION['username'])) {
    header("Location: login.php");
}

// method statement 
if ($method == 'POST') {

    if (isset($_POST['name']) and isset($_POST['username']) and isset($_POST['email']) and isset($_POST['password'])) {

        $result['status'] = [
            "code" => 200,
            "descrition" => '1 Data inserted'
        ];

        // get one data by name
        $name = $_POST['name'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        // query
        $sql = "INSERT INTO mahasiswa (name, username, email, password) VALUES ('$name', '$username', '$email', '$password')";

        // query execution
        $conn->query($sql);

        // response in result array with MYSQL_ASSOC
        $result['result'] = [
            "name" => $name,
            "username" => $username,
            "email" => $email
        ];
    } else {
        $result['status'] = [
            "code" => 400,
            "descrition" => 'Parameter Invalid'
        ];
    }
} else {
    // method valid
    $result['status'] = [
        "code" => 400,
        "descrition" => 'Method Not Valid'
    ];
}

echo json_encode($result);