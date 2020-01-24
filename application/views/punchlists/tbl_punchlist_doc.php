<!doctype html>
<html>
    <head>
        <title>AA-SOFT DEVELOVER</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>"/>
        <style>
            .word-table {
                border:1px solid black !important; 
                border-collapse: collapse !important;
                width: 100%;
            }
            .word-table tr th, .word-table tr td{
                border:1px solid black !important; 
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
        <h2>Punchlists List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Punch Id</th>
		<th>Id Locations</th>
		<th>Id Subs</th>
		<th>Id Disciplines</th>
		<th>Id Equipments</th>
		<th>Punch Desc</th>
		<th>Punch Category</th>
		<th>Originator Ctr</th>
		<th>Originator Cpy</th>
		<th>Originator Date</th>
		<th>Verified Ctr</th>
		<th>Verified Cpy</th>
		<th>Verified Date</th>
		<th>Punch Status</th>
		<th>Punch Date</th>
		
            </tr><?php
            foreach ($punchlists_data as $punchlists)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $punchlists->punch_id ?></td>
		      <td><?php echo $punchlists->id_locations ?></td>
		      <td><?php echo $punchlists->id_subs ?></td>
		      <td><?php echo $punchlists->id_disciplines ?></td>
		      <td><?php echo $punchlists->id_equipments ?></td>
		      <td><?php echo $punchlists->punch_desc ?></td>
		      <td><?php echo $punchlists->punch_category ?></td>
		      <td><?php echo $punchlists->originator_ctr ?></td>
		      <td><?php echo $punchlists->originator_cpy ?></td>
		      <td><?php echo $punchlists->originator_date ?></td>
		      <td><?php echo $punchlists->verified_ctr ?></td>
		      <td><?php echo $punchlists->verified_cpy ?></td>
		      <td><?php echo $punchlists->verified_date ?></td>
		      <td><?php echo $punchlists->punch_status ?></td>
		      <td><?php echo $punchlists->punch_date ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>