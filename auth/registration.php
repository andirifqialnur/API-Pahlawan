<?php

include '../connection/connection.php';

error_reporting(0);

session_start();

if (isset($_SESSION['username'])) {
    header("Location: login.php");
}

if (isset($_POST['submit'])) {

    $name = $_POST['name'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $cpassword = md5($_POST['cpassword']);

    if ($password == $cpassword) {

        $sql = "SELECT * FROM user WHERE email='$email'";

        $result = mysqli_query($conn, $sql);

        if (!$result->num_rows > 0) {

            $sql = "INSERT INTO user (name, username, email, password)
                        VALUES ('$name', '$username', '$email', '$password')";

            $result = mysqli_query($conn, $sql);

            if ($result) {

                echo "<script>alert('Congrats! You're Registered')</script>";
                header("Location: login.php");

                $result['status'] = [
                    "code" => 200,
                    "descrition" => '1 Data inserted'
                ];

                $result['result'] = [
                    "name" => $name,
                    "username" => $uname,
                    "email" => $email
                ];
            } else {
                echo "<script>alert('Woops! Database Table Not Match.')</script>";
                $result['status'] = [
                    "code" => 400,
                    "descrition" => 'Database Table Not Match'
                ];
            }
        } else {
            echo "<script>alert('Woops! Email Already Exist.')</script>";
            $result['status'] = [
                "code" => 400,
                "descrition" => 'Email Already Exist'
            ];
        }
    } else {
        echo "<script>alert('Password Tidak Sesuai')</script>";
        $result['status'] = [
            "code" => 400,
            "descrition" => 'Password not match'
        ];
    }
} else {
    $result['status'] = [
        "code" => 400,
        "descrition" => 'Parameter Invalid'
    ];
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="../assets/css/auth.css">
</head>

<body>
    <form method="POST" enctype="multipart/form-data">
        <div class="wrapper">
            <div class="title">
                Registration Form
            </div>
            <div class="form">
                <div class="input_field">
                    <label>Name</label>
                    <input class="input" type="name" name="name" id="name" placeholder="Your Name"
                        value="<?php echo $name; ?>" required>
                </div>

                <div class="input_field">
                    <label>Username</label>
                    <input class="input" type="username" name="username" id="username" placeholder="Your Username"
                        value="<?php echo $username; ?>" required>
                </div>

                <div class="input_field">
                    <label>Email</label>
                    <input class="input" type="email" name="email" id="email" placeholder="Your Email"
                        value="<?php echo $email; ?>" required>
                </div>

                <div class="input_field">
                    <label>Password</label>
                    <input class="input" type="password" name="password" id="password" placeholder="Your Password"
                        value="<?php echo $_POST['$password']; ?>" required>
                </div>

                <div class="input_field">
                    <label>Confirm Password</label>
                    <input class="input" type="password" name="cpassword" id="cpassword" placeholder="Confirm Password"
                        value="<?php echo $_POST['$cpassword']; ?>" required>
                </div>
                <div class="input_field terms">
                    <label class="check">
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <p>Agreed to terms and conditions</p>
                </div>

                <div class="input_field">
                    <input type="submit" value="Register" class="btn" name="submit">
                </div>

                <div class="input_field textt">
                    <p style="margin-right: 10px;"> Already have an account?</p>
                    <a style="color: #42b983;" href="login.php" class="regis" id="to_regis">Login</a>
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