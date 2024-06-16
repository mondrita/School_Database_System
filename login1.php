<?php
// first of all, we need to connect to the database
require_once('dbconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['user']) && isset($_POST['pass'])){
    // write the query to check if this username and password exists in our database
    $u = $_POST['user'];
    $p = $_POST['pass'];
    $sql = "SELECT * FROM studentlogin WHERE user = '$u' AND pass = '$p'";

    //Execute the query 
    $result = mysqli_query($conn, $sql);

    //check if it returns an empty set
    if(mysqli_num_rows($result) !=0 ){

        // set the session variable to the student's name
        $row = mysqli_fetch_assoc($result);
        $student_id = $row['pass'];
        $sql = "SELECT * FROM Student WHERE Student_ID = '$p'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $student_name = $row['Student_Name'];
        session_start();
        $_SESSION['student_name'] = $student_name;
        $_SESSION['student_id'] = $student_id;

        // redirect to the homepage
        header("Location: student_home.php");
        exit;
    }
    else{
        $error_message = "Username or Password is incorrect"; // set the error message
        header("Location: index.php?error_message=$error_message"); // redirect to index.php with the error message as a parameter
        exit; // exit to prevent the script from continuing to run
    }
}
?>