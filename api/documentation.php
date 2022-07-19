<?php

include '../connection/connection.php';

session_start();

if (isset($_POST['submit'])) {
    $username  = $_POST['username'];
    $password  = $_POST['password'];

    // cek user
    $sql    = "SELECT * FROM user WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
    } else {
        echo "login salah";
    }
}

function generate_token($username, $password)
{

    include '../connection/connection.php';

    $token  = md5($username . $password);

    $sql    = "UPDATE user SET key_token='$token' WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result) {

        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
    } else {

        echo "login salah";
    }

    echo $token;
    return $token;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="../assets/css/styles.css">

</head>

<body class="ready sticky" style="margin-bottom: 100px;">
    <main>
        <aside class="sidebar">
            <div class="sidebar-nav">
                <ul class="side">
                    <li class="active">
                        <a class="section-link" href="#token" , title="Pahlawan API">Key / Token</a>
                    </li>
                    <ul class="side">
                        <li class="list">
                            <a class="section-link" href="#your-token" , title="Endpoint">Your Token</a>
                        </li>
                    </ul>
                    <li class="active">
                        <a class="section-link" href="#documentation" , title="Pahlawan API">Documentation</a>
                    </li>
                    <ul class="side">
                        <li class="list">
                            <a class="section-link" href="#endpoint" , title="Endpoint">Endpoint</a>
                        </li>
                        <ul class="side">
                            <li class="list">
                                <a class="section-link" href="#search" , title="Search">Search</a>
                            </li>
                            <li class="list">
                                <a class="section-link" href="#get-one-data" , title="Get One Data">Get One
                                    Data</a>
                            </li>
                            <li class="list">
                                <a class="section-link" href="#get-all-data" , title="Get All Data">Get All
                                    Data</a>
                            </li>
                        </ul>
                    </ul>
                </ul>

                <form action="../index.php" class="home">
                    <div class="input_field">
                        <input type="submit" value="Go To Home" class="btn_home" name="submit">
                    </div>
                </form>

                <form action="../auth/logout.php" class="logout" method="POST">
                    <div class="input_field">
                        <input type="submit" value="Logout" class="btn" name="submit">
                    </div>
                </form>

            </div>
        </aside>
        <section class="content">
            <article class="markdown-section" id="main">
                <h1 id="token"><a href="#token" class="anchor"><span>Generate Token</span></a></h1>
                <blockquote>
                    <p>Sebelum menggunakan API anda juga perlu melihat token yang anda dapatkan setelah melakukan login.
                    </p>
                </blockquote>
                <h2 id="your-token"><a href="#your-token" data-id="your-token" class="anchor"><span>Your
                            Token</span></a>
                </h2>

                <p style="font-size: 20px; font-weight: 800; color: #e96900; margin-bottom: 50px;">
                    <?php generate_token($_SESSION['username'], $_SESSION['password']); ?></p>

                <h1 id="documentation"><a href="#documentation" class="anchor"><span>Documentation API
                            Pahlawan</span></a></h1>
                <blockquote>
                    <p>API untuk berbagi data-data terkait nama-nama dan prestasi-prestasi dari pahlawan yang telah di
                        torehkan. <br> Dengan begitu orang-orang dapat mengetahui
                        sejarah yang lebih lengkap seperti apa
                    </p>
                </blockquote>

                <h2 id="endpoint"><a href="#endpoint" data-id="endpoint" class="anchor"><span>Endpoint</span></a>
                </h2>
                <p style="color: #42b983; font-weight:bold;">http://localhost/apipahlawan/api/</p>

                <h3 id="search"><a href="#search" data-id="search" class="anchor"><span>Search</span></a>
                </h3>
                <ul>
                    <li>URL<ul>
                            <li><code>http://localhost/apipahlawan/api/search.php</code></li>
                        </ul>
                    </li>
                    <li>Method<ul>
                            <li>GET</li>
                        </ul>
                    </li>
                    <li>Headers<ul>
                            <li><code>key</code>: <code>[your_token]</code></li>
                        </ul>
                    </li>
                    <li>Parameters<ul>
                            <li><code>nama</code> as <code>string</code></li>
                        </ul>
                    </li>
                    <li>Response
                        <pre v-pre="" data-lang="json"><code class="lang-json"> {
    "status": {
        "code": 200,
        "description": "Request Valid"
    },
    "results": [
        {
            "id_pahlawan": "127",
            "nama": "Pattimura",
            "daerah_lahir": "Maluku",
            "tahun_lahir": "1783",
            "daerah_wafat": "Maluku",
            "tahun_wafat": "1817",
            "tahun_penetapan": "1973"
        }
    ]
}</code></pre>
                    </li>
                </ul>
                <h3 id="get-one-data"><a href="#get-one-data"
                        data-id="add-new-story-with-guest-account-without-authentication" class="anchor"><span>Get One
                            Data</span></a></h3>
                <ul>
                    <li>URL<ul>
                            <li><code>http://localhost/apipahlawan/api/getOneData.php</code></li>
                        </ul>
                    </li>
                    <li>Method<ul>
                            <li>GET</li>
                        </ul>
                    </li>
                    <li>Headers<ul>
                            <li><code>key</code>: <code>[your_token]</code></li>
                        </ul>
                    </li>
                    <li>Parameters<ul>
                            <li><code>id</code> as <code>int</code></li>
                        </ul>
                    </li>
                    <li>Response
                        <pre v-pre="" data-lang="json"><code class="lang-json">{
    "status": {
        "code": 200,
        "description": "Request Valid"
    },
    "results": [
        {
            "id_pahlawan": "27",
            "nama": "Asad Syamsul Arifin",
            "daerah_lahir": "Arab Saudi",
            "tahun_lahir": "1897",
            "daerah_wafat": "Jawa Timur",
            "tahun_wafat": "1990",
            "tahun_penetapan": "2016"
        }
    ]
}</code></pre>
                    </li>
                </ul>

                <h3 id="get-all-data"><a href="#get-all-data" data-id="get-one-data" class="anchor"><span>Get
                            All Data</span></a></h3>
                <ul>
                    <li>URL<ul>
                            <li><code>http://localhost/apipahlawan/api/getAllData.php</code></li>
                        </ul>
                    </li>
                    <li>Method<ul>
                            <li>GET</li>
                        </ul>
                    </li>
                    <li>Headers<ul>
                            <li><code>key</code>: <code>[your_token]</code></li>
                        </ul>
                    </li>
                    <li>Response
                        <pre v-pre="" data-lang="json"><code class="lang-json">{
    "status": {
        "code": 200,
        "description": "Request Valid"
    },
    "results": [
        ...
    ];
}
</code></pre>
                    </li>
                </ul>
                <br>
                <br>

            </article>
        </section>
    </main>

</body>

</html>