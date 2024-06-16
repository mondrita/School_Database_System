<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Class INFORMATION</title>
    
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
    <h1>COURSES</h1>
    
    <ul>
      <li><a href="home.php">Home page</a></li>
      <li><a href="show_students.php">Students</a></li>
      <li><a href="show_teachers.php">Teachers</a></li>
      <li><a href="show_courses.php">Courses</a></li>
    </ul><br><br><br>
    <p>CLASS INFORMATION<p>
    <section id="section1">
      <div style="margin-left:10%; margin-right:10%; margin-top:50px; margin-bottom:50px;text-align:center;background:#bbc3ab;">
        <table>
          <thead>
            <tr>
              <th>Class Code</th>
              <th>Class Name</th>
              <th>Maximum Capacity</th>
              <th>Room</th>
              <th>Day</th>
              <th>Time</th>
              <th>Subject</th>
            </tr>
          </thead>
          <tbody>
          <?php 
  require_once("DBconnect.php");
  $sql = "SELECT class.Class_Code, class.Class_Name, Class.Maximum_Capacity, class.Room_Number, class.Day,class.Time, Subject.Subject_Name  AS Subjectt
  FROM class
  INNER JOIN Subject ON class.Subject = Subject.Subject_ID";
  $result = mysqli_query($conn, $sql);
  if(mysqli_num_rows($result) > 0){
    //here we will print every row that is returned by our query $sql
    while($row = mysqli_fetch_array($result)){
      //here we have to write some HTML code, so we will close php tag
?>
      <tr> 
        <td><?php echo $row['Class_Code']; ?></td>
        <td><?php echo $row['Class_Name']; ?></td>
        <td><?php echo $row['Maximum_Capacity']; ?></td>
        <td><?php echo $row['Room_Number']; ?></td>
        <td><?php echo $row['Day']; ?></td>
        <td><?php echo $row['Time']; ?></td>
        <td><?php echo $row['Subjectt']; ?></td>
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