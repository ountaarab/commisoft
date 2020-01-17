<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>items</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Item No <?php echo form_error('item_no') ?></td><td><input type="text" class="form-control" name="item_no" id="item_no" placeholder="Item No" value="<?php echo $item_no; ?>" /></td></tr>
	    <tr><td width='200'>Discipline <?php echo form_error('item_discipline_no') ?></td>
            <td>
                <select class="form-control" name="item_discipline_no" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_discipline as $baris): ?>
                    <option value="<?= $baris->discipline_id ?>"><?= $baris->discipline_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>
	    <tr><td width='200'>Item Id <?php echo form_error('item_id') ?></td><td><input type="text" class="form-control" name="item_id" id="item_id" placeholder="Item Id" value="<?php echo $item_id; ?>" /></td></tr>
	    <tr><td width='200'>Item Name <?php echo form_error('item_name') ?></td><td><input type="text" class="form-control" name="item_name" id="item_name" placeholder="Item Name" value="<?php echo $item_name; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_items" value="<?php echo $id_items; ?>" /> 
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