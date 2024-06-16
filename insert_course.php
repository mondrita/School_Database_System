
<?php
// first of all, we need to connect to the database
require_once('DBconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['stu_ID']) && isset($_POST['clsCODE']) && isset($_POST['Fee']) ){
	// write the query to check if this username and password exists in our database
	$u = $_POST['stu_ID'];
	$p = $_POST['clsCODE'];
	$c = $_POST['Fee'];

	
	$sql = " INSERT INTO Student_Class VALUES( '$u', '$p', '$c') ";
	
	//Execute the query 
	$result = mysqli_query($conn, $sql);
	
	//check if this insertion is happening in the database
	if(mysqli_affected_rows($conn)){
	
		//echo "Inserted Successfully";
		header("Location: showmycourse.php");
		
	}
	else{
		//echo "Insertion Failed";
		header("Location: add_course.php");
	}

	
}


?>