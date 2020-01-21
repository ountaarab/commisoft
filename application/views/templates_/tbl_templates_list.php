 
<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>List </strong>templates_</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid"> 
    
            <form action="<?php echo site_url('templates_/index'); ?>" class="form-inline" method="get">
                    <table class="table table-striped">
                            <tr><td width="100">Search</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                           <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('templates_'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?><button class="btn btn-small btn-theme" type="submit"><i class="icon-search"></i>Search</button>
                            
                                </td></tr>
                        </table>
                </form>
            </div> 
    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
    <form action="<?php echo site_url('templates_/delete_select'); ?>" class="form-inline" method="post">
    <?php echo anchor(site_url('templates_/create'), '<i class="icon-file" aria-hidden="true"></i> Add New', 'class="btn btn-small btn-theme"'); ?>
       <button class="btn btn-small btn-theme" type="submit" name="delete" value="select"><i class="icon-check"></i></button>
		<?php echo anchor(site_url('templates_/excel'), '<i class="icon-table" aria-hidden="true"></i> Export Excel', 'class="btn btn-small btn-success"'); ?>
		<?php echo anchor(site_url('templates_/word'), '<i class="icon-list-alt" aria-hidden="true"></i> Export Word', 'class="btn btn-small btn-primary"'); ?>
		<?php echo anchor(site_url('templates_/pdf'), 'PDF', 'class="btn btn-small btn-danger"'); ?><div style="overflow-x:auto; overflow-x: scroll;">
<table class="table table-striped" style="margin-bottom: 10px">
            <tr>
                <th><input type="checkbox" id="checkall"></th>
                <th>No</th>
		<th>Template Id</th>
		<th>Template Name</th>
		<th>Template Type</th>
		<th>Discipline</th>
		<th>Template Title 1</th>
		<th>Template Title 2</th>
		<th>Template Title 3</th>
		<th width="200">Action</th>
            </tr><?php
            foreach ($templates__data as $templates_)
            {
                ?>
                <tr>
			 <td width="10px"><input type="checkbox" class="checkitem" name="pilih[]" value="<?=$templates_->id_template?>"></td>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $templates_->template_id ?></td>
			<td><?php echo $templates_->template_name ?></td>
			<td><?php echo $templates_->template_type ?></td>
			<td><?php echo $templates_->discipline_name ?></td>
			<td><?php echo $templates_->template_title_1 ?></td>
			<td><?php echo $templates_->template_title_2 ?></td>
			<td><?php echo $templates_->template_title_3 ?></td>
			<td>
				<?php 
				echo anchor(site_url('templates_/read/'.$templates_->id_template),'<i class="icon-desktop" aria-hidden="true"></i>'); 
				echo '  '; 
				echo anchor(site_url('templates_/update/'.$templates_->id_template),'<i class="icon-edit" aria-hidden="true"></i>'); 
				echo '  '; 
				echo anchor(site_url('templates_/delete/'.$templates_->id_template),'<i class="icon-trash" aria-hidden="true"></i>','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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