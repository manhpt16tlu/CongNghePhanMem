<?php
    require('connect.php');
    session_start();
    unset($_SESSION['user']);
    header('location:header.php');
?>