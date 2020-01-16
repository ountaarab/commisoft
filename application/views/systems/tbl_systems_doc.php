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
        <h2>Systems List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
<!-- 		<th>System No</th> -->
		<th>System Project No</th>
		<th>System Id</th>
		<th>System Name</th>
		
            </tr><?php
            foreach ($systems_data as $systems)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
<!-- 		      <td><?php echo $systems->system_no ?></td> -->
		      <td><?php $key = $this->db->get_where('tbl_projects','id='.$systems->system_project_no.'')->row(); echo $key->project_name; ?></td>
		      <td><?php echo $systems->system_id ?></td>
		      <td><?php echo $systems->system_name ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>