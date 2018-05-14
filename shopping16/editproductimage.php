<?php
//include config
require_once('includes/config.php');

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: admin/login.php'); }?>
	
<?php
	include('db.php');
	$id=$_GET['id'];
	$result = mysql_query("SELECT * FROM products where ID='$id'");
		while($row = mysql_fetch_array($result))
			{
				$image=$row['imgUrl'];
			}
?>
<img src="reservation/img/products/<?php echo $image ?>">
<form action="editpicexec.php" method="post" enctype="multipart/form-data">
	<br>
	<input type="hidden" name="prodid" value="<?php echo $id=$_GET['id']; ?>">
	Select Image
	<br>
	<input type="file" name="image"><br>
	<input type="submit" value="Upload">
</form>