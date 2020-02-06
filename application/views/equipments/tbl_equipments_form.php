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
                <select class="form-control" name="id_projects" id="id_projects" required>
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
                <select class="form-control" name="id_systems" id="id_systems" required>
                    <?php 
                    if($id_systems != NULL){
                    ?>
                    <option value="<?= $id_systems ?>" selected><?= $system_name ?></option>
                    <?php 
                    }
                    ?>
                </select>
            </td>
        </tr>

        <tr><td width='200'>Sub System <?php echo form_error('id_subs') ?></td>
            <td>
                <select class="form-control" name="id_subs" id="id_subs" required>
                    <?php 
                    if($id_subs != NULL){
                    ?>
                    <option value="<?= $id_subs ?>" selected><?= $sub_name ?></option>
                    <?php 
                    }
                    ?>
                </select>
            </td>
        </tr>

        <tr><td width='200'>Items Name <?php echo form_error('id_items') ?></td>
            <td>
                <select class="form-control" name="id_items" id="id_items" required>
                    <?php 
                    if($id_items != NULL){
                    ?>
                    <option value="<?= $id_items ?>" selected><?= $item_type_name ?></option>
                    <?php 
                    }
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
        $('#id_projects').change(function(){
            var id=$(this).val();
            $.ajax({
                url : "<?php echo base_url();?>Ajax/get_system_by_proj/"+id,
                method : "GET",
                async : false,
                dataType : 'json',
                success: function(data){
                    var html = '';
                    var i;
                    for(i=0; i<data.length; i++){
                        html += '<option value="'+data[i].id_system+'">'+data[i].system_name+'</option>';
                    }
                    $('#id_systems').html('<option value="">-Choose-</option>'+html);                     
                    $('#id_subs').html('<option value="">-Choose-</option>');

                    $.ajax({
                        url : "<?php echo base_url();?>Ajax/get_items_by_proj/"+id,
                        method : "GET",
                        async : false,
                        dataType : 'json',
                        success: function(data){
                            var html = '';
                            var i;
                            for(i=0; i<data.length; i++){
                                html += '<option value="'+data[i].id_item+'">'+data[i].item_type_name+'</option>';
                            }               
                            $('#id_items').html('<option value="">-Choose-</option>'+html);
                            
                        }
                    });
                }
            });
        });

        $('#id_systems').change(function(){
            var id_s=$(this).val();
            var id_p=$('#id_projects').val();
            $.ajax({
                url : "<?php echo base_url();?>Ajax/get_subsystem_by_proj_AND_sys/"+id_s+"/"+id_p,
                method : "GET",
                async : false,
                dataType : 'json',
                success: function(data){
                    var html = '';
                    var i;
                    for(i=0; i<data.length; i++){
                        html += '<option value="'+data[i].id_sub+'">'+data[i].sub_id+' - '+data[i].sub_name+'</option>';
                    }
                    $('#id_subs').html('<option value="">-Choose-</option>'+html);                     
                }
            });
        });
  </script>