<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>punchlists</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr><td width='200'>Punch Id <?php echo form_error('punch_id') ?></td><td><input type="text" class="form-control" name="punch_id" id="punch_id" placeholder="Punch Id" value="<?php echo $punch_id; ?>" /></td></tr>
	    <?php 
        // Modif By Fazri =========================================
        ?>
        <tr>
            <td width='200'>
                Id Locations <?php echo form_error('id_locations') ?>
            </td>
            <td>
                <input type="text" class="form-control" name="id_locations" id="id_locations" placeholder="Id Locations" value="<?php echo $id_locations; ?>" />
            </td>
        </tr>

        <tr><td width='200'>Sub System <?php echo form_error('id_subs') ?></td>
            <td>
                <select class="form-control" name="id_subs" id="id_subs" required>
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

        <tr><td width='200'>Equipment <?php echo form_error('id_equipments') ?></td>
            <td>
                <select class="form-control" name="id_equipments" id="id_equipments" required>
                </select>
            </td>
        </tr>
        <?php 
        // Modif By Fazri =========================================
        ?>
        <tr><td width='200'>Punch Desc <?php echo form_error('punch_desc') ?></td><td> <textarea class="form-control" rows="3" name="punch_desc" id="punch_desc" placeholder="Punch Desc"><?php echo $punch_desc; ?></textarea></td></tr>
	    <tr><td width='200'>Punch Category <?php echo form_error('punch_category') ?></td><td><input type="text" class="form-control" name="punch_category" id="punch_category" placeholder="Punch Category" value="<?php echo $punch_category; ?>" /></td></tr>
	    <tr><td width='200'>Originator Ctr <?php echo form_error('originator_ctr') ?></td><td><input type="text" class="form-control" name="originator_ctr" id="originator_ctr" placeholder="Originator Ctr" value="<?php echo $originator_ctr; ?>" /></td></tr>
	    <tr><td width='200'>Originator Cpy <?php echo form_error('originator_cpy') ?></td><td><input type="text" class="form-control" name="originator_cpy" id="originator_cpy" placeholder="Originator Cpy" value="<?php echo $originator_cpy; ?>" /></td></tr>
	    <tr><td width='200'>Originator Date <?php echo form_error('originator_date') ?></td><td><input type="date" class="form-control" name="originator_date" id="originator_date" placeholder="Originator Date" value="<?php echo $originator_date; ?>" /></td></tr>
	    <tr><td width='200'>Verified Ctr <?php echo form_error('verified_ctr') ?></td><td><input type="text" class="form-control" name="verified_ctr" id="verified_ctr" placeholder="Verified Ctr" value="<?php echo $verified_ctr; ?>" /></td></tr>
	    <tr><td width='200'>Verified Cpy <?php echo form_error('verified_cpy') ?></td><td><input type="text" class="form-control" name="verified_cpy" id="verified_cpy" placeholder="Verified Cpy" value="<?php echo $verified_cpy; ?>" /></td></tr>
	    <tr><td width='200'>Verified Date <?php echo form_error('verified_date') ?></td><td><input type="date" class="form-control" name="verified_date" id="verified_date" placeholder="Verified Date" value="<?php echo $verified_date; ?>" /></td></tr>
	    <tr><td width='200'>Punch Status <?php echo form_error('punch_status') ?></td><td><input type="text" class="form-control" name="punch_status" id="punch_status" placeholder="Punch Status" value="<?php echo $punch_status; ?>" /></td></tr>
	    <tr><td width='200'>Punch Date <?php echo form_error('punch_date') ?></td><td><input type="date" class="form-control" name="punch_date" id="punch_date" placeholder="Punch Date" value="<?php echo $punch_date; ?>" /></td></tr>
	    <tr><td></td><td><input type="hidden" name="id_punch" value="<?php echo $id_punch; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('punchlists') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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



    <script type="text/javascript">
        $('#id_subs').change(function(){
            var id=$(this).val();
            $.ajax({
                url : "<?php echo base_url();?>Ajax/get_equi_by_subs/"+id,
                method : "GET",
                async : false,
                dataType : 'json',
                success: function(data){
                    var html = '';
                    var i;
                    for(i=0; i<data.length; i++){
                        html += '<option value="'+data[i].id_equipment+'">'+data[i].equipment_no+'</option>';
                    }
                    $('#id_equipments').html('<option value="">-Choose-</option>'+html);
                }
            });
        });
    </script>