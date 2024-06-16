<?php
// first of all, we need to connect to the database
require_once('dbconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['fname']) && isset($_POST['pass'])){
	// write the query to check if this username and password exists in our database
	$u = $_POST['fname'];
	$p = $_POST['pass'];
	$sql = "SELECT * FROM adminlogin WHERE username = '$u' AND password = '$p'";
	
	//Execute the query 
	$result = mysqli_query($conn, $sql);
	
	//check if it returns an empty set
	if(mysqli_num_rows($result) !=0 ){
	
		//echo "LET HIM ENTER";
		header("Location: home.php");
	}
	else{
        $error_message = "Username or Password is incorrect"; // set the error message
        header("Location: index.php?error_message=$error_message"); // redirect to index.php with the error message as a parameter
        exit; // exit to prevent the script from continuing to run
    }
}


?>
