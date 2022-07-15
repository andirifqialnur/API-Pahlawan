<?php

include '../connection/connection.php';

error_reporting(0);

session_start();

if (isset($_SESSION['username']) and isset($_SESSION['password'])) {

    header("Location: ../api/documentation.php");
}

if (isset($_POST['submit'])) {

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";

    $result = mysqli_query($conn, $sql);

    if ($result->num_rows > 0) {

        $row = mysqli_fetch_assoc($result);

        $_SESSION['username'] = $row['username'];
        $_SESSION['password'] = $row['password'];

        header("Location: ../api/documentation.php");

        $result['status'] = [
            "code" => 200,
            "descrition" => 'Login Successfully'
        ];
    } else {
        echo "<script>alert('Wrong Email and Password. Please Try Again!')</script>";

        $result['status'] = [
            "code" => 400,
            "descrition" => 'Login Failed'
        ];
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="../assets/css/auth.css">
</head>

<body>
    <form method="POST" enctype="multipart/form-data">
        <div class="wrapper">
            <div class="title">
                Login Form
            </div>
            <div class="form">
                <div class="input_field">
                    <label>Username</label>
                    <input class="input" type="username" name="username" id="username" placeholder="Your Username"
                        value="<?php echo $username; ?>" required>
                </div>

                <div class="input_field">
                    <label>Password</label>
                    <input class="input" type="password" name="password" id="password" placeholder="Your Password"
                        value="<?php echo $password; ?>" required>
                </div>

                <div class="input_field">
                    <input type="submit" value="Login" class="btn" name="submit">
                </div>

                <div class="input_field textt">
                    <p class="textt" style="margin-right: 10px;"> Create another account?</p>
                    <a style="color: #42b983" href="registration.php" class="login" id="to_login">Registration</a>
                </div>

                <div class="input_field textt">
                    <p style="margin-left: 80px; margin-right: 10px; margin-top: 0px;"> Go To </p>
                    <a style=" margin-bottom: 15px; color: #42b983" href="../index.php" class="regis"
                        id="to_regis">Home</a>
                </div>
            </div>
        </div>
    </form>
</body>

</html>