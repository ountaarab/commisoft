<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Form </strong>subs</h4>
           <?php if(!empty($this->session->flashdata('message'))){ echo alert('alert-success', 'message', $this->session->flashdata('message'));} ?>
            <form action="<?php echo $action; ?>" method="post">
            
<table class='table table-striped'>        

	    <tr>
	    	<td width='200'>System Name <?php echo form_error('sub_system_no') ?></td>
	    	<td> 
	    <select class="form-control" name="sub_system_no" id="sub_system_no" >
	    <?php if(!empty($sub_system_no)){ ?>
	    <option value="<?=$sub_system_no;?>"><?php $x =$this->db->get_where('tbl_systems','id = '.$sub_system_no.'')->row();echo $x->system_name;?></option>
	    <?php } ?>
	    <?php 
	    $status = 0;
	    $this->db->select('tbl_systems.*,tbl_projects.project_name,tbl_projects.project_status');
        $this->db->where('tbl_systems.system_status', $status);
        $this->db->where('tbl_projects.project_status', $status);
        $this->db->from('tbl_systems');
        $this->db->join('tbl_projects', 'tbl_systems.system_project_no = tbl_projects.id');
	    $system =  $this->db->get()->result();?>
	    <?php foreach ($system as $key) { ?>
        <option value="<?=$key->id;?>"><?=$key->system_name;?></option>
        <?php } ?>
        </select>
	 
	    	</td>
	    </tr>
	    <tr>
	    	<td width='200'>Sub Id <?php echo form_error('sub_id') ?></td>
	    	<td><input type="text" class="form-control" name="sub_id" id="sub_id" placeholder="Sub Id" value="<?php echo $sub_id; ?>" /></td>
	    </tr>
	    <tr>
	    	<td width='200'>Sub Name <?php echo form_error('sub_name') ?></td>
	    	<td><input type="text" style="width: 50%"  class="form-control" name="sub_name" id="sub_name" placeholder="Sub Name" value="<?php echo $sub_name; ?>"/></td>
	    </tr>
	    	<td></td>
	    	<td><input type="hidden" name="id" value="<?php echo $id; ?>" /> 
	    <button type="submit" class="btn btn-danger" id="submit"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
	    <a href="<?php echo site_url('subs') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> back</a></td></tr>
	</table></form> 
</div>
</div>
</div>
<script>


// function nextfield_sub_no(event){  // fungsi saat tombol enter
//     if(event.keyCode == 13 || event.which == 13){
//   document.getElementById('sub_system_no').focus();
//   $("#submit").prop('disabled', true);

//     } 
// }

function nextfield_sub_system_no(event){  // fungsi saat tombol enter
    if(event.keyCode == 13 || event.which == 13){
  document.getElementById('sub_id').focus();
  $("#submit").prop('disabled', true);
    } 
}

function nextfield_sub_id(event){  // fungsi saat tombol enter
    if(event.keyCode == 13 || event.which == 13){
  document.getElementById('sub_name').focus();
  $("#submit").prop('disabled', true);
    } 
}

function nextfield_sub_name(event){  // fungsi saat tombol enter
    if(event.keyCode == 13 || event.which == 13){
  $("#submit").prop('disabled', false);
    } 
}
</script>