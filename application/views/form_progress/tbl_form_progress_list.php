 <section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>List </strong>form_progress</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid"> 
    
            <form action="<?php echo site_url('form_progress/index'); ?>" class="form-inline" method="get">
                    <table class="table table-striped">
                            <tr><td width="250">Cari Data</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                           <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('form_progress'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                                </td>
                                <td><button class="btn btn-small btn-theme" type="submit">Search</button></td></tr>
                        </table>
                </form>
            </div> 
    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
    <form action="<?php echo site_url('form_progress/delete_select'); ?>" class="form-inline" method="post">
   <button class="btn btn-small btn-theme" type="submit"><i class="icon-trash"></i>Hapus Terpilih </button>   
    <?php echo anchor(site_url('form_progress/create'), '<i class="icon-file" aria-hidden="true"></i> Tambah Data', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('form_progress/excel'), '<i class="icon-file" aria-hidden="true"></i> Export Ms Excel', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('form_progress/word'), '<i class="icon-file" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-small btn-theme"'); ?><table class="table table-striped" style="margin-bottom: 10px">
            <tr>
                <th><input type="checkbox" id="checkall"></th>
                <th>No</th>
		<th>Pro Id</th>
		<th>Pro Index Id</th>
		<th>Pro Form No</th>
		<th>Pro Progress</th>
		<th>Pro Date</th>
		<th>Action</th>
            </tr><?php
            foreach ($form_progress_data as $form_progress)
            {
                ?>
                <tr>
			 <td width="10px"><input type="checkbox" class="checkitem" name="pilih[]" value="<?=$form_progress->?>"></td>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $form_progress->pro_id ?></td>
			<td><?php echo $form_progress->pro_index_id ?></td>
			<td><?php echo $form_progress->pro_form_no ?></td>
			<td><?php echo $form_progress->pro_progress ?></td>
			<td><?php echo $form_progress->pro_date ?></td>
			<td style="text-align:center" width="200px">
				<?php 
				echo anchor(site_url('form_progress/read/'.$form_progress->),'<i class="icon-desktop" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
				echo anchor(site_url('form_progress/update/'.$form_progress->),'<i class="icon-edit" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
				echo anchor(site_url('form_progress/delete/'.$form_progress->),'<i class="icon-trash" aria-hidden="true"></i>','class="btn btn-danger btn-sm" Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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