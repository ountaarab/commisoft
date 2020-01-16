<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>form_progress</h4>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Pro Id <?php echo form_error('pro_id') ?></td><td><input type="text" class="form-control" name="pro_id" id="pro_id" placeholder="Pro Id" value="<?php echo $pro_id; ?>" /></td></tr>
	    <tr><td width='200'>Pro Index Id <?php echo form_error('pro_index_id') ?></td><td><input type="text" class="form-control" name="pro_index_id" id="pro_index_id" placeholder="Pro Index Id" value="<?php echo $pro_index_id; ?>" /></td></tr>
	    <tr><td width='200'>Pro Form No <?php echo form_error('pro_form_no') ?></td><td><input type="text" class="form-control" name="pro_form_no" id="pro_form_no" placeholder="Pro Form No" value="<?php echo $pro_form_no; ?>" /></td></tr>
	    <tr><td width='200'>Pro Progress <?php echo form_error('pro_progress') ?></td><td><input type="text" class="form-control" name="pro_progress" id="pro_progress" placeholder="Pro Progress" value="<?php echo $pro_progress; ?>" /></td></tr>
	    <tr><td width='200'>Pro Date <?php echo form_error('pro_date') ?></td><td><input type="date" class="form-control" name="pro_date" id="pro_date" placeholder="Pro Date" value="<?php echo $pro_date; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="" value="<?php echo $; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('form_progress') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form> 
</div>
</div>
</div>