<?php
	include("db.php");
	
	$prodID = $_GET['prodid'];

	if(!empty($prodID)){
		$sqlSelectSpecProd = mysql_query("select * from products where id = '$prodID'") or die(mysql_error());
		$getProdInfo = mysql_fetch_array($sqlSelectSpecProd);
		$prodname= $getProdInfo["Product"];
		$prodcat = $getProdInfo["Category"];
		$prodprice = $getProdInfo["Price"];
		$proddesc = $getProdInfo["Description"];
		$prodimage = $getProdInfo["imgUrl"];
		$prodsize = $getProdInfo["sizes"];
				}
				
?>

<style>
body {
	background-color:#DBDBDB;
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}
</style>
<body style="background-color:#DBDBDB;">
<?php include('include/home/header.php'); ?>
	

	<section>
		<div class="container">
			<div class="row">
				<?php include('include/home/sidebar.php'); ?>
				
                
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
                            
						
							<img src="reservation/img/products/<?php echo $prodimage; ?>" />	
                                
							</div>
						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
							
							
							
							<!--PARA SA CHANGE SIZE-->
								<h2 class="product"><?php echo "$prodname " ; echo"(size: $prodsize )"; ?></h2>
								
								<!--/category and price-->
								<p>Category: <?php echo $prodcat; ?></p>
								<p>Price: ‎₱<span class="price"><?php echo $prodprice; ?></span></p>
								<!--/category and price-->
                                <br>
								
								
								<?php
								include('db.php');
								$result = mysql_query("SELECT * FROM products where id = '$prodID'");
								while($row = mysql_fetch_array($result))
								{
									echo '<tr class="record">';
									echo '<td><a rel="facebox" class="btn btn-default add-to-cart" href="SAMPLE.php?id='.$row['ID'].'"> change product size <i class="fa fa-edit fa-lg text-success"></i></a></td>';
									echo '</tr>';
								}
								?>
							<!--PARA SA CHANGE SIZE-->	
								
								
                                
								
								
								<!--/button and alert-->
                                <a class="btn btn-default add-to-cart" id="add-to-cart"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
                                <p class="info hidethis" style="color:red;"><strong>Product Added to Cart!</strong></p>
								<!--/button and alert-->
								
								<!--/other description-->
								<p><b><font color="Black">Description: </b><?php echo $proddesc; ?></p>
								<p><b><font color="Black">Contact Info:</b> 09213208291</p>
								<p><b><font color="Black">Email:</b> 21uniqueshop@gmail.com</p>
								<!--/other description-->
								
								
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
				</div>
			</div>
		</div>
		</div>
	</section>
	
</body>
	
	<?php include('include/home/footer.php'); ?>