 
<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>List </strong>punchlist</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid"> 
    
            <form action="<?php echo site_url('punchlist/index'); ?>" class="form-inline" method="get">
                    <table class="table table-striped">
                            <tr><td width="100">Search</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                           <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('punchlist'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                                </td>
                                <td><button class="btn btn-small btn-theme" type="submit">Search</button></td></tr>
                        </table>
                </form>
            </div> 
    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
    <form action="<?php echo site_url('punchlist/delete_select'); ?>" class="form-inline" method="post">
    <?php echo anchor(site_url('punchlist/create'), '<i class="icon-file" aria-hidden="true"></i>', 'class="btn btn-small btn-theme"'); ?>
       <button class="btn btn-small btn-theme" type="submit" name="delete" value="select"><i class="icon-check"></i></button>
		<?php echo anchor(site_url('punchlist/excel'), '<i class="icon-table" aria-hidden="true"></i>', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('punchlist/word'), '<i class="icon-list-alt" aria-hidden="true"></i>', 'class="btn btn-small btn-theme"'); ?>
		<?php echo anchor(site_url('punchlist/pdf'), 'PDF', 'class="btn btn-small btn-theme"'); ?><div style="overflow-x:auto; overflow-x: scroll;">
<table class="table table-striped" style="margin-bottom: 10px">
            <tr>
                <th><input type="checkbox" id="checkall"></th>
                <th>No</th>
		<th>Punch Id</th>
		<th>Punch Location No</th>
		<th>Punch Sub No</th>
		<th>Punch Discipline No</th>
		<th>Punch ItemNo</th>
		<th>Punch Desc</th>
		<th>Punch Category</th>
		<th>Originator Ctr</th>
		<th>Originator Cpy</th>
		<th>Originator Date</th>
		<th>Verified Ctr</th>
		<th>Verified Cpy</th>
		<th>Verified Date</th>
		<th>Punch Status</th>
		<th>Punch Date</th>
		<th width="200">Action</th>
            </tr><?php
            foreach ($punchlist_data as $punchlist)
            {
                ?>
                <tr>
			 <td width="10px"><input type="checkbox" class="checkitem" name="pilih[]" value="<?=$punchlist->id?>"></td>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $punchlist->punch_id ?></td>
			<td><?php echo $punchlist->punch_location_no ?></td>
			<td><?php echo $punchlist->punch_sub_no ?></td>
			<td><?php echo $punchlist->punch_discipline_no ?></td>
			<td><?php echo $punchlist->punch_itemNo ?></td>
			<td><?php echo $punchlist->punch_desc ?></td>
			<td><?php echo $punchlist->punch_category ?></td>
			<td><?php echo $punchlist->originator_ctr ?></td>
			<td><?php echo $punchlist->originator_cpy ?></td>
			<td><?php echo $punchlist->originator_date ?></td>
			<td><?php echo $punchlist->verified_ctr ?></td>
			<td><?php echo $punchlist->verified_cpy ?></td>
			<td><?php echo $punchlist->verified_date ?></td>
			<td><?php echo $punchlist->punch_status ?></td>
			<td><?php echo $punchlist->punch_date ?></td>
			<td style="text-align:center">
				<?php 
				echo anchor(site_url('punchlist/read/'.$punchlist->id),'<i class="icon-desktop" aria-hidden="true"></i>'); 
				echo '  '; 
				echo anchor(site_url('punchlist/update/'.$punchlist->id),'<i class="icon-edit" aria-hidden="true"></i>'); 
				echo '  '; 
				echo anchor(site_url('punchlist/delete/'.$punchlist->id),'<i class="icon-trash" aria-hidden="true"></i>','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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