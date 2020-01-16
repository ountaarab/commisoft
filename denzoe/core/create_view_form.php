<?php 

$string = "<section id=\"content\">
      <div class=\"container\">
        <div class=\"row\">

          <div class=\"span12\">
            <h4 class=\"title\"><strong>Form </strong>".  strtolower($c_url)."</h4>
            <?=\$this->session->flashdata('message');?>
            <form action=\"<?php echo \$action; ?>\" method=\"post\">
            
<table class='table table-striped'>        
";
foreach ($non_pk as $row) {
    if ($row["data_type"] == 'text')
    {
    $string .= "\n\t    
        <tr><td width='200'>".label($row["column_name"])." <?php echo form_error('".$row["column_name"]."') ?></td><td> <textarea class=\"form-control\" rows=\"3\" name=\"".$row["column_name"]."\" id=\"".$row["column_name"]."\" placeholder=\"".label($row["column_name"])."\"><?php echo $".$row["column_name"]."; ?></textarea></td></tr>";
    }elseif($row["data_type"]=='email'){
        $string .= "\n\t    <tr><td width='200'>".label($row["column_name"])." <?php echo form_error('".$row["column_name"]."') ?></td><td><input type=\"email\" class=\"form-control\" name=\"".$row["column_name"]."\" id=\"".$row["column_name"]."\" placeholder=\"".label($row["column_name"])."\" value=\"<?php echo $".$row["column_name"]."; ?>\" /></td></tr>";    
    }
    elseif($row["data_type"]=='date'){
        $string .= "\n\t    <tr><td width='200'>".label($row["column_name"])." <?php echo form_error('".$row["column_name"]."') ?></td><td><input type=\"date\" class=\"form-control\" name=\"".$row["column_name"]."\" id=\"".$row["column_name"]."\" placeholder=\"".label($row["column_name"])."\" value=\"<?php echo $".$row["column_name"]."; ?>\" /></td></tr>";    
        } 
    else
    {
    $string .= "\n\t    <tr><td width='200'>".label($row["column_name"])." <?php echo form_error('".$row["column_name"]."') ?></td><td><input type=\"text\" class=\"form-control\" name=\"".$row["column_name"]."\" id=\"".$row["column_name"]."\" placeholder=\"".label($row["column_name"])."\" value=\"<?php echo $".$row["column_name"]."; ?>\" /></td></tr>";
    }
}
$string .= "\n\t    <tr><td></td><td><input type=\"hidden\" name=\"".$pk."\" value=\"<?php echo $".$pk."; ?>\" /> ";
$string .= "\n\t    <button type=\"submit\" class=\"btn btn-danger\"><i class=\"fa fa-floppy-o\"></i> <?php echo \$button ?></button> ";
$string .= "\n\t    <a href=\"<?php echo site_url('".$c_url."') ?>\" class=\"btn btn-info\"><i class=\"fa fa-sign-out\"></i> back</a></td></tr>";
$string .= "\n\t</table></form> 
</div>
</div>
</div>
<script type=\"text/javascript\" src=\"<?=base_url('') ?>assets/js/jquery.js\"></script>
<script>
$('input').on(\"keypress\", function(e) {
            /* ENTER PRESSED*/
            if (e.keyCode == 13) {
                /* FOCUS ELEMENT */
                var inputs = $(this).parents(\"form\").eq(0).find(\":input\");
                var idx = inputs.index(this);

                if (idx == inputs.length - 1) {
                    inputs[0].select()
                } else {
                    inputs[idx + 1].focus(); //  handles submit buttons
                    inputs[idx + 1].select();
                }
                return false;
            }
        });</script>";

$hasil_view_form = createFile($string, $target."views/" . $c_url . "/" . $v_form_file);

?>