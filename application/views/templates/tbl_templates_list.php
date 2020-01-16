 
<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>List </strong>templates</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid"> 
    
            <form action="<?php echo site_url('templates/index'); ?>" class="form-inline" method="get">
                    <table class="table table-striped">
                            <tr><td width="100">Search</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                           <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('templates'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                                </td>
                                <td><button class="btn btn-small btn-theme" type="submit">Search</button></td></tr>
                        </table>
                </form>
            </div> 
    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
    <form action="<?php echo site_url('templates/delete_select'); ?>" class="form-inline" method="post">
    <?php echo anchor(site_url('templates/create'), '<i class="icon-file" aria-hidden="true"></i>', 'class="btn btn-small btn-theme"'); ?>
       <button class="btn btn-small btn-theme" type="submit" name="delete" value="select"><i class="icon-check"></i></button>
		<?php echo anchor(site_url('templates/excel'), '<i class="icon-table" aria-hidden="true"></i>', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('templates/word'), '<i class="icon-list-alt" aria-hidden="true"></i>', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('templates/pdf'), 'PDF', 'class="btn btn-small btn-theme"'); ?><div style="overflow-x:auto; overflow-x: scroll;">
<table class="table table-striped" style="margin-bottom: 10px">
            <tr>
                <th><input type="checkbox" id="checkall"></th>
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
		<th width="200">Action</th>
            </tr><?php
            foreach ($templates_data as $templates)
            {
                ?>
                <tr>
			 <td width="10px"><input type="checkbox" class="checkitem" name="pilih[]" value="<?=$templates->id?>"></td>
			<td width="10px"><?php echo ++$start ?></td>
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
			<td style="text-align:center">
				<?php 
				echo anchor(site_url('templates/read/'.$templates->id),'<i class="icon-desktop" aria-hidden="true"></i>'); 
				echo '  '; 
				echo anchor(site_url('templates/update/'.$templates->id),'<i class="icon-edit" aria-hidden="true"></i>'); 
				echo '  '; 
				echo anchor(site_url('templates/delete/'.$templates->id),'<i class="icon-trash" aria-hidden="true"></i>','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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