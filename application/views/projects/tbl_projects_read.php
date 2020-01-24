<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> projects</h4>
        <table class="table">
	    <tr>
	    	<th>Project Id</th>
	    	<td><?php echo $project_id; ?></td>
	    </tr>
	    <tr>
	    	<th>Project Name</th>
	    	<td><?php echo $project_name; ?>
	    	</td>
	    </tr>
	    <tr>
	    	<th>Project Desc</th>
	    	<td><?php echo $project_desc; ?></td>
	    </tr>
	    <tr>
        <td></td>
        <td>
          <a href="<?php echo site_url('projects') ?>" class="btn btn-default">Back</a>
        </td>
      </tr>
	</table>

</div>
</div>
</div>