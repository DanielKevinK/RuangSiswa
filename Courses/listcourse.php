<?php
    session_start();

    require_once 'connection.php';

    $cID = $_GET['v'];

    $sql = "SELECT * FROM course WHERE class = $cID";
    $course = $conn->query($sql);
    $chck = $conn->query($sql);

    $j = 10;

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
    <link href="../img/favicon.ico" rel="icon">

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

    <?php
    if(isset($_SESSION["Username"])){
    ?>
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
                    <a href="#" class="nav-item nav-link active">Courses</a>
                    <a href="../leaderboards.php" class="nav-item nav-link">Leaderboard</a>
                    <a href="../contact.php" class="nav-item nav-link">Contact</a>
                </div>
        </nav>
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid bg-primary py-5 mb-5 page-header">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-10 text-center">
                        <h1 class="display-3 text-white animated slideInDown">Courses</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                                <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                                <li class="breadcrumb-item text-white active" aria-current="page">Courses</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Categories Start -->
        <!-- Categories Start -->
        <div class="container-xxl py-5 category">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                    <h1 class="mb-5">List Available Course</h1>
                </div>
                <div class="container py-3">
                    <a href="#" class="btn btn-white btn-lg-crcl px-4 py-1 nav-linked dropdown-toggle upscale-20 section-title-custom" data-bs-toggle="dropdown">Class <?php echo $cID?></a>
                    <div class="dropdown-menu fade-down container-btn m-0">
                        <?php while($j < 13){
                            ?>
                        <a href="listcourse.php?v=<?php echo $j?>" class="dropdown-item"><?php echo $j?></a>
                        <?php
                        $j++;
                        }
                        ?>
                    </div>
                </div>
                    <div class="container">
                        <div class="row g-4">
                                <h1 class="mb-4">Grade: 10</h1>
                        </div>
                    
                        <?php
                            while($crs10 = mysqli_fetch_assoc($course10) ){
                        
                        ?>
                                <a href="Course.php?ch=<?php echo $crs10['CourseID'];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2"><?php echo $crs10['CourseName'];?></a>
                        <?php
                            }
                        ?>
                        <div class="py-4">
                            <form>
                                <input type="button" value="< Return" class="btn btn-white btn-lg-return upscale-30 px-4 py-1" onclick="history.back()">
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <!-- Categories Start -->
        <?php
        if(empty($check)){
        ?>
            <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container text-center">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <i class="bi bi-question-circle display-1 text-primary"></i>
                            <h1 class="display-1">What Happen?</h1>
                            <h1 class="mb-4">No Available Course Found</h1>
                            <p class="mb-4">We’re sorry looks like the course on this class is still not added</p>
                            <p class="mb-4">Stay tuned for the next update!</p>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    <?php
    }
    else{
    ?>


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
                    <a href="#" class="nav-item nav-link active">Courses</a>
                    <a href="../leaderboards.php" class="nav-item nav-link">Leaderboard</a>
                    <a href="../contact.php" class="nav-item nav-link">Contact</a>
                </div>
        </nav>
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid bg-primary py-5 mb-5 page-header">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-10 text-center">
                        <h1 class="display-3 text-white animated slideInDown">Courses</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                                <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                                <li class="breadcrumb-item text-white active" aria-current="page">Courses</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Categories Start -->
        <!-- Categories Start -->
        <div class="container-xxl py-5 category">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                    <h1 class="mb-5">List Available Course</h1>
                </div>
                <div class="container py-3">
                    <a href="#" class="btn btn-white btn-lg-crcl px-4 py-1 nav-linked dropdown-toggle upscale-20 section-title-custom" data-bs-toggle="dropdown">Class <?php echo $cID?></a>
                    <div class="dropdown-menu fade-down container-btn m-0">
                        <?php while($j < 13){
                            ?>
                        <a href="listcourse.php?v=<?php echo $j?>" class="dropdown-item"><?php echo $j?></a>
                        <?php
                        $j++;
                        }
                        ?>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="col-lg-7 col-md-6">
                        <div class="row g-3">
                            
                            <?php
                            if(!empty($check = mysqli_fetch_assoc($chck))){

                            
                                for($i = 1 ; $i <=4 ; $i++){
                                    $row = mysqli_fetch_assoc($course);
                                    ?>
                                    <?php
                                    if($i == 1 || $i == 4){
                                        ?>
                                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                                            <a class="position-relative d-block overflow-hidden" href="../Course/Course.php?cls=<?php echo $row['Class']?>&v=<?php echo $row['CourseID']?>">
                                                <img class="img-fluid" src="../img/<?php echo $row["imageName"];?>" alt="">
                                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                                    <h5 class="m-0"><?php echo $row["CourseName"];?></h5>
                                                </div>
                                            </a>
                                        </div>
                                    <?php
                                    }
                                    else{
                                    ?>
                                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                                            <a class="position-relative d-block overflow-hidden" href="../Course/Course.php?cls=<?php echo $row['Class']?>&v=<?php echo $row['CourseID']?>">
                                            <img class="img-fluid" src="../img/<?php echo $row["imageName"];?>" alt="">
                                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                                    <h5 class="m-0"><?php echo $row["CourseName"];?></h5>
                                                </div>
                                            </a>
                                        </div>
                                    <?php   
                                    }
                                }
                                ?>
                            </div>
                        </div>
                        <?php
                        for($i = 5 ; $i <=5 ; $i++){
                            $row = mysqli_fetch_assoc($course);
                        ?>
                            <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                                <a class="position-relative d-block h-100 overflow-hidden" href="../Course/Course.php?cls=<?php echo $row['Class']?>&v=<?php echo $row['CourseID']?>">
                                    <img class="img-fluid position-absolute w-100 h-100" src="../img/<?php echo $row["imageName"];?>" alt="" style="object-fit: cover;">
                                    <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin:  1px;">
                                        <h5 class="m-0"><?php echo $row["CourseName"];?></h5>
                                    </div>
                                </a>
                            </div>
                        
                            <?php           
                            }
                            ?>
                        <div class="col-lg-7 col-md-6">
                            <div class="row g-3">
                            <?php
                                for($i = 6 ; $i <=9 ; $i++){
                                    $row = mysqli_fetch_assoc($course);
                                    ?>
                                    <?php
                                    if($i == 6 || $i == 9){
                                        ?>
                                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                                            <a class="position-relative d-block overflow-hidden" href="../Course/Course.php?cls=<?php echo $row['Class']?>&v=<?php echo $row['CourseID']?>">
                                                <img class="img-fluid" src="../img/<?php echo $row["imageName"];?>" alt="">
                                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                                    <h5 class="m-0"><?php echo $row["CourseName"];?></h5>
                                                </div>
                                            </a>
                                        </div>
                                    <?php
                                    }
                                    else{
                                    ?>
                                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                                            <a class="position-relative d-block overflow-hidden" href="../Course/Course.php?cls=<?php echo $row['Class']?>&v=<?php echo $row['CourseID']?>">
                                            <img class="img-fluid" src="../img/<?php echo $row["imageName"];?>" alt="">
                                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                                    <h5 class="m-0"><?php echo $row["CourseName"];?></h5>
                                                </div>
                                            </a>
                                        </div>
                                    <?php   
                                    }
                                }
                                ?>
                            </div>
                        </div>
                        <?php
                        for($i = 10 ; $i <=10 ; $i++){
                            $row = mysqli_fetch_assoc($course);
                        ?>
                            <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                                <a class="position-relative d-block h-100 overflow-hidden" href="../Course/Course.php?cls=<?php echo $row['Class']?>&v=<?php echo $row['CourseID']?>">
                                    <img class="img-fluid position-absolute w-100 h-100" src="../img/<?php echo $row["imageName"];?>" alt="" style="object-fit: cover;">
                                    <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin:  1px;">
                                        <h5 class="m-0"><?php echo $row["CourseName"];?></h5>
                                    </div>
                                </a>
                            </div>
                        
                            <?php           
                            }
                        }
                        ?>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
        <!-- Categories Start -->
        <?php
        if(empty($check)){
        ?>
            <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container text-center">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <i class="bi bi-question-circle display-1 text-primary"></i>
                            <h1 class="display-1">What Happen?</h1>
                            <h1 class="mb-4">No Available Course Found</h1>
                            <p class="mb-4">We’re sorry looks like the course on this class is still not added</p>
                            <p class="mb-4">Stay tuned for the next update!</p>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        }

    }
        ?>
        
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