<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
					
						<div style="background-color:white; width:265px; height:90px;">
						
							<b><div style="color:#808080; font-size:20px; padding:30px 55px;">CATEGORIES</div></b>
						</div>
	
						<br>
                        <div class="list-group">
                        <?php                            
                            $q = "Select * from category order by title asc";
                            $r = mysql_query($q);

                            if($r){
                                while($row = mysql_fetch_array($r)){
                                    echo '<a href="category2.php?filter='.$row['title'].'" class="list-group-item">'.$row['title'].'</a>';
                                }
                            }
                        ?>                    
                        </div> 
                        <!--/category-products-->
                        </div>
                        </div>