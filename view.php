<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");  // Include connection file
error_reporting(0);  // Hide undefined index errors
session_start(); // Start session

// Check if user is logged in
if (empty($_SESSION["user_id"])) {
    header('Location: login.php');
    exit();
}
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="main logo.png">
    <title>Home</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> 
    
    <style>
        /* Styles for active (clicked) state */
        .navbar-nav .nav-item .nav-link.active,
        .navbar-nav .nav-item .nav-link:hover {
            color: white !important; /* Text color for active state and hover state */
        }

        /* Styles for hover state */
        .navbar-nav .nav-item .nav-link:hover {
            color: orange !important; /* Text color for hover state */
        }

        /* Add hover effect to app-section text-img-block */
        .app-section .text-img-block:hover {
            background-color: orange !important; /* Background color on hover */
        }

        /* Styles for hover state */
        .navbar-nav .nav-item .nav-link {
            color: orange !important; /* Text color for hover state */
        }
    </style>

    <script>
    document.addEventListener("DOMContentLoaded", function () {
        var navLinks = document.querySelectorAll('.navbar-nav .nav-item .nav-link');

        navLinks.forEach(function (link) {
            link.addEventListener('click', function (event) {
                navLinks.forEach(function (el) {
                    el.classList.remove('active');
                });

                event.target.classList.add('active');
            });

            link.addEventListener('mouseover', function () {
                navLinks.forEach(function (el) {
                    el.classList.remove('hover');
                });

                link.classList.add('hover');
            });

            link.addEventListener('mouseout', function () {
                navLinks.forEach(function (el) {
                    el.classList.remove('hover');
                });
            });
        });
    });
    </script>
</head>

