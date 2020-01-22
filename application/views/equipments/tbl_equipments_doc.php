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
        <h2>Equipments List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Projects</th>
		<th>Id Systems</th>
		<th>Id Subs</th>
		<th>Id Items</th>
		<th>Equipment No</th>
		<th>Equipment Desc</th>
		
            </tr><?php
            foreach ($equipments_data as $equipments)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $equipments->id_projects ?></td>
		      <td><?php echo $equipments->id_systems ?></td>
		      <td><?php echo $equipments->id_subs ?></td>
		      <td><?php echo $equipments->id_items ?></td>
		      <td><?php echo $equipments->equipment_no ?></td>
		      <td><?php echo $equipments->equipment_desc ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>