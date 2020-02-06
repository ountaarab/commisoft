<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>projects</h4> 
            <?php if(!empty($this->session->flashdata('message'))){ echo alert('alert-primary', 'message', $this->session->flashdata('message'));} ?>
           
<form action="<?php echo $action; ?>" method="post" class="form">
<table class='table table-striped'>        
	    <tr>
        <td width='200'>Project Id <?php echo form_error('project_id') ?></td>
        <td>
        <input type="text" class="form-control" name="project_id" id="project_id" placeholder="Project Id" value="<?php echo $project_id; ?>"  /></td>
        <input type="hidden" class="form-control" name="id_project"  placeholder="Project Name" value="<?php echo $id_project; ?>" /></td>
      </tr>

      <tr>
        <td width='200'>Project Name <?php echo form_error('project_name') ?></td>
        <td>
          <input type="text" class="form-control" name="project_name" id="project_name" placeholder="Project Name" value="<?php echo $project_name; ?>" /></td>
      </tr>
      
      <tr>
        <td width='200'>Project Desc <?php echo form_error('project_desc') ?></td>
        <td> <textarea class="form-control" rows="1" style="width: 50%" name="project_desc" id="project_desc" placeholder="Project Desc" ><?php echo $project_desc; ?></textarea></td>
      </tr>

      <tr><td></td><td>
	    <button type="submit" class="btn btn-danger" id="submit" ><i class="fa fa-floppy-o"> </i> <?php echo $button ?> </button> 
	    <a href="<?php echo site_url('projects') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Back</a></td>
      </tr>
</table>
</form> 
</div>
</div>
</section>

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
</script>

