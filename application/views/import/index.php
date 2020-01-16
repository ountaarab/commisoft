<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>Import</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php //echo $action; ?>" method="post">
            
<table class='table table-borrdered'>        

	    <tr><td width='200'>Project </td><td><input type="file" class="form-control" name="Import_project"  /></td></tr>
        <tr><td width='200'>System </td><td><input type="file" class="form-control" name="Import_system"  /></td></tr>
        <tr><td width='200'>Sub System </td><td><input type="file" class="form-control" name="Import_sub_system"  /></td></tr>
        <tr><td width='200'>Disciplines </td><td><input type="file" class="form-control" name="Import_disciplines"  /></td></tr>
        <tr><td width='200'>Location </td><td><input type="file" class="form-control" name="Import_location"  /></td></tr>
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo "Import"; ?></button> 
	    <a href="<?php echo site_url('user') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
	</table></form> 
</div>
</div>
</div>
