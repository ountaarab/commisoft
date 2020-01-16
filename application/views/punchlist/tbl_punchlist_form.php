<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>punchlist</h4>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Punch Id <?php echo form_error('punch_id') ?></td><td><input type="text" class="form-control" name="punch_id" id="punch_id" placeholder="Punch Id" value="<?php echo $punch_id; ?>" /></td></tr>
	    <tr><td width='200'>Punch Location No <?php echo form_error('punch_location_no') ?></td><td><input type="text" class="form-control" name="punch_location_no" id="punch_location_no" placeholder="Punch Location No" value="<?php echo $punch_location_no; ?>" /></td></tr>
	    <tr><td width='200'>Punch Sub No <?php echo form_error('punch_sub_no') ?></td><td><input type="text" class="form-control" name="punch_sub_no" id="punch_sub_no" placeholder="Punch Sub No" value="<?php echo $punch_sub_no; ?>" /></td></tr>
	    <tr><td width='200'>Punch Discipline No <?php echo form_error('punch_discipline_no') ?></td><td><input type="text" class="form-control" name="punch_discipline_no" id="punch_discipline_no" placeholder="Punch Discipline No" value="<?php echo $punch_discipline_no; ?>" /></td></tr>
	    <tr><td width='200'>Punch ItemNo <?php echo form_error('punch_itemNo') ?></td><td><input type="text" class="form-control" name="punch_itemNo" id="punch_itemNo" placeholder="Punch ItemNo" value="<?php echo $punch_itemNo; ?>" /></td></tr>
	    
        <tr><td width='200'>Punch Desc <?php echo form_error('punch_desc') ?></td><td> <textarea class="form-control" rows="3" name="punch_desc" id="punch_desc" placeholder="Punch Desc"><?php echo $punch_desc; ?></textarea></td></tr>
	    <tr><td width='200'>Punch Category <?php echo form_error('punch_category') ?></td><td><input type="text" class="form-control" name="punch_category" id="punch_category" placeholder="Punch Category" value="<?php echo $punch_category; ?>" /></td></tr>
	    <tr><td width='200'>Originator Ctr <?php echo form_error('originator_ctr') ?></td><td><input type="text" class="form-control" name="originator_ctr" id="originator_ctr" placeholder="Originator Ctr" value="<?php echo $originator_ctr; ?>" /></td></tr>
	    <tr><td width='200'>Originator Cpy <?php echo form_error('originator_cpy') ?></td><td><input type="text" class="form-control" name="originator_cpy" id="originator_cpy" placeholder="Originator Cpy" value="<?php echo $originator_cpy; ?>" /></td></tr>
	    <tr><td width='200'>Originator Date <?php echo form_error('originator_date') ?></td><td><input type="date" class="form-control" name="originator_date" id="originator_date" placeholder="Originator Date" value="<?php echo $originator_date; ?>" /></td></tr>
	    <tr><td width='200'>Verified Ctr <?php echo form_error('verified_ctr') ?></td><td><input type="text" class="form-control" name="verified_ctr" id="verified_ctr" placeholder="Verified Ctr" value="<?php echo $verified_ctr; ?>" /></td></tr>
	    <tr><td width='200'>Verified Cpy <?php echo form_error('verified_cpy') ?></td><td><input type="text" class="form-control" name="verified_cpy" id="verified_cpy" placeholder="Verified Cpy" value="<?php echo $verified_cpy; ?>" /></td></tr>
	    <tr><td width='200'>Verified Date <?php echo form_error('verified_date') ?></td><td><input type="date" class="form-control" name="verified_date" id="verified_date" placeholder="Verified Date" value="<?php echo $verified_date; ?>" /></td></tr>
	    <tr><td width='200'>Punch Status <?php echo form_error('punch_status') ?></td><td><input type="text" class="form-control" name="punch_status" id="punch_status" placeholder="Punch Status" value="<?php echo $punch_status; ?>" /></td></tr>
	    <tr><td width='200'>Punch Date <?php echo form_error('punch_date') ?></td><td><input type="date" class="form-control" name="punch_date" id="punch_date" placeholder="Punch Date" value="<?php echo $punch_date; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('punchlist') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form> 
</div>
</div>
</div>