<?php include('include/home/header.php'); ?>
	 
	 <style>
body {
	background-color:#5397D1;
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}
</style>
<div style="color:white; font-size:30px; margin:110px 0px 0px 720px">Have a question? We are happy to help!</div>
<div style="background-color:#DBDBDB; height:550px;">
<div style="background-color:#5397D1; height:99px">
	 
	 <div id="contact-page" class="container" style="margin:80px 0px 0px 390px; background-color:white;">
	
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    <center>			   
					    				    				
					
				</div>			 		
			</div>    	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form"><br>
						
	    				<div class="status alert alert-success" style="display: none"></div>
						
				    	<form id="main-contact-form" class="contact-form row" name="contactform" method="post" action="send_form_email.php">
						<br><br><br>
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required placeholder="Name">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required placeholder="Email">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="telephone" class="form-control" required placeholder="Telephone number">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="comments" id="message" required class="form-control" rows="8" placeholder="Your Message Here"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">

	    			<div class="contact-info" style="background-color:#364B65; color:white; width:380px; height:500px; margin-top:0px;"><br>
						<br><br><br>
	    				<address><b>
							<font color="white">
	    					<p><font color="white">Unique Shirts</p><br>
							<p><font color="white">Mobile: 09085301584 </p><br>
							<p><font color="white">F.Blumentritt street corner Tayug Street Barangay san perfecto San 
Juan del Monte</p><br>
							<p><font color="white">Email: 21uniqueshop@gmail.com </p>
							</font>
	    				</address></b>
						
						<br><br><br><br><br><br>
	    				<div class="social-networks"><br>
							
							
							<ul>
								<li>
									<a href="https://web.facebook.com/uniqueshirts.sanjuanmanila/"><i class="fa fa-facebook"></i></a>
								</li>
								
								<li>
									<a href="https://mail.google.com/mail/u/1/#inbox"><i class="fa fa-google-plus"></i></a>
								</li>
							
							</ul>
	    				</div>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	</div>
</div>
<?php include('include/home/footer.php'); ?>