<!-- Modal -->
<div class="modal fade" id="checkout_modal" role="dialog">
    <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-shopping-cart text-success fa-lg"></i> Check Out<small class='text-primary'> Billing Information</small></h4>
      </div>
      <div class="modal-body">
        <form action="cart/data.php?q=checkout"  method="POST">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="fname" class="form-control" placeholder="(ex. John)" value="<?php echo "$username"; ?>" required >
            </div>
            <div class="form-group">
                <label>Fullname</label>
                <input type="text" name="lname" class="form-control" placeholder="(ex. Doe)" value="<?php echo "$fullname"; ?>" required> 
            </div>
            <div class="form-group">
                <label>Contact #</label>
               
				<input type="text" type="tel" id="phonenum" class="form-control" placeholder="(format: xxxx-xxx-xxxx):" name="contactnumber" pattern="^\d{4}-\d{3}-\d{4}$" required >
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="(ex. info@yourdomain.com)" class="form-control" value="<?php echo "$email"; ?>" >
            </div>
            <div class="form-group">
                <label>Complete Address</label>
                <input type="text" name="address" class="form-control" placeholder="(ex. 2/F San Jose St., Brgy. Banga, Syudad City)" required>
            </div>
			
			<!-- dito yung part ng bagong amount-->
			<?php $amount = $_SESSION['totalprice'];?>
			<div class="form-group">
                <label>Amount ( Check the amount )</label>
                <input type="text" name="bagongamount" class="form-control" placeholder="" value=<?php echo number_format($total,2) ?> readonly>
            </div>
			
			
            <div class="alert alert-info">
                Mode of Payment: <strong>Pay on Delivery</strong>
            </div>
            <div class="alert alert-warning">
                *** Please wait for our call/text for confirmation. Thank You! ***
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Submit</button>
          </form>
      </div>
    </div>
  </div>
</div>