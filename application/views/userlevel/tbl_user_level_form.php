<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form</strong> User Level</h4>
            </div>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-bordered'>        

	    <tr><td width='200'>Nama Level <?php echo form_error('nama_level') ?></td><td><input type="text" class="form-control" name="nama_level" id="nama_level" placeholder="Nama Level" value="<?php echo $nama_level; ?>" /></td></tr>

        <tr><td width='200'>Bagian <?php echo form_error('bagian') ?></td><td>
            <select class="form-control" name="bagian" id="bagian" >
                <?php if(empty($bagian)){$pilih="";}else{$pilih="selected";} ?>
                <option value="hrd">hrd</option>
                <option value="manager">manager</option>
                <option value="operator">operator</option>

                <option <?=$pilih;?> value="<?php echo $bagian; ?>"><?php echo $bagian; ?></option>
            </select></td></tr>

	    <tr><td></td><td><input type="hidden" name="id_user_level" value="<?php echo $id_user_level; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('userlevel') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>        
</div>
</div>
</div>
</div>