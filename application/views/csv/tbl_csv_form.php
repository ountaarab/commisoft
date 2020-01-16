<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>csv</h4>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Csv Id <?php echo form_error('csv_id') ?></td><td><input type="text" class="form-control" name="csv_id" id="csv_id" placeholder="Csv Id" value="<?php echo $csv_id; ?>" /></td></tr>
	    <tr><td width='200'>Csv Code <?php echo form_error('csv_code') ?></td><td><input type="text" class="form-control" name="csv_code" id="csv_code" placeholder="Csv Code" value="<?php echo $csv_code; ?>" /></td></tr>
	    <tr><td width='200'>Csv File <?php echo form_error('csv_file') ?></td><td><input type="text" class="form-control" name="csv_file" id="csv_file" placeholder="Csv File" value="<?php echo $csv_file; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="" value="<?php echo $; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('csv') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form> 
</div>
</div>
</div>