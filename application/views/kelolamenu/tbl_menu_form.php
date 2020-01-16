<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>kelolamenu</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Title <?php echo form_error('title') ?></td><td><input type="text" class="form-control" name="title" id="title" placeholder="Title" value="<?php echo $title; ?>" /></td></tr>
	    <tr><td width='200'>Url <?php echo form_error('url') ?></td><td><input type="text" class="form-control" name="url" id="url" placeholder="Url" value="<?php echo $url; ?>" /></td></tr>
	    <tr><td width='200'>Icon <?php echo form_error('icon') ?></td><td><input type="text" class="form-control" name="icon" id="icon" placeholder="Icon" value="<?php echo $icon; ?>" /></td></tr>
	    <tr><td width='200'>Is Main Menu <?php echo form_error('is_main_menu') ?></td><td><input type="text" class="form-control" name="is_main_menu" id="is_main_menu" placeholder="Is Main Menu" value="<?php echo $is_main_menu; ?>" /></td></tr>
	    <tr><td width='200'>Is Aktif <?php echo form_error('is_aktif') ?></td><td><input type="text" class="form-control" name="is_aktif" id="is_aktif" placeholder="Is Aktif" value="<?php echo $is_aktif; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_menu" value="<?php echo $id_menu; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('kelolamenu') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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