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
        <h2>Items List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Item No</th>
		<th>Item Discipline No</th>
		<th>Item Id</th>
		<th>Item Name</th>
		
            </tr><?php
            foreach ($items_data as $items)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $items->item_no ?></td>
		      <td><?php echo $items->item_discipline_no ?></td>
		      <td><?php echo $items->item_id ?></td>
		      <td><?php echo $items->item_name ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>