
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
      <li><button><a href="add_student.php">Enroll New Student</a></button></li>
    </ul><br><br><br>
    <p>STUDENT INFORMATION<p>
    <section id="section1">
      <div style="margin-left:10%; margin-right:10%; margin-top:50px; margin-bottom:50px;text-align:center;background:#bbc3ab;">
        <table>
          <thead>
            <tr>
              <th>Student ID</th>
              <th>Student Name</th>
              <th>Email</th>
              <th>Date of Birth</th>
              <th>Courses Taken</th>
            </tr>
          </thead>
          <tbody>
          <?php 
  require_once("DBconnect.php");
  $sql = "SELECT student.Student_ID, student.Student_Name, student.Student_Email, student.Student_DOB, GROUP_CONCAT(Student_Class.ClsCODE SEPARATOR ', ') AS courses_taken
  FROM student
  INNER JOIN Student_Class ON student.Student_ID = Student_Class.stu_ID
  GROUP BY student.Student_ID;";
  $result = mysqli_query($conn, $sql);
  if(mysqli_num_rows($result) > 0){
    //here we will print every row that is returned by our query $sql
    while($row = mysqli_fetch_array($result)){
      //here we have to write some HTML code, so we will close php tag
?>
      <tr> 
        <td><?php echo $row['Student_ID']; ?></td>
        <td><?php echo $row['Student_Name']; ?></td>
        <td><?php echo $row['Student_Email']; ?></td>
        <td><?php echo $row['Student_DOB']; ?></td>
        <td><?php echo $row['courses_taken']; ?></td>
      </tr>
<?php 
    }					
  }
?>
      </tbody>
    </table>
  </div>
</section>

<style>
  /* add some padding to the cells to increase the distance between columns */
  td {
    padding: 20px;
  }
</style>