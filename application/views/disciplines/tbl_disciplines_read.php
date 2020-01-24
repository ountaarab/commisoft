<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>View</strong> Discipline </h4>

    <?php foreach ($siap as $key) { ?>
<table class="table">
	<tr>
		<th>Discipline ID </th>
		<td>
			<?php echo $key->discipline_id; ?>
		</td>
	</tr>
	<tr>
		<th>Discipline name </th>
		<td>
			<?php echo $key->discipline_name; ?>
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
          <a href="<?php echo site_url('disciplines') ?>" class="btn btn-default">Back</a>
        </td>
      </tr>

</table>
   	<?php } ?>

</div>
</div>
</div>