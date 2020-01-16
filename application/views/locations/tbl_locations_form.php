<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>locations</h4>
            <?php if(!empty($this->session->flashdata('message'))){ echo alert('alert-success', 'message', $this->session->flashdata('message'));} ?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr>
	    	<td width='200'>Project Name <?php echo form_error('location_project_no') ?></td>
	    	<td><select class="form-control" name="location_project_no" id="location_project_no"  >
	    <?php if(!empty($location_project_no)){ ?>
	    <option value="<?=$location_project_no;?>"><?php $x =$this->db->get_where('tbl_projects','id = '.$location_project_no.'')->row();echo $x->project_name;?></option>
	    <?php } ?>
	    <?php $project =  $this->db->get_where('tbl_projects','project_status = 0')->result();?>
	    <?php foreach ($project as $key) { ?>
        <option value="<?=$key->id;?>"><?=$key->project_name;?></option>
        <?php } ?>
        </select></td>
	    </tr>
	    <tr>
	    	<td width='200'>Location Id <?php echo form_error('location_id') ?></td>
	    	<td><input type="text" class="form-control" name="location_id" id="location_id" placeholder="Location Id" value="<?php echo $location_id; ?>" /></td>
	    </tr>
	    <tr>
	    	<td width='200'>Location Name <?php echo form_error('location_name') ?></td>
	    	<td><input type="text" class="form-control" name="location_name" id="location_name" placeholder="Location Name" value="<?php echo $location_name; ?>" /></td>
	    </tr>
	    <tr><td></td><td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger" id="submit"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('locations') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
	</table></form> 
</div>
</div>
</div>
<script type="text/javascript" src="<?=base_url('') ?>assets/js/jquery.js"></script>
<script>
$('input').on("keypress", function(e) {
            /* ENTER PRESSED*/
            if (e.keyCode == 13) {
                /* FOCUS ELEMENT */
                var inputs = $(this).parents("form").eq(0).find(":input");
                var idx = inputs.index(this);

                if (idx == inputs.length - 1) {
                    inputs[0].select()
                } else {
                    inputs[idx + 1].focus(); //  handles submit buttons
                    inputs[idx + 1].select();
                }
                return false;
            }
        });
</script>
