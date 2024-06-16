<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title><?php echo $_SESSION['student_name'] ?>'s Home</title>
    
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
    <h1>HOGWARTS HIGH SCHOOL</h1>
    <p><?php echo "Welcome " . $_SESSION['student_name'] ?></p>
    <ul>
      <li><a href="student_home.php">Home page</a></li>
      <li><a href="showmycourse.php">my Courses</a></li>
      <li><a href="showmygrades.php">Grades</a></li>
      <li><a href="logout.php">Logout</a></li>
    </ul><br><br>
    <br><br>
    <p>ABOUT US</p>
    <p>
  <h3>We consider every child as unique and so we maintain inclusive learning-teaching environment <br> at every step in our great set-up.Our school has successfully achieved the highest rank this year.<br>It has been made possible through our extensive and effective care stretched out to every <br>individual student. Our students conglomerate here from multifarious backgrounds; various strata <br>of the society. They enter the threshold of our strong and fortified home of learning <br> and come out bearing an all-round personality. </h3>
</p>
<div class="photo-container">
  <img src="img/pic.jpg" alt="photo 1">
  <img src="img/pic2.jpg" alt="photo 2">
  <img src="img/pic3.jpg" alt="photo 3">
</div>

<br><br><br><br>


</body>
</html> 