<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> subs</h4>
        <table class="table">
<!-- 	    <tr><td>Sub No</td><td><?php echo $sub_no; ?></td></tr> -->
	    <tr><td>Sub System No</td><td><?php $key = $this->db->get_where('tbl_systems','id='.$sub_system_no.'')->row(); echo $key->system_name; ?></td></tr>
	    <tr><td>Sub Id</td><td><?php echo $sub_id; ?></td></tr>
	    <tr><td>Sub Name</td><td><?php echo $sub_name; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('subs') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>

</div>
</div>
</div>