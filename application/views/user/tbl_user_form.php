<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>user</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Nama User <?php echo form_error('nama_user') ?></td><td><input type="text" class="form-control" name="nama_user" id="nama_user" placeholder="Nama User" value="<?php echo $nama_user; ?>" /></td></tr>
	    <tr><td width='200'>Username <?php echo form_error('username') ?></td><td><input type="text" class="form-control" name="username" id="username" placeholder="Username" value="<?php echo $username; ?>" /></td></tr>
	    
        <tr><td width='200'>Password <?php echo form_error('password') ?></td><td> <textarea class="form-control" rows="3" name="password" id="password" placeholder="Password"><?php echo $password; ?></textarea></td></tr>
	    
        <tr><td width='200'>Images <?php echo form_error('images') ?></td><td> <textarea class="form-control" rows="3" name="images" id="images" placeholder="Images"><?php echo $images; ?></textarea></td></tr>
	    <tr><td width='200'>Id User Level <?php echo form_error('id_user_level') ?></td><td><input type="text" class="form-control" name="id_user_level" id="id_user_level" placeholder="Id User Level" value="<?php echo $id_user_level; ?>" /></td></tr>
	    <tr><td width='200'>Is Aktif <?php echo form_error('is_aktif') ?></td><td><input type="text" class="form-control" name="is_aktif" id="is_aktif" placeholder="Is Aktif" value="<?php echo $is_aktif; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_users" value="<?php echo $id_users; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('user') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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