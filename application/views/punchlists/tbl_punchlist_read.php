<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> punchlists</h4>
        <table class="table">
	    <tr><td>Punch Id</td><td><?php echo $punch_id; ?></td></tr>
	    <tr><td>Id Locations</td><td><?php echo $id_locations; ?></td></tr>
	    <tr><td>Sub System</td><td><?php echo $sub_name; ?></td></tr>
	    <tr><td>Disciplines</td><td><?php echo $discipline_name; ?></td></tr>
	    <tr><td>Equipments</td><td><?php echo $equipment_no; ?></td></tr>
	    <tr><td>Punch Desc</td><td><?php echo $punch_desc; ?></td></tr>
	    <tr><td>Punch Category</td><td><?php echo $punch_category; ?></td></tr>
	    <tr><td>Originator Ctr</td><td><?php echo $originator_ctr; ?></td></tr>
	    <tr><td>Originator Cpy</td><td><?php echo $originator_cpy; ?></td></tr>
	    <tr><td>Originator Date</td><td><?php echo $originator_date; ?></td></tr>
	    <tr><td>Verified Ctr</td><td><?php echo $verified_ctr; ?></td></tr>
	    <tr><td>Verified Cpy</td><td><?php echo $verified_cpy; ?></td></tr>
	    <tr><td>Verified Date</td><td><?php echo $verified_date; ?></td></tr>
	    <tr><td>Punch Status</td><td><?php echo $punch_status; ?></td></tr>
	    <tr><td>Punch Date</td><td><?php echo $punch_date; ?></td></tr>
	    <tr><td></td><td><a href="<?php echo site_url('punchlists') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>

</div>
</div>
</div>