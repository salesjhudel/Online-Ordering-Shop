

<?php include('include/home/header.php'); ?>


<style>
body {
	
	font-family: Helvetica, Arial, sans-serif;
	margin: 0;
}

input[type=submit]{
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}

input[type=submit]{
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}


#submit2{
    background-color: white;
    border: none;
    color: #5B5B5B;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}


.mySlides {display:none;}

.slider {
 

  position: relative;
}
.slide1,.slide2,.slide3,.slide4,.slide5 {
  position: absolute;
  width: 100%;
  height: 100%;
}
.slide1 {
  background: url(bg5.jpg)no-repeat center;
      background-size: cover;
    animation:fade 8s infinite;
-webkit-animation:fade 8s infinite;

} 
.slide2 {
  background: url(logo.jpg)no-repeat center;
      background-size: cover;
    animation:fade2 8s infinite;
-webkit-animation:fade2 8s infinite;
}
.slide3 {
    background: url(bg4.jpg)no-repeat center;
      background-size: cover;
    animation:fade3 8s infinite;
-webkit-animation:fade3 8s infinite;
}




@keyframes fade
{
  0%   {opacity:1}
  33.333% { opacity: 0}
  66.666% { opacity: 0}
  100% { opacity: 1}
}
@keyframes fade2
{
  0%   {opacity:0}
  33.333% { opacity: 1}
  66.666% { opacity: 0 }
  100% { opacity: 0}
}
@keyframes fade3
{
  0%   {opacity:0}
  33.333% { opacity: 0}
  66.666% { opacity: 1}
  100% { opacity: 0}
}




</style>
<body style="background-color:#DBDBDB;">




    	<section>
		
		<div style="background-color:#DBDBDB; margin:0px 100px; "> 
		
			<div style="margin: 100px 20px 20px 275px;">
			
			
			
			


	
			
			
<div class='slider' style="width:1200px; height:550px;">
  <div class='slide1'></div>
 
  <div class='slide2'></div>
  <div class='slide3'></div>
  
</div>
			
			
			
			
				
				<br>
				
				<br>
					
					<div style = "margin:0px 50px 0px 0px; background-color:#569EE7; width:1200px; height:400px;">
					
						
							<b><div style="color:white; font-family:Calibri; font-size:50px; padding-top:20px; float:right; padding:10px 50px;">
							<br>
							Accessible</b>	
							<br>
							<h3>
							Easy to navigate and <br> user friendly
							<br><br>
							Just one Click away and <br>you're ready to go !</h3>
									</div>
									
									

										<b><div style="background-color:white; width:800px; height:400px; color:#656565; font-family:Calibri; font-size:50px; padding:8px 20px 0px 30px;"><br>Unique Shirts</b> 
										
										<br>
										<h3 style="letter-spacing:0.2px; ">Unique shirts offers you a
										one of a kind products in an affordable prices.
										<br><br>
										Come and create an account to buy !
										<br><br>
										<form action="../timeline/index.php">
										<input type="submit" value="Create an account">
										</form>
										</h3>
									
											</div>	
										
									
					
							
					</div>
					<br>
					<br>
					
					<div style = "margin:0px 50px 200px 0px; background-color:white; width:1200px; height:530px;">
						
							<img src="bg7.jpg" width="1200" height="700"></img>

					</div>
					<br>
					<div style = "margin:0px 50px 90px 0px; background-color:white; width:1200px; height:530px;">
						
							<img src="bg8.jpg" width="1200" height="560"></img>

					</div>
					
					
					
					
				<div style = "margin:0px 0px 110px 0px; background-color:#569EE7; width:1200px; height:400px;">
					
						
							<b><div style="color:white; font-family:Calibri; font-size:50px; padding-top:2px; float:right; padding:30px 10px;">
							
						
							
							<br>Have any problems?</b> 
										
										<br>
										<h3 style="letter-spacing:0.2px; ">We bring Unique closer to you 
										for just clicking the contact us,you can 
								
										<br><br>
										 instantly contact us and tell your concerns
										<br><br>
										<form action="contact2.php">
										<input type="submit" id="submit2" value="Contact us">
										</form>
										</h3>
									</div>
									
										<b><div style="background-color:white; width:400px; height:400px; color:#656565; font-family:Calibri; font-size:50px; padding:8px 20px 0px 30px;"><br>
							Contact us</b>	
							<br>
							<h3>
							We're ready to help you<br> 
							<br><br>
							Just go to contact page <br>and you're done</h3>
									</div>
									
											</div>	
										
									
							
					</div>
					
			</div>
			
		</div>

</section>
</body>
<?php include('include/home/footer.php'); ?>