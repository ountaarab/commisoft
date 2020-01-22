<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>equipments</h4>
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

        <tr><td width='200'>System <?php echo form_error('id_systems') ?></td>
            <td>
                <select class="form-control" name="id_systems" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_systems as $baris): ?>
                    <option value="<?= $baris->id_system ?>" <?php if($id_systems==$baris->id_system) {echo " selected";} ?> ><?= $baris->system_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>

        <tr><td width='200'>Sub System <?php echo form_error('id_subs') ?></td>
            <td>
                <select class="form-control" name="id_subs" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_subs as $baris): ?>
                    <option value="<?= $baris->id_sub ?>" <?php if($id_subs==$baris->id_sub) {echo " selected";} ?> ><?= $baris->sub_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>

        <tr><td width='200'>Items Name <?php echo form_error('id_items') ?></td>
            <td>
                <select class="form-control" name="id_items" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_items as $baris): ?>
                    <option value="<?= $baris->id_item ?>" <?php if($id_items==$baris->id_item) {echo " selected";} ?> ><?= $baris->item_type_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>

	    <tr><td width='200'>Equipment No <?php echo form_error('equipment_no') ?></td><td><input type="text" class="form-control" name="equipment_no" id="equipment_no" placeholder="Equipment No" value="<?php echo $equipment_no; ?>" /></td></tr>
	    
        <tr><td width='200'>Equipment Desc <?php echo form_error('equipment_desc') ?></td><td> <textarea class="form-control" rows="3" name="equipment_desc" id="equipment_desc" placeholder="Equipment Desc"><?php echo $equipment_desc; ?></textarea></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_equipment" value="<?php echo $id_equipment; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('equipments') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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