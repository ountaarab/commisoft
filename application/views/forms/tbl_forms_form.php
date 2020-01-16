<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>forms</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Form No <?php echo form_error('form_no') ?></td><td><input type="text" class="form-control" name="form_no" id="form_no" placeholder="Form No" value="<?php echo $form_no; ?>" /></td></tr>
	    <tr><td width='200'>Form Item No <?php echo form_error('form_item_no') ?></td><td><input type="text" class="form-control" name="form_item_no" id="form_item_no" placeholder="Form Item No" value="<?php echo $form_item_no; ?>" /></td></tr>
	    <tr><td width='200'>Form Tmp No <?php echo form_error('form_tmp_no') ?></td><td><input type="text" class="form-control" name="form_tmp_no" id="form_tmp_no" placeholder="Form Tmp No" value="<?php echo $form_tmp_no; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="" value="<?php echo $; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('forms') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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
        });</script>