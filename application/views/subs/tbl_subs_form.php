<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>subs</h4>
           <?php if(!empty($this->session->flashdata('message'))){ echo alert('alert-success', 'message', $this->session->flashdata('message'));} ?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

    <tr>
      <td width='200'>Project Category <?php echo form_error('list_project') ?></td>
      <td> 
        <select class="form-control" name="list_project" id="list_project" >
            <option value="">-Choose-</option>
          <?php foreach ($list_project->result_array() as $key) { ?>
            <option value="<?php echo $key['id_project']; ?>">
              <?php echo $key['project_name'];?>
            </option>
          <?php } ?>
        </select>
      </td>
    </tr>

     <tr>
      <td width='200'>System Category <?php echo form_error('list_system') ?></td>
      <td> 
        <select class="form-control" name="list_system" id="list_system" required>
        </select>
      </td>
    </tr>

    

    <tr>
    	<td width='200'>Sub Id <?php echo form_error('sub_id') ?></td>
    	<td><input type="text" class="form-control" name="sub_id" id="sub_id" placeholder="Sub Id" value="<?php echo $sub_id; ?>" /></td>
    </tr>

    <tr>
    	<td width='200'>Sub Name <?php echo form_error('sub_name') ?></td>
    	<td><input type="text" class="form-control" name="sub_name" id="sub_name" placeholder="Sub Name" value="<?php echo $sub_name; ?>"/></td>
    </tr>
    	<td></td>
    	<td>
	    	<input type="hidden" name="id_sub" value="<?php echo $id_sub; ?>" /> 
		    <button type="submit" class="btn btn-danger" id="submit"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
		    <a href="<?php echo site_url('subs') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a>
	    </td>
	</tr>

</table>
</form> 

</div>
</div>
</div>

    <script type="text/javascript">
        $('#list_project').change(function(){
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
                    $('#list_system').html('<option value="">-Choose-</option>'+html);                     
                }
            });
        });
  </script>