<?php
    $host='localhost';
    $username='root';
    $password='';
    $database='cricdatabase';

    $conn=mysqli_connect($host,$username,$password,$database) or die(mysqli_error($conn));
    //echo "successfully connnected";
   
    if (!$conn)
    {
        die("Connection failed: " . mysqli_connect_error());
    }
?>
