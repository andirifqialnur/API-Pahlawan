<?php

include('connection.php');

header("Content-Type:Application/json");

$method = $_SERVER['REQUEST_METHOD'];

$result = array();

session_start();

if ($method == 'POST') {

    if (isset($_POST['username']) and isset($_POST['password'])) {

        $result['status'] = [
            "code" => 200,
            "descrition" => 'Login Successfully'
        ];

        $username = $_POST['username'];
        $password = $_POST['password'];

        // check user
        $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";
        $result = $conn->query($sql);

        generate_token($username, $password);

        if ($result->num_rows > 0) {
            $_SESSION['username'] = $username;
            $_SESSION['password'] = $password;

            $result['status'] = [
                "code" => 200,
                "descrition" => 'Login Successfully'
            ];
        } else {
            $result['status'] = [
                "code" => 400,
                "descrition" => 'Invalid Login'
            ];
        }
    } else {
        $result['status'] = [
            "code" => 400,
            "descrition" => 'Parameter Invalid'
        ];
    }
} else {
    $result['status'] = [
        "code" => 400,
        "descrition" => 'Method Not Valid'
    ];
}

function generate_token($username, $password)
{

    include 'connection.php';

    $result['status'] = [
        "code" => 200,
        "descrition" => 'Generate Token Successfully'
    ];

    $username = $_POST['username'];
    $password = $_POST['password'];

    $token  = md5($username . $password);
    // $token = $_POST['key_token'];

    $sql    = "UPDATE user SET key_token='$token' WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    $result['result'] = [
        "id" => $id,
        "username" => $username,
        "token" => $token
    ];

    if ($result) {

        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
    } else {

        echo "login salah";
    }
}

echo json_encode($result);