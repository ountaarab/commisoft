<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form</strong> Perusahaan</h4>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            
<table class='table table-bordered'>       

	    <tr><td width='200'>Kode <?php echo form_error('kode') ?></td><td><input type="text" class="form-control" name="kode" id="kode" placeholder="Kode" value="<?php echo $kode; ?>" /></td></tr>
	    <tr><td width='200'>Nama Perusahaan <?php echo form_error('nama_perusahaan') ?></td><td><input type="text" class="form-control" name="nama_perusahaan" id="nama_perusahaan" placeholder="Nama Perusahaan" value="<?php echo $nama_perusahaan; ?>" /></td></tr>
	    
        <tr><td width='200'>Biodata <?php echo form_error('biodata') ?></td><td> <textarea class="form-control" rows="3" name="biodata" id="biodata" placeholder="Biodata"><?php echo $biodata; ?></textarea></td></tr>
	    <tr><td width='200'>No Izin <?php echo form_error('no_izin') ?></td><td><input type="text" class="form-control" name="no_izin" id="no_izin" placeholder="No Izin" value="<?php echo $no_izin; ?>" /></td></tr>
	    <tr><td width='200'>No Hp <?php echo form_error('no_hp') ?></td><td><input type="text" class="form-control" name="no_hp" id="no_hp" placeholder="No Hp" value="<?php echo $no_hp; ?>" /></td></tr>
	    <tr><td width='200'>No Pajak <?php echo form_error('no_pajak') ?></td><td><input type="text" class="form-control" name="no_pajak" id="no_pajak" placeholder="No Pajak" value="<?php echo $no_pajak; ?>" /></td></tr>
	    
        <tr><td width='200'>Alamat <?php echo form_error('alamat') ?></td><td> <textarea class="form-control" rows="3" name="alamat" id="alamat" placeholder="Alamat"><?php echo $alamat; ?></textarea></td></tr>
         <tr><td width='200'>Email <a href="https://myaccount.google.com/lesssecureapps">Aktifkan Pitur ini dlu</a><?php echo form_error('email') ?></td><td><input type="email" class="form-control" name="email" id="email" placeholder="Email Perusahaan" value="<?php echo $email; ?>" /></td></tr>
          <tr><td width='200'>Password Email<?php echo form_error('password_email') ?></td><td><input type="password" class="form-control" name="password_email" id="password_email" placeholder="password_email" value="<?php echo $password_email; ?>" /></td></tr>
	    <tr><td width='200'>Tgl Berdiri <?php echo form_error('tgl_berdiri') ?></td><td><input type="date" class="form-control" name="tgl_berdiri" id="tgl_berdiri" placeholder="Tgl Berdiri" value="<?php echo $tgl_berdiri; ?>" /></td></tr>
	    <tr><td width='200'>Foto Profile <?php echo form_error('images') ?></td><td> <input type="file" name="images"> <img src="<?php echo base_url() ?>assets/img/<?php echo $images; ?> " width="20%" class="img-square" alt="User Image"></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_perusahaan" value="<?php echo $id_perusahaan; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('perusahaan') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a></td></tr>
	</table></form>      </div>   </div>
</div>
</div>