<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Student Login</title>
    <style>

     

      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #ffefd5; 
      }
      form {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 100px;
        border: 10px solid #fff;
        border-radius: 100px;
        background-color: #fff; 
        
      }
      h1 {
        font-size: 30px;
        margin-bottom: 40px;
        color: #666633; 
      }

      input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 30px;
        border: left;
        border-color: #666633;
        border-radius: 100px;
        background-color: #f9f9f9;
        font-size: 14px; 
      
      }
      input[type="submit"] {
        width: 30%;
        padding: 10px;
        border: left;
        border-radius: 100px;
        background-color: #666633;
        color: #ffffff;
        font-size: 16px;
        cursor: pointer;  
      }
      input[type="submit"]:hover {
        background-color: #666666;
      }

    </style>
  </head>

  <body>
		
	<form action="login.php" class="form_design" method="post">
  <h2>ADMIN LOGIN</h2>
			Username: <input type="text" name="fname"> <br/>
			Password: <input type="password" name="pass"> <br/> <br/>
			<input type="submit" value="Login">
		</form>

  </body>
</html>