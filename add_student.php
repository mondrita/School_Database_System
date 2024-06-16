
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>STUDENT INFORMATION</title>
    
    <style>
      body {
        background-color: #fFEFD5;
        font-family: Arial, sans-serif;
        text-align: center;
      }
      
      h1 {
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

      img {
        width: 80%;
        height: auto;
        margin-bottom: 20px;
      }

      .photo-container {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
      }

    </style>
  </head>
  <body>
    <h1>STUDENTS</h1>
    
    <ul>
      <li><a href="home.php">Home page</a></li>
      <li><a href="show_students.php">Students</a></li>
      <li><a href="show_teachers.php">Teachers</a></li>
      <li><a href="show_courses.php">Courses</a></li>
      <br><br>
      <li><button><a href="insert_student.php">Add New Student</a></button></li>
    </ul><br><br><br>
	
	<section id = "section1">
		<div class="title"> Add a New Student  </div><br/><br/>
		
		<form action="insert_student.php" class="form_design" method="post">
			Student ID: <input type="text" name="Student_ID"> <br/><br/>
			Student Name: <input type="text" name="Student_Name"> <br/> <br/>
			Email: <input type="text" name="Student_Email"> <br/><br/>
			Date of Birth: <input type="text" name="Student_DOB"> <br/><br/>
      Student_Address: <input type="text" name="Student_Address"> <br/><br/>
      Student_Phone: <input type="text" name="Student_Phone"> <br/><br/>
      Admin ID: <input type="text" name="enrolled_by"> <br/><br/>
      enrollment date: <input type="text" name="enrolled_date"> <br/>
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