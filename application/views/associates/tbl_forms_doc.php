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
        <h2>Associates List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Projects</th>
		<th>Id Disciplines</th>
		<th>Id Items</th>
		<th>Id Templates</th>
		<th>Template Type</th>
		
            </tr><?php
            foreach ($associates_data as $associates)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $associates->id_projects ?></td>
		      <td><?php echo $associates->id_disciplines ?></td>
		      <td><?php echo $associates->id_items ?></td>
		      <td><?php echo $associates->id_templates ?></td>
		      <td><?php echo $associates->template_type ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>