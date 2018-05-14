
<?php include('include/home/header3.php'); ?>

<style>
body {
		background-color:#5397D1;
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}

#contents {
	min-height: 510px;
	width: 0px;
	margin: 0 auto;
	padding: px 40px;
	font-family:Arial;

}

</style>>

<?php
ob_start();
session_start();


$user_id = $_SESSION['user_id'];

?>

<?php


if(isset($_POST['login-btn'])){
  if($_POST['username']!="" && $_POST['password']!=""){
	
									  
			
			
    $username = strtolower($_POST['username']);
    include "connect.php";
    $query = mysql_query("SELECT id, password
                          FROM users
                          WHERE username='$username'
                          ");

						
    mysql_close($conn);
	
    if(mysql_num_rows($query)>=1){
      $password = md5($_POST['password'] );
      $row = mysql_fetch_assoc($query);
	  
      if($password==md5($row['password']) || $password==$row['password']){
		  				  
					
		  
		  
		header('Location:../index.php');  
        $_SESSION['user_id']=$row['id'];
        
        exit;
		


		
      }
      else{
        $error_msg = "Incorrect username or password";
      }
    }
    else{
      $error_msg = "Incorrect username or password";
    }
	

  
		
  }
    else{
      $error_msg = "All fields must have input";
    }
  
  
  
}


?>


  
  
<html>
<head>


	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="css2/loginwsstyle.css" type="text/css">
	<center>
 

	<title></title>

</head>

<body style="background-color:#DBDBDB;">


<div id="contents" style="margin-bottom:0px; margin-right;0px; width:1200px; font-size:0px; ">
		<?php
  if($user_id){
    include "dashboard.php";
    exit;
  }
  ?>

	
  	<div id="contents" style="margin-right;30px; width:720px; padding:35px 130px 0px 115px;  font-size:10px; background-color:white;">
	<div style="color:#5C5C5C; font-size:35px;"><b>Login</b></div>
	<h1> 
    <?php

    if($error_msg){
        echo "<div class='alert alert-danger' style='margin-bottom:10px; width:450px; font-size:15px'>".$error_msg."</div>";
    }
    ?>
</h1>	

  <h3 style="font-size:50px; font-size:Arial;"></h3>
  <br>
  <br>
  <form role="form" action="index.php" method="POST" style="width:300px; height:2px; font-size:20px;">
  
    <div class="input-group" style="margin-bottom:10px; width:200px;">
      <!-- <span class="input-group-addon">@</span> -->
      <input type="text" class="form-control" placeholder="Username" name="username">
    </div>
	
	<br>
	<input type="password" style="margin-bottom:10px; width:200px;" class="form-control" placeholder="Password" name="password">

	
	<br>
	   <div class="btn-group">
	   
		<button type="submit" style="margin-left:0px; margin-bottom:20px; width:200px; height:30px; font-size:15px;"  name="login-btn" value="login-submit">Log In</button> 
				
				<h6 style="font-size:16px;"><a style="margin-top:0px; text-decoration:none; color:#4186D5;"href="fpass.html" style="width:150px; padding-top:20px; text-decoration:none;">Forgot password?</b></a></h6>
		
		
		
		
	
		<h6 style="font-size:16px;"><font color="#5C5C5C"><b>Doesn't have an account?   <b><a style="text-decoration:none; color:#2164D3;"href="register.php" style="width:150px; padding-top:20px; text-decoration:none;">Register</b></a></h6>
	</div>
	
      
  </form>
	</div>
		</div>
</div>
<br><br><br><br><br>
	
</body>
</html>

<?php include('include/home/footer.php'); ?>
