<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> user</h4>
        <table class="table">
	    <tr><td>Nama User</td><td><?php echo $nama_user; ?></td></tr>
	    <tr><td>Username</td><td><?php echo $username; ?></td></tr>
	    <tr><td>Password</td><td><?php echo $password; ?></td></tr>
	    <tr><td>Images</td><td><?php echo $images; ?></td></tr>
	    <tr><td>Id User Level</td><td><?php echo $id_user_level; ?></td></tr>
	    <tr><td>Is Aktif</td><td><?php echo $is_aktif; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('user') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>

</div>
</div>
</div>