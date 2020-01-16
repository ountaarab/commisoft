<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> Perusahaan</h4>
        <table class="table">
	    <tr><td>Kode</td><td><?php echo $kode; ?></td></tr>
	    <tr><td>Nama Perusahaan</td><td><?php echo $nama_perusahaan; ?></td></tr>
	    <tr><td>Biodata</td><td><?php echo $biodata; ?></td></tr>
	    <tr><td>No Izin</td><td><?php echo $no_izin; ?></td></tr>
	    <tr><td>No Hp</td><td><?php echo $no_hp; ?></td></tr>
	    <tr><td>No Pajak</td><td><?php echo $no_pajak; ?></td></tr>
	    <tr><td>Alamat</td><td><?php echo $alamat; ?></td></tr>
        <tr><td>Email</td><td><?php echo $email; ?></td></tr>
        <tr><td>Password Email</td><td><?php echo $password_email ='**********'; ?></td></tr>
	    <tr><td>Tgl Berdiri</td><td><?php echo $tgl_berdiri; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('perusahaan') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>
  </div>
                    </div>
            </div>
            </div>
    </section>
