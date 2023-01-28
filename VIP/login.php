<?php
session_start();
require_once 'connection.php';
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
    <link href="style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Carousel Start -->



    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
        <div class="center">
            <h1>Login</h1>
            <form action="login.php" method="post">
                <div class="txt_field">
                <input type="text" name="Username" required>
                <span></span>
                <label>Username</label>
                </div>
                <div class="txt_field">
                <input type="password" name="Password" required>
                <span></span>
                <label>Password</label>
                </div>
                <input type="submit" name = "Login" value="Login">
                <div class="signup_link">
                <a href="../Index.php"> Return to Home Screen</a>
                </div>
            </form>
            </div>
        </div>   
    </div>

    <!-- Carousel End -->
        


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>

    <?php
        if(isset($_POST['Login'])){
            $Username = $_POST['Username'];
            $Pass = $_POST['Password'];
            $select = mysqli_query($conn,"SELECT * FROM login WHERE Username = '$Username' AND Password = MD5('$Pass') ");
            $row = mysqli_fetch_array($select);

            if(is_array($row)){
                $_SESSION["ID"] = $row['UserID'];
                $_SESSION["Username"] = $row['Username'];
                $_SESSION["Pass"] = $row['Password'];
                $_SESSION["Role"] = $row['Role'];
            }
            else{
                echo '<script>';
                echo 'alert("Invalid Username or Password!");';
                echo 'window.location.href = "login.php"';
                echo '</script>';
            }

        }
        if(isset($_SESSION["Username"])){
            $userid = $_SESSION['ID'];
            if($_SESSION['Role'] == 'Student'){
                $sql = mysqli_query($conn,"SELECT MAX(datediff(paymenthistory.ExpiredDate, CURRENT_DATE)) as days_remaining FROM paymenthistory 
                WHERE paymenthistory.StudentID = '$userid'");
                $timeleft = mysqli_fetch_array($sql);
                if(is_array($timeleft)){
                    if($timeleft['days_remaining'] < 0){
                        ?>
                        <script>
                            alert("Your Account is expired please renew by contacting our Admin");        
                        </script> 
                        <?php

                    }
                    else if($timeleft['days_remaining'] < 5){
                        $tmp = $timeleft['days_remaining'];
                        $tmp .= " days left";
                        ?>
                        <script>
                            alert("Account will expired in <?php echo $tmp;?>");
                            window.location.href =  "../index.php";        
                        </script>     
                    <?php
                
                    }
                    else{
                    ?>
                        <script>
                            window.location.href =  "../index.php";        
                        </script>     
                    <?php
                    }
                    
                    
                    
                }
            }
            else if($_SESSION['Role'] == 'Tutor'){
                header("Location:../Tutor/TutorHome.php");
            }
            
        }
    ?>
</body>

</html>