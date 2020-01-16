<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>disciplines</h4>
            <?php if(!empty($this->session->flashdata('message'))){ echo alert('alert-success', 'message', $this->session->flashdata('message'));} ?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        
	    <tr>
	    	<td width='200'>Discipline Id <?php echo form_error('discipline_id') ?></td>
	    	<td><input type="text" class="form-control" name="discipline_id" id="discipline_id" placeholder="Discipline Id" value="<?php echo $discipline_id; ?>" /></td>
	    </tr>
	    <tr>
	    	<td width='200'>Discipline Name <?php echo form_error('discipline_name') ?></td>
	    	<td><input type="text" style="width: 50%" class="form-control" name="discipline_name" id="discipline_name" placeholder="Discipline Name" value="<?php echo $discipline_name; ?>"/></td>
	    </tr>
	    <tr><td></td><td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger" id="submit"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('disciplines') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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