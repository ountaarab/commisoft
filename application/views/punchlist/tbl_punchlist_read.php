<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> punchlist</h4>
        <table class="table">
	    <tr><td>Punch Id</td><td><?php echo $punch_id; ?></td></tr>
	    <tr><td>Punch Location No</td><td><?php echo $punch_location_no; ?></td></tr>
	    <tr><td>Punch Sub No</td><td><?php echo $punch_sub_no; ?></td></tr>
	    <tr><td>Punch Discipline No</td><td><?php echo $punch_discipline_no; ?></td></tr>
	    <tr><td>Punch ItemNo</td><td><?php echo $punch_itemNo; ?></td></tr>
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
	    <tr><td></td><td><a href="<?php echo site_url('punchlist') ?>" class="btn btn-default">Cancel</a></td></tr>
	</table>

</div>
</div>
</div>