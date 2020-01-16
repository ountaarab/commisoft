 <section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>List </strong>csv</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid"> 
    
            <form action="<?php echo site_url('csv/index'); ?>" class="form-inline" method="get">
                    <table class="table table-striped">
                            <tr><td width="250">Cari Data</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                           <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('csv'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                                </td>
                                <td><button class="btn btn-small btn-theme" type="submit">Search</button></td></tr>
                        </table>
                </form>
            </div> 
    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
    <form action="<?php echo site_url('csv/delete_select'); ?>" class="form-inline" method="post">
   <button class="btn btn-small btn-theme" type="submit"><i class="icon-trash"></i>Hapus Terpilih </button>   
    <?php echo anchor(site_url('csv/create'), '<i class="icon-file" aria-hidden="true"></i> Tambah Data', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('csv/excel'), '<i class="icon-file" aria-hidden="true"></i> Export Ms Excel', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('csv/word'), '<i class="icon-file" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-small btn-theme"'); ?><table class="table table-striped" style="margin-bottom: 10px">
            <tr>
                <th><input type="checkbox" id="checkall"></th>
                <th>No</th>
		<th>Csv Id</th>
		<th>Csv Code</th>
		<th>Csv File</th>
		<th>Action</th>
            </tr><?php
            foreach ($csv_data as $csv)
            {
                ?>
                <tr>
			 <td width="10px"><input type="checkbox" class="checkitem" name="pilih[]" value="<?=$csv->?>"></td>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $csv->csv_id ?></td>
			<td><?php echo $csv->csv_code ?></td>
			<td><?php echo $csv->csv_file ?></td>
			<td style="text-align:center" width="200px">
				<?php 
				echo anchor(site_url('csv/read/'.$csv->),'<i class="icon-desktop" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
				echo anchor(site_url('csv/update/'.$csv->),'<i class="icon-edit" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
				echo anchor(site_url('csv/delete/'.$csv->),'<i class="icon-trash" aria-hidden="true"></i>','class="btn btn-danger btn-sm" Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
				?>
			</td>
		</tr>
                <?php
            }
            ?>
        </table>
         <?php echo $pagination ?>
        </div>
            </div>
            </div>

            <div class="blankline30"></div>
            <div class="solidline"></div>
            <div class="blankline20"></div>


          </div>

        </div>
      </div>
    </section><script type="text/javascript" src="<?=base_url('') ?>assets/js/jquery.min.js"></script>
    <script type="text/javascript">

    $(document).ready(function(){
            $("#checkall").click(function(){ // ketika di klick all
                if($(this).is(":checked")) //jika cekbok all di ceklis
                    $(".checkitem").prop("checked",true); // ceklis semua 
                else // selain itu
                    $(".checkitem").prop("checked",false); //  jangan ceklis semua 
            });
    
});
    </script>