<body class="home">
    <!-- Header starts -->
    <header id="header" class="header-scroll top-header headrom">
        <!-- .navbar -->
        <nav class="navbar navbar-dark">
            <div class="container">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php">HARDWARE</a>
                <div class="collapse navbar-toggleable-md float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"> <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                        <?php
                        $ress = mysqli_query($db, "select * from hardware");
                        while ($rows = mysqli_fetch_array($ress)) {
                            echo '<li class="nav-item"><a class="nav-link active" href="hardwares.php?store_id=' . $rows['st_id'] . '">Product</a></li>';
                        }
                        ?>
                        <?php
                        if (empty($_SESSION["user_id"])) {
                            echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
                                  <li class="nav-item"><a href="registration.php" class="nav-link active">Sign Up</a> </li>';
                        } else {
                            echo '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>
                                  <li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>
                                  <li class="nav-item"><a href="update_users.php" class="nav-link active">Profile</a> </li>';
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /.navbar -->
    </header>
    <!-- Page wrapper  -->
    <div class="page-wrapper">
        <!-- Bread crumb -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h3 class="text-primary">User Info</h3> 
            </div>
        </div>
        <!-- End Bread crumb -->
        <!-- Container fluid  -->
        <div class="container-fluid">
            <!-- Start Page Content -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Your Profile</h4>
                            <div class="table-responsive m-t-40">
                                <table id="myTable" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>Password</th>  
                                            <th>User Image</th>                                          
                                            <th>Reg Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $user_id = $_SESSION["user_id"];
                                        $sql = "SELECT * FROM users WHERE u_id='$user_id'";
                                        $query = mysqli_query($db, $sql);
                                        
                                        if ($row = mysqli_fetch_array($query)) {
                                            echo '<tr>
                                                    <td>' . $row['username'] . '</td>
                                                    <td>' . $row['f_name'] . '</td>
                                                    <td>' . $row['l_name'] . '</td>
                                                    <td>' . $row['email'] . '</td>
                                                    <td>' . $row['phone'] . '</td>
                                                    <td>' . $row['address'] . '</td>
                                                    <td>' . $row['password'] . '</td>
                                                    <td><div class="col-md-3 col-lg-8 m-b-10">
                                                        <center><img src="admin/Res_img/hardwares/'.$row['img'].'" class="img-responsive radius" style="max-height:100px;max-width:150px;" /></center>
                                                        </div>
                                                        </td>
                                                    <td>' . $row['date'] . '</td>
                                                    <td>
                                                      
                                                        <a href="update_users.php?user_upd=' . $row['u_id'] . '" class="btn btn-info btn-flat btn-addon btn-xs m-b-10"><i class="fa fa-edit" style="font-size:25px"></i></a>
                                                    </td>
                                                  </tr>';
                                        } else {
                                            echo '<tr><td colspan="8"><center>No User Data!</center></td></tr>';
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Page Content -->
        </div>
        <!-- End Container fluid  -->
    </div>
   
          <!-- start: FOOTER -->
          <footer class="footer">
            <div class="container">
                <!-- top footer statrs -->
                <div class="row top-footer">
						
						<div class="col-xs-12 col-sm-4 address color-gray">
                            <h5>Address:</h5>
                            <p>Tepi Klinik Bidan Jalan Sungai Baru Simpang Ampat, 02700 Kangar, Perlis</p>
							 <h5>Operational Hours:</h5>
                            <p>Monday to Sunday 
							8 a.m to 10 p.m  </p>
							
                            <h5>Call us at: <a style="font-family: Arial; color:white;" href="https://l.instagram.com/?u=https%3A%2F%2Fwa.me%2Fc%2F601136306284&e=AT3Hloia6Bzu4ndOJ6l4HvQ13ibHGuLl0g5l42LzsQgYmIQtnv14sS-F9EjjYEqYye6wrYO-9GtUbnrIG1gUOx2OmDeRviNU2MZffQ">+60 11-3630 6284</a></h5></div>
                   


				   <div class="col-xs-12 col-sm-2 about color-gray">
                        <h5>Social media</h5>
                       <a href="https://www.facebook.com/koreanchickenperlisbyHanaChicken" target="_blank">
    <img src="images/i.png" alt="Facebook" width="50" height="50">
</a>
<a href=https://www.instagram.com/hardwarestore04_/ target="_blank">
    <img src="images/ii.png" alt="Instagram" width="50" height="50">
</a>
<a href="https://www.tiktok.com/@hanachickenperlis1" target="_blank">
    <img src="images/t.png" alt="Tiktok" width="50" height="50">
</a>



                    </div>
					<div class="col-xs-12 col-sm-3 popular-locations color-gray">
                        <h5>Locations We Deliver To</h5>
                        <ul>
                            <li><a >Arau</a> </li>
                            <li><a >Beseri</a> </li>
                            <li><a >Bintong</a> </li>
                            <li><a >Kaki Bukit</a> </li>
                            <li><a >Kuala Perlis</a> </li>
                            <li><a >Kaki Bukit</a> </li>
                            <li><a >Kangar</a> </li>
                            <li><a >Simpang Ampat</a> </li>
                            <li><a >Tambun Tulang</a> </li>
                            <li><a >Mata Ayer</a> </li>
                        </ul>
                    </div>
					 <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5>All Major Credit Cards Accepted</h5>
                            <ul>
                                <li>
                                    <a > <img src="images/paypal.png" alt="Paypal"> </a>
                                </li>
                                <li>
                                    <a ><img src="images/mastercard.png" alt="Mastercard"> </a>
                                </li>
                                <li>
                                    <a > <img src="images/maestro.png" alt="Maestro"> </a>
                                </li>
                                <li>
                                    <a ><img src="images/stripe.png" alt="Stripe"> </a>
                                </li>
                                <li>
                                    <a ><img src="images/bitcoin.png" alt="Bitcoin"> </a>
                                </li>
                            </ul>
                        </div>
                        
                   
                    
                   
                </div>
                <!-- top footer ends -->
                
            </div>
        </footer>
        <!-- end:Footer -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/hardware.min.js"></script>
</body>
</html>