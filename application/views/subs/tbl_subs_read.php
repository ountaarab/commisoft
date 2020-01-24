<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> Sub systems</h4>

    <?php foreach ($siap as $key) { ?>
<table class="table">
	<tr>
		<th> Sub_System of ID </th>
		<td>
			<?php echo $key->sub_id; ?>
		</td>
	</tr>
	<tr>
		<th>Sub_System name </th>
		<td>
			<?php echo $key->sub_name; ?>
		</td>
	</tr>
	<tr>
		<th> System category </th>
		<td>
			<?php echo $key->system_name; ?> <b> (<?php echo $key->system_id; ?>) </b>
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
          <a href="<?php echo site_url('subs') ?>" class="btn btn-default">Back</a>
        </td>
      </tr>

</table>
   	<?php } ?>

</div>
</div>
</div>