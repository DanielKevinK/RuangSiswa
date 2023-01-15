<?php
    session_start();
?>

<?php
    $qID = $_SESSION['quizid'];

    $chID = $_SESSION['chid'];

    $class = $_GET['cls'];
    $chapter = $_GET['ch'];
    $course = $_GET['crs'];

    $conn = mysqli_connect('localhost','root');

    mysqli_select_db($conn,'ruangsiswa');

    $_SESSION['scr'] = 0;

    $tot = $_SESSION['total'];

    if(isset($_POST['submit'])){

        if(!empty($_POST['quizcheck']) and count($_POST['quizcheck']) == 5 and !empty($_POST['Name'])){

            // echo "Out of 5, you have selected".$count. " options";
            
            $result = 0;
            $i = 1;

            $selected = $_POST['quizcheck'];
            // print_r($selected);

            $q = "select * from quizquestion where QuizID = $qID";
            $query = mysqli_query($conn,$q);

            while($rows = mysqli_fetch_array($query)){
                // print_r($rows['CorrectAnswer']);

                $checked = $rows['CorrectAnswer'] == $selected[$i];

                if($checked){
                    $result++;
                }
                $i++;
            }

            $_SESSION['scr'] = (100/5)*$result;
        }
        else{
            header("Location:Quiz/Quiz.php?ch=$chID&qd=$qID");
        }
    }

    $score =  $_SESSION['scr'];
    $userName = $_POST['Name'];
    $count = count($_POST['quizcheck']);

    $reset = "ALTER TABLE quizhighscore AUTO_INCREMENT = $tot;";
    $rst = mysqli_query($conn,$reset);

    $insert = "INSERT INTO `quizhighscore`(`QuizID`, `Score`, `Name`) VALUES ('$qID','$score','$userName')";
    $insrt = mysqli_query($conn,$insert);

    unset($_SESSION['myValue']);
    unset($_POST['quizcheck']);
    unset($_POST['submit']);
    unset($_POST['Name']);
    
    // echo "<br> ur total score is".$score;

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Ruang Siswa</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="index.php" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>Ruang Siswa</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="#" class="nav-item nav-link">Home</a>
                <a href="about.php" class="nav-item nav-link">About</a>
                <a href="Courses/courses.php" class="nav-item nav-link">Courses</a>
                <a href="leaderboards.php" class="nav-item nav-link">Leaderboard</a>
                <a href="contact.php" class="nav-item nav-link">Contact</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                    <?php 
                    if($score >= 60){
                    ?>
                    <h1 class="display-3 text-white animated slideInDown">Good Job!</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <h5 class="text-white"> Keep it Up!</h5>
                        </ol>
                    </nav>
                    <?php
                    }
                    else{
                    ?>
                    <h1 class="display-3 text-white animated slideInDown">Don't be sad</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <h5 class="text-white">Keep trying and don't give up!</h5>
                            </ol>
                        </nav>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <!-- 404 Start -->
    <?php
    if($score >= 60){
        ?>
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <i class="bi bi-emoji-smile display-1 text-primary"></i>
                        <h1 class="display-1"><?php echo $userName?></h1>
                        <h1 class="mb-4">You have select <?php echo $count?> Out of 5</h1>
                        <h1 class="mb-4">Score:<?php echo $score ?></h1>
                        <p align="center">
                            <a class="btn btn-lg-refin upscale-30 py-1 px-4" href="Chapter/Chapter.php?cls=<?php echo $class?>&ch=<?php echo $chapter?>&crs=<?php echo $course ?>">Return</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    <?php
    }
    else{
    ?>
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <i class="bi bi-emoji-frown display-1 text-primary"></i>
                        <h1 class="display-1"><?php echo $userName?></h1>
                        <h1 class="mb-4">You have selected <?php echo $count?> Out of 5</h1>
                        <h1 class="mb-4">Score: <?php echo $score ?></h1>
                        <p align="center">
                            <a class="btn btn-lg-refin upscale-30 py-1 px-4" href="Chapter/Chapter.php?cls=<?php echo $class?>&ch=<?php echo $chapter?>&crs=<?php echo $course ?>">Return</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    <?php
    }
    ?>
    <!-- 404 End -->
        

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-6 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Quick Link</h4>
                    <a class="btn btn-link" href="about.php">About Us</a>
                    <a class="btn btn-link" href="contact.php">Contact Us</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Contact</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>St. Mansion Valley, Malang, Indonesia</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+62 345 67890</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>ruangsiswa@edu.com</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href="www.twitter.com"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href="www.facebook.com"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href="www.youtube.com"><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href="www.linkedin.com"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Newsletter</h4>
                    <p>Enter Your Email To Get Newsletter From Us</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">Ruangsiswa 2023</a>, All Right Reserved.

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
