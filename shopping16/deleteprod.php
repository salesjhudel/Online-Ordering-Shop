<?php
//include config
require_once('includes/config.php');

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: admin/login.php'); }?>
	
<?php

// This is a sample code in case you wish to check the username from a mysql db table
include('db.php');
if($_GET['id'])
{
$id=$_GET['id'];
 $sql = "delete from products where id='$id'";
 mysql_query( $sql);
}

?>