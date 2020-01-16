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
        <h2>Forms List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Form No</th>
		<th>Form Item No</th>
		<th>Form Tmp No</th>
		
            </tr><?php
            foreach ($forms_data as $forms)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $forms->form_no ?></td>
		      <td><?php echo $forms->form_item_no ?></td>
		      <td><?php echo $forms->form_tmp_no ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>