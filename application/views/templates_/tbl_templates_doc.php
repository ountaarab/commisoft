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
        <h2>Templates_ List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Template Id</th>
		<th>Template Name</th>
		<th>Template Type</th>
		<th>Id Disciplines</th>
		<th>Template Title 1</th>
		<th>Template Title 2</th>
		<th>Template Title 3</th>
		
            </tr><?php
            foreach ($templates__data as $templates_)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $templates_->template_id ?></td>
		      <td><?php echo $templates_->template_name ?></td>
		      <td><?php echo $templates_->template_type ?></td>
		      <td><?php echo $templates_->id_disciplines ?></td>
		      <td><?php echo $templates_->template_title_1 ?></td>
		      <td><?php echo $templates_->template_title_2 ?></td>
		      <td><?php echo $templates_->template_title_3 ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>