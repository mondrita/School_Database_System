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
        <h2><?php echo $_SESSION['student_name'] ?>'s Grades</h2>
        <ul>
          <li><a href="student_home.php">Home</a></li>
          <li><a href="showmycourse.php">My Courses</a></li>
          <li><a href="showmygrades.php">Grades</a></li>
          <li><a href="logout.php">Logout</a></li>
        </ul>
        <br><br>
        <?php
          // Retrieve the student ID from the session
          $stu_id = $_SESSION['student_id'];

          // Construct the SQL query to retrieve the courses for the student
          $sql = "SELECT Clcode,Attained_Grade,Exam_Title,Exam_Date  FROM grade WHERE St_ID = $stu_id";

          // Execute the query and store the results in $result
          $result = mysqli_query($conn, $sql);

          // Display the courses for the student
          if(mysqli_num_rows($result) > 0){
            echo "<table>";
            echo "<tr><th>Course Code</th><th>Attained Grade</th><th>Exam Title</th><th>Exam Date</th></tr>";
            while($row = mysqli_fetch_assoc($result)){
              echo "<tr><td>".$row['Clcode']."</td><td>".$row['Attained_Grade']."</td><td>".$row['Exam_Title']."</td><td>".$row['Exam_Date']."</td></tr>";
            }
            echo "</table>";
          } else {
            echo "No grades found.";
          }

          // Close the database connection
          mysqli_close($conn);
        ?>
      </div>
    </div>