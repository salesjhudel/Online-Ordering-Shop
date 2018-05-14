

     <!DOCTYPE html>
<html>
<head>


	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="css2/style3s.css" type="text/css">
	
	<link rel="stylesheet" type="text/css" href="css/site_global.css?crc=443350757"/>
  <link rel="stylesheet" type="texts/css" href="css/login.css?crc=49370250" id="pagesheet"/>
  <style>
body {
	background-color:#DBDBDB;
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}
</style>
 
</head> 
 <br><br><br><br><br><br><br>
<title>Change Password</title>
<style>
input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 80%;
    background-color: #4CAF50;
    color: white;
    padding: 10px 10px 10px 10px;
    margin: 0px 0px;
	margin-right:200px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
	
}

input[type=submit]:hover {
    background-color: #45a049;
}
</style>
</head>

 
<body style="background-color:#DBDBDB;">
		
	<div style="background-color:#ABDEE9; float:right; width:500px; height:405px;">
		
		
				<div style=" font-size:17px; padding:40px; margin-top:105px; letter-spacing:0.2px; color:#808080;"><h6><b style="color:#4E4E4E;">Forgot your password?</b>
				<br>
				<br>
				
				<h1 color="black"><?php echo "$fullname"; ?></h1>
				
				You can change your password here. 
				Just type your new password and be sure it no one could guess it </h6></div>
	</div>
	
	
<div style = "background-color:white; padding:80px; font-famiy:Arial; height:405px;">
	<fieldset>
		<br>
		<legend>Change Password</legend>
	
	<?php 
	
		include "connect.php";
		$password = $row['password'];
		
		
		if(isset($_POST['re_password']))
		{
		$id=$user_id;	
		
		
		$old_pass=$password;

		$new_pass=md5($_POST['new_pass']);
		$re_pass=md5($_POST['re_pass']);
		
		$chg_pwd=mysql_query("select password from users where id='$user_id'");

		$chg_pwd1=mysql_fetch_array($chg_pwd);
		
		$data_pwd=$chg_pwd1['password'];
		
		
		
		
		if($data_pwd==$old_pass){
		if($new_pass==$re_pass){
			$update_pwd=mysql_query("update users set password='$new_pass' where id='$user_id'");
			echo "<script>alert('Update Sucessfully'); window.location='index.php'</script>";
		}
		else{
			echo "<script>alert('Your new and Retype Password is not match'); window.location='index.php'</script>";
		}
		}
		else
		{
		echo "<script>alert('Your old password is wrong'); window.location='cpass.php'</script>";
		}
		}
	?>

	<div style="width:350px;">
	<form method="post">
	
				
		
					 <input type="password" name="new_pass" placeholder="New Password..." value=""  required />
					<br>
					<br>
					
					<input type="password" name="re_pass" placeholder="Retype New Password..." value="" required />
						</div>
			<div style = "color:black; font-size:15px; padding:20px; width:220px;">
			<input type="submit" value="Reset Password" name="re_password" />
				</div>

	<div style="margin-top:10px;"><a style="color:#5E91A3;  font-size:20px; text-decoration:none;"; href="." style="width:300px; width:200px;">Go Back</a></div>
	</form>

	
	</div>
	</fieldset>
</body>
</html>

