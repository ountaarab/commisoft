<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> systems</h4>

    <?php foreach ($siap as $key) { ?>
<table class="table">
	<tr>
		<th>System of ID </th>
		<td>
			<?php echo $key->system_id; ?>
		</td>
	</tr>
	<tr>
		<th>System name </th>
		<td>
			<?php echo $key->system_name; ?>
		</td>
	</tr>
	<tr>
		<th> Project category </th>
		<td>
			<?php echo $key->project_name; ?> <b> (<?php echo $key->project_id; ?>) </b>
		</td>
	</tr>
	<tr>
        <td></td>
        <td>
          <a href="<?php echo site_url('systems') ?>" class="btn btn-default">Back</a>
        </td>
      </tr>

</table>
   	<?php } ?>

</div>
</div>
</div>