<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>files</h4>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>File Id <?php echo form_error('file_id') ?></td><td><input type="text" class="form-control" name="file_id" id="file_id" placeholder="File Id" value="<?php echo $file_id; ?>" /></td></tr>
	    <tr><td width='200'>File Type <?php echo form_error('file_type') ?></td><td><input type="text" class="form-control" name="file_type" id="file_type" placeholder="File Type" value="<?php echo $file_type; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="" value="<?php echo $; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('files') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form> 
</div>
</div>
</div>