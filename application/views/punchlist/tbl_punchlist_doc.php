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
        <h2>Punchlist List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Punch Id</th>
		<th>Punch Location No</th>
		<th>Punch Sub No</th>
		<th>Punch Discipline No</th>
		<th>Punch ItemNo</th>
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
            foreach ($punchlist_data as $punchlist)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $punchlist->punch_id ?></td>
		      <td><?php echo $punchlist->punch_location_no ?></td>
		      <td><?php echo $punchlist->punch_sub_no ?></td>
		      <td><?php echo $punchlist->punch_discipline_no ?></td>
		      <td><?php echo $punchlist->punch_itemNo ?></td>
		      <td><?php echo $punchlist->punch_desc ?></td>
		      <td><?php echo $punchlist->punch_category ?></td>
		      <td><?php echo $punchlist->originator_ctr ?></td>
		      <td><?php echo $punchlist->originator_cpy ?></td>
		      <td><?php echo $punchlist->originator_date ?></td>
		      <td><?php echo $punchlist->verified_ctr ?></td>
		      <td><?php echo $punchlist->verified_cpy ?></td>
		      <td><?php echo $punchlist->verified_date ?></td>
		      <td><?php echo $punchlist->punch_status ?></td>
		      <td><?php echo $punchlist->punch_date ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>