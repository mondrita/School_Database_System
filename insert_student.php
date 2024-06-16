
<?php
// first of all, we need to connect to the database
require_once('DBconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['Student_ID']) && isset($_POST['Student_Name']) && isset($_POST['Student_Email']) && isset($_POST['Student_DOB']) && isset($_POST['Student_Address']) && isset($_POST['Student_Phone']) && isset($_POST['enrolled_by']) && isset($_POST['enrolled_date'])){
	// write the query to check if this username and password exists in our database
	$u = $_POST['Student_ID'];
	$p = $_POST['Student_Name'];
	$c = $_POST['Student_Email'];
	$a = $_POST['Student_DOB'];
	$b = $_POST['Student_Address'];
	$d = $_POST['Student_Phone'];
	$e = $_POST['enrolled_by'];
	$f = $_POST['enrolled_date'];
	
	$sql = " INSERT INTO student VALUES( '$u', '$p', '$c', '$a','$b','$d', '$e', '$f') ";
	
	//Execute the query 
	$result = mysqli_query($conn, $sql);
	
	//check if this insertion is happening in the database
	if(mysqli_affected_rows($conn)){
	
		//echo "Inserted Successfully";
		header("Location: show_students.php");
		
	}
	else{
		//echo "Insertion Failed";
		header("Location: add_student.php");
	}

	
}


?>