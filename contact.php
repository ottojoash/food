<?php
    require 'connection.php';
    session_start();

    $name=mysqli_real_escape_string($con,$_POST['name'];
    $email=mysqli_real_escape_string($con,$_POST['email']);
    $regex_email="/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[_a-z0-9-]+)*(\.[a-z]{2,3})$/";
    if(!preg_match($regex_email,$email)){
    $message=mysqli_real_escape_string($con,$_POST['message']);	