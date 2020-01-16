<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>templates</h4>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Tmp No <?php echo form_error('tmp_no') ?></td><td><input type="text" class="form-control" name="tmp_no" id="tmp_no" placeholder="Tmp No" value="<?php echo $tmp_no; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Id <?php echo form_error('tmp_id') ?></td><td><input type="text" class="form-control" name="tmp_id" id="tmp_id" placeholder="Tmp Id" value="<?php echo $tmp_id; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Discipline No <?php echo form_error('tmp_discipline_no') ?></td><td><input type="text" class="form-control" name="tmp_discipline_no" id="tmp_discipline_no" placeholder="Tmp Discipline No" value="<?php echo $tmp_discipline_no; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Name <?php echo form_error('tmp_name') ?></td><td><input type="text" class="form-control" name="tmp_name" id="tmp_name" placeholder="Tmp Name" value="<?php echo $tmp_name; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Name2 <?php echo form_error('tmp_name2') ?></td><td><input type="text" class="form-control" name="tmp_name2" id="tmp_name2" placeholder="Tmp Name2" value="<?php echo $tmp_name2; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Type <?php echo form_error('tmp_type') ?></td><td><input type="text" class="form-control" name="tmp_type" id="tmp_type" placeholder="Tmp Type" value="<?php echo $tmp_type; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Type2 <?php echo form_error('tmp_type2') ?></td><td><input type="text" class="form-control" name="tmp_type2" id="tmp_type2" placeholder="Tmp Type2" value="<?php echo $tmp_type2; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Title1 <?php echo form_error('tmp_title1') ?></td><td><input type="text" class="form-control" name="tmp_title1" id="tmp_title1" placeholder="Tmp Title1" value="<?php echo $tmp_title1; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Title2 <?php echo form_error('tmp_title2') ?></td><td><input type="text" class="form-control" name="tmp_title2" id="tmp_title2" placeholder="Tmp Title2" value="<?php echo $tmp_title2; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Title3 <?php echo form_error('tmp_title3') ?></td><td><input type="text" class="form-control" name="tmp_title3" id="tmp_title3" placeholder="Tmp Title3" value="<?php echo $tmp_title3; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Title4 <?php echo form_error('tmp_title4') ?></td><td><input type="text" class="form-control" name="tmp_title4" id="tmp_title4" placeholder="Tmp Title4" value="<?php echo $tmp_title4; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Remark <?php echo form_error('tmp_remark') ?></td><td><input type="text" class="form-control" name="tmp_remark" id="tmp_remark" placeholder="Tmp Remark" value="<?php echo $tmp_remark; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Status <?php echo form_error('tmp_status') ?></td><td><input type="text" class="form-control" name="tmp_status" id="tmp_status" placeholder="Tmp Status" value="<?php echo $tmp_status; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Na <?php echo form_error('tmp_na') ?></td><td><input type="text" class="form-control" name="tmp_na" id="tmp_na" placeholder="Tmp Na" value="<?php echo $tmp_na; ?>" /></td></tr>
	    <tr><td width='200'>Tmp Ref <?php echo form_error('tmp_ref') ?></td><td><input type="text" class="form-control" name="tmp_ref" id="tmp_ref" placeholder="Tmp Ref" value="<?php echo $tmp_ref; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('templates') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
	</table></form> 
</div>
</div>
</div>