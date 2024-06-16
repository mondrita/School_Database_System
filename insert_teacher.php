<?php
// first of all, we need to connect to the database
require_once('DBconnect.php');

// we need to check if the input in the form textfields are not empty
if(isset($_POST['Teacher_ID'], $_POST['Teacher_Name'], $_POST['Teacher_Email'], $_POST['Teacher_DOB'], $_POST['Teacher_Address'], $_POST['Super_Admin'], $_POST['Hired_Date'])){

	// prepare and bind the parameters to prevent SQL injection
	$stmt = $conn->prepare("INSERT INTO Teacher (Teacher_ID, Teacher_Name, Teacher_Email, Teacher_DOB, Teacher_Address, Super_Admin, Hired_Date) VALUES (?, ?, ?, ?, ?, ?, ?)");
	$stmt->bind_param("sssssss", $u, $p, $c, $a, $b, $d, $e);

	$u = $_POST['Teacher_ID'];
	$p = $_POST['Teacher_Name'];
	$c = $_POST['Teacher_Email'];
	$a = $_POST['Teacher_DOB'];
	$b = $_POST['Teacher_Address'];
	$d = $_POST['Super_Admin'];
	$e = $_POST['Hired_Date'];

	//Execute the query
	if ($stmt->execute()) {
		//insertion successful
		header("Location: show_teachers.php");
		exit();
	} else {
		//insertion failed
		header("Location: add_teacher.php");
		exit();
	}
}
?>