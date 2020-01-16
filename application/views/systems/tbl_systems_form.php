<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>systems</h4>
                        
            <?php if(!empty($this->session->flashdata('message'))){ echo alert('alert-success', 'message', $this->session->flashdata('message'));} ?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr>
	    	<td width='200'>Project Name <?php echo form_error('system_project_no') ?></td>
	    	<td>      
	    <select class="form-control" name="system_project_no" id="system_project_no" >
	    <?php if(!empty($system_project_no)){ ?>
	    <option value="<?=$system_project_no;?>"><?php $x =$this->db->get_where('tbl_projects','id = '.$system_project_no.'')->row();echo $x->project_name;?></option>
	    <?php } ?>
	    <?php $project =  $this->db->get_where('tbl_projects','project_status = 0')->result();?>
	    <?php foreach ($project as $key) { ?>
        <option value="<?=$key->id;?>"><?=$key->project_name;?></option>
        <?php } ?>
        </select></td>
	    </tr>
	    <tr>
	    	<td width='200'>System Id <?php echo form_error('system_id') ?></td>
	    	<td><input type="text" class="form-control" name="system_id" id="system_id" placeholder="System Id" value="<?php echo $system_id; ?>" /></td>
	    </tr>
	    <tr>
	    	<td width='200'>System Name <?php echo form_error('system_name') ?></td>
	    	<td><input type="text" style="width: 50%"  class="form-control" name="system_name" id="system_name" placeholder="System Name" value="<?php echo $system_name; ?>" /></td>
	    </tr>
	    <tr>
	    	<td></td>
	    	<td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger" id="submit"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('systems') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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
