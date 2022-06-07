<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="" />
        <title>Chamb Services</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
           <?php
            require 'header.php';
           ?>
           <div id="bannerImage">
               <div class="container">
                   <center>
                   <div id="bannerContent">
                       <h1>We bring to you all services.</h1>
                       <p>Flat 40% OFF on all premium brands.</p>
                       <a href="services.php" class="btn btn-danger">Book Now</a>
                   </div>
                   </center>
               </div>
           </div>
           <div class="container">
               <div class="row">
                   <div class="col-xs-4">
                       <div  class="thumbnail">
                           <a href="products.php">
                                <img src="img/download.jpg" alt="dj">
                           </a>
                           <center>
                                <div class="caption">
                                        <p id="autoResize">DJZ</p>
                                        <p>Choose among the best available in the country.</p>
                                </div>
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="services.php">
                               <img src="img/download.jpg" alt="weddings">
                           </a>
                           <center>
                                <div class="caption">
                                    <p id="autoResize">Watches</p>
                                    <p>Original watches from the best brands.</p>
                                </div>
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="services.php">
                               <img src="img/download.jpg" alt="Shirt">
                           </a>
                           <center>
                               <div class="caption">
                                   <p id="autoResize">Shirts</p>
                                   <p>Our exquisite collection of shirts.</p>
                               </div>
                           </center>
                       </div>
                   </div>
               </div>
           </div>
            <br><br> <br><br><br><br>
           <footer class="footer"> 
               <div class="container">
               <center>
                   <p>Copyright & copy Lifestyle Store. All Rights Reserved. | Contact Us: +256704104284</p>
                   <p>This website is developed by Otto Joash</p>
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>