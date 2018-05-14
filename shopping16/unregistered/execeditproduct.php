<?php
//include config
require_once('includes/config.php');

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: admin/login.php'); }?>
	
<?php
	include('db.php');
	$prodid = $_POST['prodid'];
	$pname=$_POST['pname'];
	$desc=$_POST['desc'];
	$price=$_POST['price'];
	$cat=$_POST['cat'];
	$laki=$_POST['laki'];/*galing dun sa editproductdetails*/

	mysql_query("UPDATE products SET Product='$pname', Description='$desc', Price='$price', Category='$cat', sizes='$laki' WHERE ID='$prodid'"); /*pangalan ng column and variable name*/
	header("location: admin.php");
?>