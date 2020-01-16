<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> systems</h4>
        <table class="table">
<!-- 	    <tr><td>System No</td><td><?php echo $system_no; ?></td></tr> -->
	    <tr><td>Project Name</td><td><?php $key = $this->db->get_where('tbl_projects','id='.$system_project_no.'')->row(); echo $key->project_name; ?></td></tr>
	    <tr><td>System Id</td><td><?php echo $system_id; ?></td></tr>
	    <tr><td>System Name</td><td><?php echo $system_name; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('systems') ?>" class="btn btn-default">Back</a></td></tr>
	</table>

</div>
</div>
</div>