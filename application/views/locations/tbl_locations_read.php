<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> locations</h4>
        <table class="table">
	    <tr><td>Location No</td><td><?php echo $location_no; ?></td></tr>
	    <tr><td>Location Project No</td><td><?php $key = $this->db->get_where('tbl_projects','id='.$location_project_no.'')->row(); echo $key->project_name; ?></td></tr>
	    <tr><td>Location Id</td><td><?php echo $location_id; ?></td></tr>
	    <tr><td>Location Name</td><td><?php echo $location_name; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('locations') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>

</div>
</div>
</div>