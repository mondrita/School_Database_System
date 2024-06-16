<!DOCTYPE html>
<html>
<head>
  <title>HOGWARTS</title>
  <style>
    body {

      
      font-family: 'Calibri', sans-serif;
      background-color: #ffefd5;
      margin: 100;
      padding: 100;
    }
    h1 {
      font-size: 3em;
      color: #000;
      text-align: center;
      margin-top: 50px;
      margin-bottom: 50px;
    }
    h2 {
      font-size: 2em;
      color: #000;
      margin-top: 30px;
      margin-bottom: 30px;
      text-align: center;
    }
    .container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
    }
    .card {
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
      margin: 10px;
      padding: 20px;
      text-align: center;
      transition: transform 0.3s ease-in-out;
      width: 300px;
    }
    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
    }
    .card h3 {
      color: #000;
      font-size: 1.5em;
      margin-top: 20px;
      margin-bottom: 20px;
    }
    .card p {
      color: #000;
      font-size: 1.2em;
      margin-bottom: 20px;
    }
    .card a {
      background-color: #556b2f;
      border-radius: 5px;
      color: #fff;
      display: block;
      font-size: 1.2em;
      font-weight: bold;
      padding: 10px;
      text-decoration: none;
      transition: background-color 0.3s ease-in-out;
    }
    .card a:hover {
      background-color: #666;
    }
  </style>
</head>
<body>
<?php
  // Check if an error message was passed in the URL
  if (isset($_GET['error_message'])) {
    // Display the error message on the page
    echo '<p style="color: red; font-size: 16px; text-align: center;">' . $_GET['error_message'] . '</p>';
  }
?>
  <h1>Welcome to Hogwarts</h1>

  <h2>Login</h2>

  <div class="container">
    <div class="card">
      <h3>Admin Login</h3>
      <p>Access the administrative dashboard</p>
      <a href="admin_login.php">Login</a>
    </div>

    <div class="card">
        <h3>Student Login</h3>
      <p>Access your student dashboard</p>
      <a href="student_login.php">Login</a>
    </div>
  </div>
</body>
</html>