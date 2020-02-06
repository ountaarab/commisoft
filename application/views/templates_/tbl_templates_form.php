<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>templates_</h4>
            <?=$this->session->flashdata('message');?>
            <form action="<?php echo $action; ?>" method="post" id="form-act">
            
<table class='table table-striped'>        

	    <tr><td width='180'>Template Id <?php echo form_error('template_id') ?></td><td><input type="text" class="form-control" name="template_id" id="template_id" placeholder="Template Id" value="<?php echo $template_id; ?>" /></td></tr>
	    <tr><td width='180'>Template Name <?php echo form_error('template_name') ?></td><td><input type="text" class="form-control" name="template_name" id="template_name" placeholder="Template Name" value="<?php echo $template_name; ?>" /></td></tr>
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
        <tr><td width='180'>Discipline <?php echo form_error('id_disciplines') ?></td>
            <td>
                <select class="form-control" name="id_disciplines" style="width: 400px" required>
                    <option value="">Choose</option>
            <?php
                foreach ($data_discipline as $baris): ?>
                    <option value="<?= $baris->id_discipline ?>" <?php if($id_disciplines==$baris->id_discipline) {echo " selected";} ?> ><?= $baris->discipline_name ?> (<?= $baris->project_name ?>)</option>
                <?php
                endforeach;
            ?>
                </select>
            </td>
        </tr>
	    <tr><td width='180'>Template Title 1 <?php echo form_error('template_title_1') ?></td><td><input type="text" class="form-control" name="template_title_1" id="template_title_1" placeholder="Template Title 1" value="<?php echo $template_title_1; ?>" /></td></tr>
	    <tr><td width='180'>Template Title 2 <?php echo form_error('template_title_2') ?></td><td><input type="text" class="form-control" name="template_title_2" id="template_title_2" placeholder="Template Title 2" value="<?php echo $template_title_2; ?>" /></td></tr>
	    <tr><td width='180'>Template Title 3 <?php echo form_error('template_title_3') ?></td><td><input type="text" class="form-control" name="template_title_3" id="template_title_3" placeholder="Template Title 3" value="<?php echo $template_title_3; ?>" /></td></tr>
        <tr>
            <td colspan="2"><span style="margin-left: 40%">CHECKLIST : </span>
                <br>
                <div class="input_fields_wrap">
                    <button class="add_field_button">Add Item Checklist</button>
                    <?php
                    if($detailtemplate != NULL): 
                        foreach ($detailtemplate as $baris):
                        $x=$baris->id_template_detail;
                        ?>
                        <div><input type="text" name="mytext[<?= $baris->id_template_detail ?>]" style="width: 85%" value="<?= $baris->template_item ?>" required>&nbsp;<a onclick="myFunction(<?= $baris->id_template_detail ?>, <?= $id_template ?>)">Remove</a></div>                        
                        <?php
                        endforeach;
                    ?>
                    <?php
                    else:
                    ?>
                        <div><input type="text" name="mytext[1]" style="width: 85%" required></div>
                    <?php
                    endif;
                    ?>
                </div>
            </td>
        </tr>
	    <tr><td></td><td><input type="hidden" name="id_template" value="<?php echo $id_template; ?>" /> 
	    <button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('templates_') ?>" id="btn-back" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a>
            <button class="btn btn-primary" type="button" style="display:none" id="btn-loading" disabled>
              <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
              Loading...
            </button>
        </td></tr>
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
        });


$(document).ready(function() {
    var max_fields      = 10; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID

    <?php 
    if($detailtemplate != NULL):
    ?>
    var x = <?= $x ?>; //initlal text box count
    <?php
    else:
    ?>
    var x = 1; //initlal text box count
    <?php
    endif;
    ?>
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
            x++; //text box increment
            $(wrapper).append('<div><input type="text" name="mytext['+x+']" style="width: 85%">&nbsp;<a href="#" class="remove_field">Remove</a></div>'); //add input box
    });
    
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
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
});
function myFunction($id, $id_template) {
  var txt;
  var page = '<?php echo base_url('templates_/delete_detail/') ?>';
  var id = $id;
  var id_template = $id_template;
  var r = confirm("Yakin Hapus Item ini?");
  if (r == true) {    
        $.ajax({
          type: 'GET',
          url: page+id+'/'+id_template,
          success: function(data){
            console.log(data);
            data = JSON.parse(data);
            if(data.status == 20) {
                if(data.return_url != '#') {
                  document.location.href=data.return_url;
                }
            } else  {
              alert(data.message);
            }
          },
          cache: false,
          contentType: false,
          processData: false,
          error: function(data) {
            alert(data);
          }
        });
  }
}
    </script>