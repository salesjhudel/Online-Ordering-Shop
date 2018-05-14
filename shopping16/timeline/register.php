<?php
// error_reporting (E_All^E_Notice);
session_start();
if(isset($_POST['btn'])){
$user_id = $_SESSION['user_id'];
}
?>

<?php include('include/home/header3.php'); ?>
<style>
body {
	background-color:#5397D1;
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}

input[type=submit]{
    background-color: white;
    border: none;
    color:#3C3C3C;
    padding: 13px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
	font-size:19px;
}
</style>


<body style="background-color:#DBDBDB;">
	


<div style="margin:50px 0px 220px 430px ; height:620px;width:600px; font-size:15px; font-family:arial; color:#4E4D4D;  background-color:#E07575;"> 
	<div style="float:left; padding:180px 0px 120px 80px; font-size:30px;"><b>Already Registered?</b>
	<br>
	<h3>Click here to login<h3>
	<form action="index.php">
	<input type="submit" value="Login" href="index.php">
	</form>
	</div>
	<div id="contents" style="margin:50px 0px 220px 570px ;  height:620px;width:500px; font-size:15px; font-family:arial; color:#4E4D4D; padding:20px; background-color:white;"> 


	<form action="register.php" method="POST" role="form" style="width:300px; ">
    <h3></h3>
    <h4 style="font-size:35px; width:550px; color:#5C5C5C; margin-bottom:20px; margin-left:157px;"><strong>Register</strong></h4>
	
	<?php

	$email = $_POST['email'];
	$fullname = $_POST['fullname'];
	$contactnumber = $_POST['contactnumber'];
	
	$language=$_POST['language'];
	$gender=$_POST['gender'];
	
	

if(isset($_POST['btn'])){
	
	

  if($_POST['username']!="" && $_POST['email']!="" && $_POST['fullname']!="" && $_POST['contactnumber']!="" && $_POST['password']!="" && $_POST['confirm-password']!="" && $_POST['confirm-password']!=""){
	
	  
    if($_POST['password']==$_POST['confirm-password']){
		
	if(strlen($_POST['username'])>3){
	if(strlen($_POST['password'])>3){
		//if($_POST['contactnumber']!>11 ){
			
			
      include 'connect.php';
      $username = strtolower($_POST['username']);
      $query = mysql_query("SELECT username
                            FROM users
                            WHERE username='$username'
                            ");
      mysql_close($conn);
      if(!(mysql_num_rows($query)>=1)){
          $password = md5($_POST['password']);
          include 'connect.php';
          mysql_query("INSERT INTO users(username,email,fullname,contactnumber,password,language,gender)
                       VALUES ('$username','$email','$fullname','$contactnumber','$password','$language','$gender')
                      ");
          mysql_close($conn);
		  echo "<br>";
		  echo "<br>";
		  echo "<br>";
		  
	 echo "<script>alert('Registered Successfully'); window.location='index.php'</script>";
	 /*
          echo "<div style='margin-left:90px; width:250px;' class='alert alert-success'>Your account has been created!</div>";
	
          echo "<a style='text-decoration:none;' href='.' style='width:300px; font-size:15px; font-family:arial ' >Go Home</a>";
		  
	*/
          echo "</form>";
          echo "<br>";
     
          echo "</body>";
          echo "</html>";
          exit;

      }
      else{
        $error_msg="<div style='font-weight:bold;  '> Username already exists please try again </div>" ;
      }

	/*
	
	  }
	 else{
		 $error_msg="<div style='font-weight:bold; '>Wrong input of number</div>";
	
	}
	
	*/
	
	
	
	  }
	 else{
		 $error_msg="<div style='font-weight:bold; '> password should be greater than 3 </div>";
	
	}
	
	
		
  }
	 else{
		 $error_msg="<div style='font-weight:bold; '> username should be greater than 3 </div>";
	
	}
	
	 
    }
    else{
      $error_msg="<div style='font-weight:bold; '> Passwords did not match </div>";
	
    }
	

	
	

  }
  else{
      $error_msg="<div style='font-weight:bold; '>  All fields must be filled out </div>";
  }
  
  
  
}
?>
	<div style ="font-size:10px; margin-left:110px;">
		<div class="input-group" style="margin-bottom:10px; ">
		<span class="input-group-addon" >@</span>
		<input type="text" class="form-control" style="font-size:17px; width:200px; color:#4E4D4D;" placeholder="Username" name="username" pattern="[a-zA-Z0-9\s]+" title="no special characters" value="<?php $username = ""; echo $username; ?>">

		</div>

		
				<input type="text" class="form-control" style="font-size:17px; width:240px;" placeholder="Fullname" name="fullname" pattern="[a-zA-Z0-9\s]+" title="no special characters"><br>
				
				 <div style="font-size:17px; color:#5C5C5C">(format: xxxx-xxx-xxxx): </div>
				<input style="font-size:17px; width:240px;" type="tel" id="phonenum" class="form-control" placeholder="Contact number" name="contactnumber" pattern="^\d{4}-\d{3}-\d{4}$" required ><br>
	
				<input type="text" class="form-control" style="font-size:17px; width:240px;" placeholder="Email" name="email" ><br>
	

	
	
    <input type="password" style="margin-bottom:10px; font-size:17px; width:240px;" class="form-control" placeholder="Password" name="password" >
    <input type="password" style="margin-bottom:10px; font-size:17px; width:240px;" class="form-control" placeholder="Confirm Password" name="confirm-password" > 
	
	<select style="height:30px; width:240px; font-size:17px;" name="language" required >
		<option value=""></option>
		<option value="English">English</option>
		<option value="Filipino">Filipino</option>
		
	</select>
	
	
	<div style="font-size:18px; margin-top:10px;">
		<input  type="radio" name="gender" required value="male" > Male
		<input style="margin-left:48px;" type="radio" name="gender" value="female"> Female<br>
	</div>
	
	
	</div>

    <?php
	
    if($error_msg){
        echo "<div style ='width:240px; margin-left:110px;' class='alert alert-danger '>".$error_msg."</div>";
    }
    ?>
	 <div class="btn-group">
		<button type="submit" style="
	background-color: #DFDFDF; 
    border: none;
    color:#4E4D4D;
	margin-left:110px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px; width:240px; height:30px; font-size:15px; margin-bottom:5px;" name="btn" value="submit-register-form">Register</button>
		<br>
		
		<div style="margin-top:10px;"><a style="color:white;  font-size:20px; text-decoration:none;"; href="." style="width:300px; width:200px;"><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Go Back</a></div>
		</div>
  </form>
  <br>


  </div>
  
  </div>

</body>
</html>
