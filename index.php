<?php

include 'connection/connection.php';

error_reporting(0);

if (isset($_POST['name']) and isset($_POST['email']) and isset($_POST['subject']) and isset($_POST['message'])) {

    // get one data by nim
    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    // query
    $sql = "INSERT INTO response (name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";

    // query execution
    $conn->query($sql);

    // response in result array with MYSQL_ASSOC
    $result['status'] = [
        "code" => 200,
        "descrition" => 'Success'
    ];
} else {
    $result['status'] = [
        "code" => 400,
        "descrition" => 'Failed'
    ];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/templatemo-finance-business.css">

</head>

<body>

    <header class="">
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.html">
                    <h2>Restfull API</h2>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="main-banner header-text" id="top">
        <div class="Modern-Slider">
            <!-- Item -->
            <div class="item item-1">
                <div class="img-fill">
                    <div class="text-content">
                        <h6>Fell free with the API</h6>
                        <h4>API Pahlawan Nasional Indonesia</h4>
                        <p>This Api used for you so you can get all heros data and history in Indonesia.
                            You can make a history app or website heroes documentation. We get all data from Kaggel
                            so the all data is valid to used.
                        </p>
                        <a href="auth/registration.php" class="filled-button">Get Started</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="request-form">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h4>Interested to see our projects ?</h4>
                    <span>This project is not the only one of ours we have another projects.</span>
                </div>
                <div class="col-md-4">
                    <a href="contact.html" class="border-button">Check our Github</a>
                </div>
            </div>
        </div>
    </div>

    <div class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>API Crea<em>tion Steps</em></h2>
                        <span>We have three steps when building this API</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-item">
                        <img src="assets/images/service_01.jpg" alt="">
                        <div class="down-content">
                            <h4>Search Data</h4>
                            <p>Because we want to create an API with existing data so we look for a lot of data from
                                Kaggle and choose one of them</p>
                            <a href="https://github.com/Aran276/API-Pahlawan" class="filled-button">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-item">
                        <img src="assets/images/service_02.jpg" alt="">
                        <div class="down-content">
                            <h4>Design API</h4>
                            <p>The Indonesian National Hero API is our choice, that's why we created an API with only 1
                                method, namely GET</p>
                            <a href="https://github.com/Aran276/API-Pahlawan" class="filled-button">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-item">
                        <img src="assets/images/service_03.jpg" alt="">
                        <div class="down-content">
                            <h4>Documention</h4>
                            <p>We create some documentation that can help you when building some project with our API so
                                you can build it fastly</p>
                            <a href="https://github.com/Aran276/API-Pahlawan" class="filled-button">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="more-info">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="more-info-content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="left-image">
                                    <img src="assets/images/more-info.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-6 align-self-center">
                                <div class="right-content">
                                    <span>Who we are</span>
                                    <h2>Get to know about <em>our collague</em></h2>
                                    <p>We are from State of Polytehnic Ujung Pandang in Makassar City, South Sulawesi,
                                        Indonesia and now we are currently in the sixth semester. <br><br>And this
                                        project is the final test for a website engineering course where we are trying
                                        to create an API</p>
                                    <a href="#" class="filled-button">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="team">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>Our team <em>members</em></h2>
                        <span>We can talk about some project if you want it</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-item">
                        <img src="assets/images/team_01.jpg" alt="">
                        <div class="down-content">
                            <h4>Andi Rifqial Nur</h4>
                            <span>Designer, Mobile Dev</span>
                            <p>Just remember your life is not for doing some thing. But your live is to do a lot of
                                things.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-item">
                        <img src="assets/images/team_02.jpg" alt="">
                        <div class="down-content">
                            <h4>Dian Resky Dirman</h4>
                            <span>Backend Dev</span>
                            <p>You can say that you can't do it as long as you can life without an oxigen in a couple
                                hour
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-item">
                        <img src="assets/images/team_03.jpg" alt="">
                        <div class="down-content">
                            <h4>St. Rabiatul Ad'Wiah Y.</h4>
                            <span>Cloud Computing</span>
                            <p>There is one different between us
                                I start my day with OPEN and you start your day with CLOSE</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="callback-form" style="margin-bottom: 50px; margin-top: 50px">
        <div class="container" style="margin-top: 200px">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>Request a <em>call back</em></h2>
                        <span>Please let us know your experince and also your suggestion</span>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="contact-form">
                        <form id="contact" action="" method="POST">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                    <fieldset>
                                        <input name="name" type="text" class="form-control" id="name"
                                            placeholder="Full Name" required="" value="<?php echo $name; ?>">
                                    </fieldset>
                                </div>
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                    <fieldset>
                                        <input name="email" type="text" class="form-control" id="email"
                                            pattern="[^ @]*@[^ @]*" placeholder="E-Mail Address" required=""
                                            value="<?php echo $email; ?>">
                                    </fieldset>
                                </div>
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                    <fieldset>
                                        <input name="subject" type="text" class="form-control" id="subject"
                                            placeholder="Subject" required="" value="<?php echo $subject; ?>">
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <textarea name="message" rows="6" class="form-control" id="message"
                                            placeholder="Your Message" required=""
                                            value="<?php echo $message; ?>"></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="border-button">Send
                                            Message</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Footer Starts Here -->

    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p>Copyright &copy; 2022 API Pahlawan Nasional Indonesia., Ltd.

                        - Design: <a rel="nofollow noopener" href="https://github.com/Aran276" target="_blank">Andi
                            Rifqial Nur</a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>

    <script language="text/Javascript">
    cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
    function clearField(t) { //declaring the array outside of the
        if (!cleared[t.id]) { // function makes it static and global
            cleared[t.id] = 1; // you could use true and false, but that's more typing
            t.value = ''; // with more chance of typos
            t.style.color = '#fff';
        }
    }
    </script>

</body>

</html>