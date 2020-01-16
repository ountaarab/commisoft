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
        <h2>User List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Nama User</th>
		<th>Username</th>
		<th>Password</th>
		<th>Images</th>
		<th>Id User Level</th>
		<th>Is Aktif</th>
		
            </tr><?php
            foreach ($user_data as $user)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $user->nama_user ?></td>
		      <td><?php echo $user->username ?></td>
		      <td><?php echo $user->password ?></td>
		      <td><?php echo $user->images ?></td>
		      <td><?php echo $user->id_user_level ?></td>
		      <td><?php echo $user->is_aktif ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>