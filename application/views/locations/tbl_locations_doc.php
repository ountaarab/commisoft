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
        <h2>Locations List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Project Name</th>
		<th>Location Id</th>
		<th>Location Name</th>
		
            </tr><?php
            foreach ($locations_data as $locations)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $locations->project_name ?></td>
		      <td><?php echo $locations->location_id ?></td>
		      <td><?php echo $locations->location_name ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>