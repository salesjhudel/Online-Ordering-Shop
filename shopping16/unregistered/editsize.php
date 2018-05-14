
<?php
	include('db.php');
	$prodid = $_POST['prodid'];
	$pname=$_POST['pname'];
	$desc=$_POST['desc'];
	$price=$_POST['price'];
	$cat=$_POST['cat'];
	$laki=$_POST['laki'];/*galing dun sa editproductdetails*/

	mysql_query("UPDATE products SET sizes='$laki' WHERE ID='$prodid'"); /*pangalan ng column and variable name*/
	header("location: SAMPLE.php");
?>