
<html>
<div style="margin:100px 110px 0px 0px;">

<div style="width:940px; background-color:#4E4E4E; padding:20px 0px; margin-left:150px; ">

<div style="margin:0px 0px">
<?php


function getTime($t_time){
	$pt = time() - $t_time;
	if ($pt>=86400)
		$p = date("F j, Y",$t_time);
	elseif ($pt>=3600)
		$p = (floor($pt/3600))."h";
	elseif ($pt>=60)
		$p = (floor($pt/60))."m";
	else
		$p = $pt."s";
	return $p;
}
	if($user_id){
		include "connect.php";
		$query = mysql_query("SELECT username, followers, following, tweets, contactnumber,email, fullname
                              FROM users
                              WHERE id='$user_id'
                             ");
		mysql_close($conn);
		$row = mysql_fetch_assoc($query);
		$username = $row['username'];
		$tweets = $row['tweets'];
		$followers = $row['followers'];
		$following = $row['following'];
		
		$contactnumber = $row['contactnumber'];
		$email = $row['email'];
		
		$fullname = $row['fullname'];
		
	/*	for the informations of the user */
	
		
		echo "
		
		
		<table>
			<tr>
				<td>
					<img src='./default.jpg' style='width:70px;  border-radius:50% 'alt='display picture'/>
				</td>
				<td valign='top' style='padding-left:8px;'>
					<b><h6 style='font-size:20px; margin-bottom:0px;'><a style='text-decoration:none; color:white' href=''>$fullname</a></h6></b>
					<b><h6 style='font-size:20px; margin-bottom:20px;'><a style='text-decoration:none; color:white; font-size:15px;' href=''>@$username</a></h6></b>
						</td>
						</tr>
		</table>
			
					
	
		";
		
		
		
?>

</div>

</div>

<div style="padding:0px 150px">

<div style="float:left; width:500px; height:228px; background-color:white;  margin-right:0px; margin-top:0px;  position:fixed; ">
		
</div>

<div style="float:left; width:500px; height:114px; background-color:#7AC2E3; padding:20px; margin-right:20px; margin-top:0px;  position:fixed; ">

		<div style=" margin-right:170px; text-decoration:none; " >
	
			<a style='text-decoration:none; float:left; font-size:20px; font-weight:bold;  color:white; padding:20px 150px;'>Settings</a>
				<br><br><br><br>
					<div style ="padding:50px; margin-right:0px; margin-top:70px;">
						<a href='cpass.php' style='text-decoration:none; float:right; font-size:17px;  color:black;'>Change Password</a>
						<a href='logout.php' style='float:right; text-decoration:none;  font-size:17px;  color:black;'>Log out</a>
				</div>
		</div>
	
		

</div>

</div>

<div style="float:left; background-color:lightblue;  height:120px;"></div>


		<div style=" float:right; width:470px; margin-left:11110px; background-color:#4E4E4E; padding:20px; margin-top:0px;">
			<b><h4><font color="white">Your contact number</font></b></h4> <br>
				<b><h5><font color="white"><?php echo $contactnumber ; ?></font></h5></b>
		</div>
	
<div style="float:right; width:450px; margin-left:0px; background-color:white; padding:20px; margin-top:0px;">
	<b><h4><font color="black">Username</font></b></h4> <br>
		<h6><b><h5><font color="black"><?php echo $email ; ?></font></h5></b></h6>
<?php		

		mysql_close($conn);
	}

?>
</div>

</div>
</html>

