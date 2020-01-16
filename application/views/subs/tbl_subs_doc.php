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
        <h2>Subs List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
<!-- 		<th>Sub No</th> -->
		<th>System Name</th>
		<th>Sub Id</th>
		<th>Sub Name</th>
		
            </tr><?php
            foreach ($subs_data as $subs)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
<!-- 		      <td><?php echo $subs->sub_no ?></td> -->
		      <td><?php echo $subs->system_name ?></td>
		      <td><?php echo $subs->sub_id ?></td>
		      <td><?php echo $subs->sub_name ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>