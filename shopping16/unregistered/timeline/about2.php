
<?php include('include/home/header3.php'); ?>

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
		  				  
					
		  
		  
		header('Location:../Test.php');  
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
	<link rel="stylesheet" href="css2/stywle3.css" type="text/css">
	<center>
 

	<title></title>

</head>

<body>

<div style="background-color:#F2F3F4;">
<div id="contents" style="margin-bottom:20px; margin-right;0px; width:1040px; font-size:0px;">
		<?php
  if($user_id){
    include "dashboard.php";
    exit;
  }
  ?>

	
  	<div id="contents" style="margin-left;0px; width:700px; padding:70px 90px 20px 130px;  font-size:10px; background-color:white;">
	<h1> 
    <?php

    if($error_msg){
        echo "<div class='alert alert-danger' style='margin-bottom:10px; width:450px; font-size:15px'>".$error_msg."</div>";
    }
    ?>
	</h1>
	
  <h3 style="font-size:40px; font-size:Arial;">Login</h3>
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
		
		
		
		
	
		<h6 style="font-size:16px;">Doesn't have an account?   <b><a style="text-decoration:none; color:#2164D3;"href="register.php" style="width:150px; padding-top:20px; text-decoration:none;">Register</b></a></h6>
	</div>
	
      
  </form>
	</div>
		</div>
		
		
		</div>
	
</body>
</html>

<?php include('include/home/footer.php'); ?>
