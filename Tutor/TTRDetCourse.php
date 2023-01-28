<?php
    session_start();

    require_once 'connection.php';

    if(isset($_SESSION["Username"])){
        $session = $_GET['crs'];
        $tutor = $_GET['tID'];
        $grade = $_GET['cls'];
        $userID = $_SESSION['ID'];

        $sql = "SELECT vipcourse.CourseName, vipcourse.Grade, tutor.Name FROM vipstudentclass 
        JOIN vipcourse ON (vipcourse.CourseID = vipstudentclass.CourseID)
        JOIN vipclass ON (vipclass.CourseID = vipstudentclass.CourseID AND vipclass.TutorID = vipstudentclass.TutorID)
        JOIN tutor ON (tutor.TutorID = vipstudentclass.TutorID)
        WHERE vipstudentclass.StudentID = '$userID' AND vipstudentclass.TutorID = '$tutor' AND vipstudentclass.CourseID = '$session'";

        $crsdtl = $conn->query($sql);
        $courseDetail = mysqli_fetch_assoc($crsdtl);

        $sql1 = "SELECT * FROM vipcoursesession WHERE CourseID = $session";
        $listssn = $conn->query($sql1);
        $manyssn = mysqli_num_rows($listssn);

        
    }
    else{
        $class = $_GET['cls'];
        $chapter = $_GET['ch'];
        $course = $_GET['crs'];
        $sql = "SELECT * FROM course
        JOIN chapter ON (course.CourseID = chapter.CourseID)
        JOIN sesi ON (chapter.ChapterID = sesi.ChapterID)
        WHERE chapter.chapterID = $chapter;";
        $CourseRN = $conn->query($sql);
        $Chemistry_Chapter = $conn->query($sql);
    
        $chssn = $conn->query($sql);
    
        $sql1 = "SELECT * FROM chapter JOIN chapterquiz ON (chapter.ChapterID = chapterquiz.ChapterID) WHERE chapter.ChapterID = $chapter;";
        $qz = $conn->query($sql1);
    }
  

   

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
    <link href="../../../img/favicon.ico" rel="icon">

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
                    <a href="TutorHome.php" class="nav-item nav-link">Home</a>
                    <a href="#" class="nav-item nav-link active">Tutor Courses</a>
                </div>
                <a href="../VIP/logout.php" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->

        <!-- Header Start -->
        <div class="container-fluid bg-primary py-5 mb-5 page-header">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-10 text-center">
                        <h1 class="display-3 text-white animated slideInDown">Tutor Courses</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                                <li class="breadcrumb-item text-white active" aria-current="page">Enrolled Courses</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
       
        <div class="mytabs">
            <?php 
            for($i = 1 ; $i <= $manyssn ; $i++){
                $qtyssn = mysqli_fetch_assoc($listssn);
                if($i == 1){
            ?>
                    <input type="radio" id="Session<?php echo $qtyssn['SessionID'];?>" name="mytabs" checked="checked">
                    <label for="Session<?php echo $qtyssn['SessionID'];?>">Session <?php echo $qtyssn['SessionID'];?></label>
                    <div class="tab">
                        <h2>PPT</h2>
                        <?php
                        $sql2 = "SELECT vipsessionmaterials.Title, vipsessionmaterials.Link FROM vipsessionmaterials WHERE vipsessionmaterials.Type = 'PPT' AND vipsessionmaterials.SessionID = $i AND vipsessionmaterials.CourseID = $session AND vipsessionmaterials.TutorID = '$tutor';";
                        $pptlist = $conn->query($sql2);
                        $chck = $conn->query($sql2);
                        if(!empty($check = mysqli_fetch_assoc($chck))){
                            while($ppt = mysqli_fetch_assoc($pptlist)){
                            ?>
                                <a href="<?php echo $ppt["Link"];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2"><?php echo $ppt["Title"];?></a>
                        <?php
                            }
                        }
                        else{
                            ?>
                            <h1> No Resource At the moment</h1>
                            <?php
                        }
                        ?>
                        
                        <div class="py-6">
                        <h2>Video</h2>
                        </div>
                        
                        <?php
                        $sql3 = "SELECT vipsessionmaterials.Title, vipsessionmaterials.Link FROM vipsessionmaterials WHERE vipsessionmaterials.Type = 'Video' AND vipsessionmaterials.SessionID = $i AND vipsessionmaterials.CourseID = $session AND vipsessionmaterials.TutorID = '$tutor';";
                        $videolist = $conn->query($sql3);
                        $chck1 = $conn->query($sql3);
                        if(!empty($check1 = mysqli_fetch_assoc($chck1))){
                            while($video = mysqli_fetch_assoc($videolist)){
                            ?>
                                <a href="<?php echo $video["Link"];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2"><?php echo $video["Title"];?></a>
                        <?php
                            }
                        }
                        else{
                            ?>
                            <h1> No Resource At the moment</h1>
                            <?php
                        }
                        ?>
                        <p>    
                        <div class="py-6">
                        <h2>Zoom</h2>     
                        </div>               
                            <?php
                            $sql4 = "SELECT ZoomLink, SessionDate, SessionTime, MAX(datediff(SessionDate, CURRENT_DATE)) as Restricted FROM vipcoursesession WHERE SessionID = $i AND CourseID = $session AND TutorID = '$tutor'";
                            $vrtlcls = $conn->query($sql4);
                            $chck2 = $conn->query($sql4);
                            if(!empty ($check2 = mysqli_fetch_assoc($chck2))){
                                $virtualclass = mysqli_fetch_assoc($vrtlcls);
                                $restric = $virtualclass['Restricted'];
                                if($restric < 0){
                                    ?>
                                    <h1>Virtual Class has Ended</h1>
                                <?php
                                }
                                else if($restric > 0 ){
                                    ?>
                                    <p>Start: <?php echo $virtualclass['SessionDate'];?>, <?php echo $virtualclass['SessionTime'];?></p>
                                    <script type="text/javascript">
                                        function theFunction() {
                                            alert("Virtual Class hasn't started yet");
                                        }
                                    </script>
                                        <a href="#" class="btn btn-white btn-lg-course py-3 px-4 mt-2" onclick="return theFunction();">Virtual Class</a>
                                        
                                    <?php
                                }
                                else{
                                    ?>
                                    <p>Start: <?php echo $virtualclass['SessionDate'];?>, <?php echo $virtualclass['SessionTime'];?></p>
                                    <a href="<?php echo $virtualclass['ZoomLink'];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2">Virtual Class</a>
                                    <?php
                                }
                            ?>
                                   
                            <?php
                            }
                            else{
                            ?>
                                <h1>No Online Classes Today</h1>
                            <?php
                            }
                            ?>
                        </div>
                    <?php
                }
                else{
                    ?>
                    <input type="radio" id="Session<?php echo $qtyssn['SessionID'];?>" name="mytabs">
                    <label for="Session<?php echo $qtyssn['SessionID'];?>">Session <?php echo $qtyssn['SessionID'];?></label>
                    <div class="tab">
                    <h2>PPT</h2>
                        <?php
                        $sql2 = "SELECT vipsessionmaterials.Title, vipsessionmaterials.Link FROM vipsessionmaterials WHERE vipsessionmaterials.Type = 'PPT' AND vipsessionmaterials.SessionID = $i AND vipsessionmaterials.CourseID = $session AND vipsessionmaterials.TutorID = '$tutor';";
                        $pptlist = $conn->query($sql2);
                        $chck = $conn->query($sql2);
                        if(!empty($check = mysqli_fetch_assoc($chck))){
                            while($ppt = mysqli_fetch_assoc($pptlist)){
                            ?>
                                <a href="<?php echo $ppt["Link"];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2"><?php echo $ppt["Title"];?></a>
                        <?php
                            }
                        }
                        else{
                            ?>
                            <h1> No Resource At the moment</h1>
                            <?php
                        }
                        ?>

                        <div class="py-6">
                        <h2>Video</h2>
                        </div>
                        <?php
                        $sql3 = "SELECT vipsessionmaterials.Title, vipsessionmaterials.Link FROM vipsessionmaterials WHERE vipsessionmaterials.Type = 'Video' AND vipsessionmaterials.SessionID = $i AND vipsessionmaterials.CourseID = $session AND vipsessionmaterials.TutorID = '$tutor';";
                        $videolist = $conn->query($sql3);
                        $chck1 = $conn->query($sql3);
                        if(!empty($check1 = mysqli_fetch_assoc($chck1))){
                            while($video = mysqli_fetch_assoc($videolist)){
                            ?>
                                <a href="<?php echo $video["Link"];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2"><?php echo $video["Title"];?></a>
                        <?php
                            }
                        }
                        else{
                            ?>
                            <h1> No Resource At the moment</h1>
                            <?php
                        }
                        ?>

                        <p>
                        <div class="py-6">
                        <h2>Zoom</h2>     
                        </div>               
                            <?php
                            $sql4 = "SELECT ZoomLink, SessionDate, SessionTime, MAX(datediff(SessionDate, CURRENT_DATE)) as Restricted FROM vipcoursesession WHERE SessionID = $i AND CourseID = $session AND TutorID = '$tutor'";
                            $vrtlcls = $conn->query($sql4);
                            $chck2 = $conn->query($sql4);
                            if(!empty ($check2 = mysqli_fetch_assoc($chck2))){
                                $virtualclass = mysqli_fetch_assoc($vrtlcls);
                                $restric = $virtualclass['Restricted'];
                                if($restric < 0){
                                    ?>
                                    <h1>Session has Ended</h1>
                                <?php
                                }
                                else{
                                    ?>
                                    <p>Start: <?php echo $virtualclass['SessionDate'];?>, <?php echo $virtualclass['SessionTime'];?></p>
                                    <a href="<?php echo $virtualclass['ZoomLink'];?>" class="btn btn-white btn-lg-course py-3 px-4 mt-2">Virtual Class</a>
                                    <?php
                                }
                            ?>
                                   
                            <?php
                            }
                            else{
                            ?>
                                <h1>No Online Classes Today</h1>
                            <?php
                            }
                            ?>
                        </div>
                    <?php
                }
            }
            ?>
          </div>

        <div class="container">
            <div class="py-4">
                <form>
                    <input type="button" value="< Return" class="btn btn-white btn-lg-return upscale-30 px-4 py-1" onclick="history.back()">
                </form>
            </div>
        </div>

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
    <?php
    }
   ?>


    


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