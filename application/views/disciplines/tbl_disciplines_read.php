<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> disciplines</h4>
        <table class="table">
<!-- 	    <tr><td>Discipline No</td><td><?php echo $discipline_no; ?></td></tr>
	    <tr><td>Discipline Project No</td><td><?php $key = $this->db->get_where('tbl_projects','id='.$discipline_project_no.'')->row(); echo $key->project_name; ?></td></tr> -->
	    <tr><td>Discipline Id</td><td><?php echo $discipline_id; ?></td></tr>
	    <tr><td>Discipline Name</td><td><?php echo $discipline_name; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('disciplines') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>

</div>
</div>
</div>