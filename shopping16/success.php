<?php include('include/home/header.php'); ?>
	
	<section>
		<div class="container">
			<div class="row">
				<?php include('include/home/sidebar.php'); ?>
				
                
				<div class="col-sm-9 padding-right">
					<div class="alert alert-success">
					   <h3 class="text-center"><i class="fa fa-check-circle fa-lg"></i> Your order has been submitted! Thank you for Shopping!</h3>
                    <?php
					include('cart/data.php');
					$id = $_GET['id'];
					if($id){
					include "db.php";
					$query = mysql_query("SELECT refcode
                              FROM dbgadget.order
                              WHERE id='$id'
                             ");
					mysql_close($conn);
					$row = mysql_fetch_assoc($query);
					
					$lname = md5($row['refcode']);
						
							
							echo $lname ; 
							
					}	?>
							
				
							
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	
	<?php include('include/home/footer.php'); ?>