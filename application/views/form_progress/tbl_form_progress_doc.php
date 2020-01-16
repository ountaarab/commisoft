<!doctype html>
<html>
    <head>
        <title>AA-SOFT DEVELOVER</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
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
        <h2>Form_progress List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Pro Id</th>
		<th>Pro Index Id</th>
		<th>Pro Form No</th>
		<th>Pro Progress</th>
		<th>Pro Date</th>
		
            </tr><?php
            foreach ($form_progress_data as $form_progress)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $form_progress->pro_id ?></td>
		      <td><?php echo $form_progress->pro_index_id ?></td>
		      <td><?php echo $form_progress->pro_form_no ?></td>
		      <td><?php echo $form_progress->pro_progress ?></td>
		      <td><?php echo $form_progress->pro_date ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>