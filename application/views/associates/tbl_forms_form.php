<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>associates</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post" id="form-act">
            
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
        <tr>
            <td width='180'>Template Type <?php echo form_error('template_type') ?></td>
            <td>
                <select class="form-control" name="template_type" id="template_type" required>
                    <option value="">Choose</option>
                    <option value="Test Sheet" <?php if($template_type=="Test Sheet"){echo" selected";} ?> >Test Sheet</option>
                    <option value="Check Sheet" <?php if($template_type=="Check Sheet"){echo" selected";} ?> >Check Sheet</option>
                </select>
            </td>
        </tr>
        <tr><td width='200'>Templates Name <?php echo form_error('id_templates') ?></td>
            <td>
                <select class="form-control" name="id_templates" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_templates as $baris): ?>
                    <option value="<?= $baris->id_template ?>" <?php if($id_templates==$baris->id_template) {echo " selected";} ?> ><?= $baris->template_name ?></option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>
	    <tr><td></td><td><input type="hidden" name="id_form" value="<?php echo $id_form; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('associates') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
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
        });




      $('#form-act').submit(function(e) {
        $('button[type=submit]').prop('disabled', true);
        $('#btn-back').hide();
        $('#btn-loading').show();
        $.ajax({
          type: 'POST',
          url: $(this).attr('action'),
          data: new FormData($(this)[0]),
          success: function(data){
            // console.log(data);
            data = JSON.parse(data);
            if(data.status == 20) {
              alert(data.message);
                if(data.return_url != '#') {
                  document.location.href=data.return_url;
                }
            } else  {
              alert(data.message);
            }
            $('button[type=submit]').prop('disabled', false);
            $('#btn-back').show();
            $('#btn-loading').hide();
          },
          cache: false,
          contentType: false,
          processData: false,
          error: function(data) {
            alert(data);
            $('button[type=submit]').prop('disabled', false);
            $('#btn-back').show();
            $('#btn-loading').hide();
          }
        });
        e.preventDefault();
      });
    </script>