<?php
session_start();
$class = $_GET['cls'];
$chpt = $_GET['ch'];
$qid = $_GET['qd'];

 require_once 'connection.php';
 $ch = "select * from chapter where chapterID = 2";
 $chapterQ = $conn->query($ch);

 $sql = "SELECT * FROM course
    JOIN chapter ON (course.CourseID = chapter.CourseID)
    JOIN sesi ON (chapter.ChapterID = sesi.ChapterID)
    WHERE chapter.ChapterID = $chpt";  

 $ret = $conn->query($sql);

 $sql2 = "SELECT COUNT(*) c FROM quizhighscore WHERE QuizID = $qid";

 $cnt = $conn->query($sql2);

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
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
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
            <a href="../index.php" class="nav-item nav-link">Home</a>
                <a href="../about.php" class="nav-item nav-link">About</a>
                <a href="../Courses/Courses.php" class="nav-item nav-link">Courses</a>
                <a href="../leaderboards.php" class="nav-item nav-link">Leaderboard</a>
                <a href="../contact.php" class="nav-item nav-link">Contact</a>
            </div>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown">Good Luck!</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <h5 class="text-white"> Do Your Best!</h5>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <?php
    $chapter = mysqli_fetch_assoc($chapterQ);

    $cont = mysqli_fetch_assoc($cnt);
    $_SESSION["total"] = $cont['c'];

    $return = mysqli_fetch_assoc($ret);
    ?>


    <!-- 404 Start -->
    

        <div class="container">
            <h1 class="text-dark upscale-50 px-4">Quiz</h1>
            <h2 class="text-dark px-7"><?php echo $chapter['ChapterName']?></h2>
            <form action="../score.php?cls=<?php echo $class?>&ch=<?php echo $return['ChapterID']?>&crs=<?php echo $return['CourseID']?>" method="post">
            <div class="px-7 py-3 fs">
                <label class="fs" for="Name">Name:</label>
                    <input type="text" name="Name" placeholder="">
            </div>
            
            <h6 class="px-7"> NOTE: PLEASE FILL ALL THE ANSWER AND NAME!</h6>
            <ol>
            <?php
            for($i = 1 ; $i <= 5 ; $i++){
                require_once 'connection.php';
                $q = "select * from quizquestion where QuizID = $qid AND QuizQuestionID = $i"; 
                $query = mysqli_query($conn,$q);
                ?>

                <?php
    
                $_SESSION["quizid"] = $qid;
                $_SESSION["chid"] = $chpt;
                while($rows = mysqli_fetch_array($query)){
                ?>
                <div class="py-2">
                        <h1 class="btn-lg-crcl px-5"><li class="upscale-20 text-dark"><?php echo $rows["Question"];?></h1>
                            <ol type="A">
                                
                                    <?php
                                    $q = "select * from quizanswer where QuizID = $qid AND quizQuestionID = $i"; 
                                    $query = mysqli_query($conn,$q);
                                    while($rows = mysqli_fetch_array($query) ){
                                        ?>
                                        <li class="text-dark upscale-20">
                                        <input type="radio" name="quizcheck[<?php echo $rows['quizQuestionID']?>]" value="<?php echo $rows['answerQuizID']?>">
                                        <?php echo $rows['AnswerQuiz']?>
                                        </li>
                                    <?php
                                    }
                                    ?>
                            </ol>
                        </li>
                </div>
                <?php
                }
            }
            ?>
            </ol>
        </div>
        <!-- 404 End -->

        <?php        
        $return = mysqli_fetch_assoc($ret);
        ?>

        

      

        <div class="container">
            <div class="py-4">
                <input type="button" value="< Return" class="btn btn-lg-refin-l upscale-30 px-4 py-1" onclick="history.back()">
                <input type="submit" name="submit" Value="Submit >" class="btn btn-lg-refin-r m-auto d-block" /> <br> 
            </div>
            </p>
        </div>
    </form>
        

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-6 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Quick Link</h4>
                    <a class="btn btn-link" href="../about.php">About Us</a>
                    <a class="btn btn-link" href="../contact.php">Contact Us</a>
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
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>

</html>