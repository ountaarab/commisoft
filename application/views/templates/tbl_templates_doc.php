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
        <h2>Templates List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Tmp No</th>
		<th>Tmp Id</th>
		<th>Tmp Discipline No</th>
		<th>Tmp Name</th>
		<th>Tmp Name2</th>
		<th>Tmp Type</th>
		<th>Tmp Type2</th>
		<th>Tmp Title1</th>
		<th>Tmp Title2</th>
		<th>Tmp Title3</th>
		<th>Tmp Title4</th>
		<th>Tmp Remark</th>
		<th>Tmp Status</th>
		<th>Tmp Na</th>
		<th>Tmp Ref</th>
		
            </tr><?php
            foreach ($templates_data as $templates)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $templates->tmp_no ?></td>
		      <td><?php echo $templates->tmp_id ?></td>
		      <td><?php echo $templates->tmp_discipline_no ?></td>
		      <td><?php echo $templates->tmp_name ?></td>
		      <td><?php echo $templates->tmp_name2 ?></td>
		      <td><?php echo $templates->tmp_type ?></td>
		      <td><?php echo $templates->tmp_type2 ?></td>
		      <td><?php echo $templates->tmp_title1 ?></td>
		      <td><?php echo $templates->tmp_title2 ?></td>
		      <td><?php echo $templates->tmp_title3 ?></td>
		      <td><?php echo $templates->tmp_title4 ?></td>
		      <td><?php echo $templates->tmp_remark ?></td>
		      <td><?php echo $templates->tmp_status ?></td>
		      <td><?php echo $templates->tmp_na ?></td>
		      <td><?php echo $templates->tmp_ref ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>