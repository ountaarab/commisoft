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
        <h2>Tbl_perusahaan List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Kode</th>
		<th>Nama Perusahaan</th>
		<th>Biodata</th>
		<th>No Izin</th>
		<th>No Hp</th>
		<th>No Pajak</th>
		<th>Alamat</th>
		<th>Tgl Berdiri</th>
		
            </tr><?php
            foreach ($perusahaan_data as $perusahaan)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $perusahaan->kode ?></td>
		      <td><?php echo $perusahaan->nama_perusahaan ?></td>
		      <td><?php echo $perusahaan->biodata ?></td>
		      <td><?php echo $perusahaan->no_izin ?></td>
		      <td><?php echo $perusahaan->no_hp ?></td>
		      <td><?php echo $perusahaan->no_pajak ?></td>
		      <td><?php echo $perusahaan->alamat ?></td>
		      <td><?php echo $perusahaan->tgl_berdiri ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>