<?php
session_start();
include('dbconnect.php');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title><?php echo $_SESSION['student_name'] ?>'s Courses</title>
    
    <style>
      body {
        background-color: #fFEFD5;
        font-family: Arial, sans-serif;
        text-align: center;
      }
      
      h2 {
        color: #556b2f;
        font-size: 60px;
        margin-top: 50px;
      }
      
      p {
        color: #556b2f;
        font-size: 24px;
        margin-bottom: 50px;
      }
      
      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: inline-block;
      }
      
      li {
        display: inline-block;
        margin-right: 20px;
      }
      
      a {
        display: inline-block;
        background-color: #556b2f;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        transition: all 0.2s ease;
      }
      
      a:hover {
        background-color: #ffefd5;
        color: #556b2f;
        border: 2px solid #556b2f;
      }
      
      table {
        margin: 0 auto;
        border-collapse: collapse;
        width: 80%;
      }

      th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
      }

      tr:hover {
        background-color: #f5f5f5;
      }

      .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div>
        <h2><?php echo $_SESSION['student_name'] ?>'s Courses</h2>
        <ul>
          <li><a href="student_home.php">Home</a></li>
          <li><a href="showmycourse.php">My Courses</a></li>
          <li><a href="showmygrades.php">Grades</a></li>
          <li><a href="logout.php">Logout</a></li>
          <br><br>
      <li><button><a href="add_course.php">Enroll into a Course</a></button></li>
        </ul>
        <br><br>
	
	<section id = "section1">
		<div class="title"> Add a New Course  </div><br/><br/>
		
		<form action="insert_course.php" class="form_design" method="post">
			Student ID: <input type="text" name="stu_ID"> <br/><br/>
			Course Code: <input type="text" name="clsCODE"> <br/> <br/>
			Fee: <input type="text" name="Fee"> <br/><br/>
			<br/><br/><br/>
			<input type="submit" value="Add to Database">
		</form>
	</section>

	
	<!----- Footer ----->
	<section id="footer"> 
	
	</section>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/wow.min.js"></script>
  </body> 
</html>