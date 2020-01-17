<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>items</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Projects Name <?php echo form_error('id_projects') ?></td>
            <td>
                <select class="form-control" name="id_projects" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_projects as $baris): ?>
                    <option value="<?= $baris->id_project ?>" <?php if($id_projects==$baris->id_project) {echo " selected";} ?> ><?= $baris->project_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>
        <tr><td width='200'>Discipline <?php echo form_error('id_disciplines') ?></td>
            <td>
                <select class="form-control" name="id_disciplines" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_discipline as $baris): ?>
                    <option value="<?= $baris->id_discipline ?>" <?php if($id_disciplines==$baris->id_discipline) {echo " selected";} ?> ><?= $baris->discipline_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>
	    <tr><td width='200'>Item Type Id <?php echo form_error('item_type_id') ?></td><td><input type="text" class="form-control" name="item_type_id" id="item_type_id" placeholder="Item Type Id" value="<?php echo $item_type_id; ?>" /></td></tr>
	    <tr><td width='200'>Item Type Name <?php echo form_error('item_type_name') ?></td><td><input type="text" class="form-control" name="item_type_name" id="item_type_name" placeholder="Item Type Name" value="<?php echo $item_type_name; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_item" value="<?php echo $id_item; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('items') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
	</table></form> 
</div>
</div>
</div>
<script type="text/javascript" src="<?=base_url('') ?>assets/js/jquery.js"></script>
<script>
$('input').on("keypress", function(e) {
            /* ENTER PRESSED*/
            if (e.keyCode == 13) {
                /* FOCUS ELEMENT */
                var inputs = $(this).parents("form").eq(0).find(":input");
                var idx = inputs.index(this);

                if (idx == inputs.length - 1) {
                    inputs[0].select()
                } else {
                    inputs[idx + 1].focus(); //  handles submit buttons
                    inputs[idx + 1].select();
                }
                return false;
            }
        });</script>