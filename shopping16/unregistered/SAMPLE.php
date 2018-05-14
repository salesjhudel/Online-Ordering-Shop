
	<?php include('include/home/header.php'); ?>
<style type="text/css">
body {
	
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}

<!--
.ed{
border-style:solid;
border-width:thin;
border-color:#00CCFF;
padding:5px;
margin-bottom: 4px;
}
#button1{
text-align:center;
font-family:Arial, Helvetica, sans-serif;
border-style:solid;
border-width:thin;
border-color:#5CE581;
padding:5px 10px;
background-color:#5CE581;
height: 34px;
}
-->
</style>



<?php
	include('db.php');
	$id=$_GET['id'];
	$result = mysql_query("SELECT * FROM products where ID='$id'");
		while($row = mysql_fetch_array($result))
			{
				$pname=$row['Product'];
				$desc=$row['Description'];
				$price=$row['Price'];	
				$cat=$row['Category'];
				$laki=$row['sizes'];/*pangalan ng column sa products*/
				
			}
?>
<body style="background-color:#DBDBDB;">







	<div style = "margin:0px 0px 110px 360px; background-color:#569EE7; width:1200px; height:400px;">
					
						
							<b><div style="color:white; font-family:Calibri; font-size:50px; padding-top:2px; float:right; padding:30px 140px;">
							
						
							
							<br>Wanna change the t-shirt size?</b> 
										
										<br>
										<h3 style="letter-spacing:0.2px; ">Just go here and click your desire size
								
										<br><br>
										 and you are done !
										<br><br>
										
										</h3>
									</div>
								
										<b><div style="margin:110px 0px 0px 0px; background-color:white; width:280px; height:400px; color:#656565; font-family:Calibri; font-size:15px; padding:75px 20px 0px 30px;">
										<h2>Change it here</h2>
										<br><br><br>
										<form action="editsize.php" method="post">

	<input type="hidden" name="prodid" value="<?php echo $id=$_GET['id'] ?>">

	<!--variable name ung laki sa taas-->
        <select name="laki" class="ed">
            <?php
                include('db.php');
                $r = mysql_query("select * from sizes"); /*pangalan ng table*/
                while($row = mysql_fetch_array($r)){
                    $selected = ($laki == $row['mgalaki']) ? " selected='selected'" : ""; /*==row (yung column name sa table ng sizes*/
                     echo '<option '.$selected.'>'.$row['mgalaki'].'</option>'; /*==row (yung column name sa table ng sizes*/
                }
            ?>
              </select>
			  <br>
			  <br>
	<input type="submit" value="Change size" id="button1">

						
</form>
									</div>
									
											</div>	

</body>