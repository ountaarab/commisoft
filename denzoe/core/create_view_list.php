<?php 

$string = " 
<section id=\"content\">
      <div class=\"container\">
        <div class=\"row\">

          <div class=\"span12\">
            <h4 class=\"title\"><strong>List </strong>".strtolower($c_url)."</h4>

             <div class=\"row\">
            <div class=\"span12\">
                <div class=\"box box-warning box-solid\"> 
    
            <form action=\"<?php echo site_url('$c_url/index'); ?>\" class=\"form-inline\" method=\"get\">
                    <table class=\"table table-striped\">
                            <tr><td width=\"100\">Search</td><td> <input type=\"text\" class=\"form-control\" name=\"q\" value=\"<?php echo \$q; ?>\">
                                    
                           <?php 
                                if (\$q <> '')
                                {
                                    ?>
                                    <a href=\"<?php echo site_url('$c_url'); ?>\" class=\"btn btn-default\">Reset</a>
                                    <?php
                                }
                            ?><button class=\"btn btn-small btn-theme\" type=\"submit\"><i class=\"icon-search\"></i>Search</button>
                            
                                </td></tr>
                        </table>
                </form>
            </div> 
    <?php echo \$this->session->userdata('message') <> '' ? \$this->session->userdata('message') : ''; ?>
    <form action=\"<?php echo site_url('".$c_url."/delete_select'); ?>\" class=\"form-inline\" method=\"post\">
    <?php echo anchor(site_url('".$c_url."/create'), '<i class=\"icon-file\" aria-hidden=\"true\"></i> Add New', 'class=\"btn btn-small btn-theme\"'); ?>
       <button class=\"btn btn-small btn-theme\" type=\"submit\" name=\"delete\" value=\"select\"><i class=\"icon-check\"></i></button>";

if ($export_excel == '1') {
    $string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/excel'), '<i class=\"icon-table\" aria-hidden=\"true\"></i> Export Excel', 'class=\"btn btn-small btn-success\"'); ?>";
}
if ($export_word == '1') {
    $string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/word'), '<i class=\"icon-list-alt\" aria-hidden=\"true\"></i> Export Word', 'class=\"btn btn-small btn-primary\"'); ?>";
}
if ($export_pdf == '1') {
    $string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/pdf'), 'PDF', 'class=\"btn btn-small btn-danger\"'); ?>";
}
$string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/pdf'), 'PDF', 'class=\"btn btn-small btn-danger\"'); ?>";
$string.="<div style=\"overflow-x:auto; overflow-x: scroll;\">
<table class=\"table table-striped\" style=\"margin-bottom: 10px\">
            <tr>
                <th><input type=\"checkbox\" id=\"checkall\"></th>
                <th>No</th>";
foreach ($non_pk as $row) {
    $string .= "\n\t\t<th>" . label($row['column_name']) . "</th>";
}
$string .= "\n\t\t<th width=\"200\">Action</th>
            </tr>";
$string .= "<?php
            foreach ($" . $c_url . "_data as \$$c_url)
            {
                ?>
                <tr>";
$string .= "\n\t\t\t <td width=\"10px\"><input type=\"checkbox\" class=\"checkitem\" name=\"pilih[]\" value=\"<?=\$".$c_url."->".$pk."?>\"></td>";
$string .= "\n\t\t\t<td width=\"10px\"><?php echo ++\$start ?></td>";
foreach ($non_pk as $row) {
    $string .= "\n\t\t\t<td><?php echo $" . $c_url ."->". $row['column_name'] . " ?></td>";
}


$string .= "\n\t\t\t<td>"
        . "\n\t\t\t\t<?php "
        . "\n\t\t\t\techo anchor(site_url('".$c_url."/read/'.$".$c_url."->".$pk."),'<i class=\"icon-desktop\" aria-hidden=\"true\"></i>'); "
        . "\n\t\t\t\techo '  '; "
        . "\n\t\t\t\techo anchor(site_url('".$c_url."/update/'.$".$c_url."->".$pk."),'<i class=\"icon-edit\" aria-hidden=\"true\"></i>'); "
        . "\n\t\t\t\techo '  '; "
        . "\n\t\t\t\techo anchor(site_url('".$c_url."/delete/'.$".$c_url."->".$pk."),'<i class=\"icon-trash\" aria-hidden=\"true\"></i>','onclick=\"javasciprt: return confirm(\\'Are You Sure ?\\')\"'); "
        . "\n\t\t\t\t?>"
        . "\n\t\t\t</td>";

$string .=  "\n\t\t</tr>
                <?php
            }
            ?>
        </table>
         <?php echo \$pagination ?>
        </div>
        </div>
            </div>
            </div>

            <div class=\"blankline30\"></div>
            <div class=\"solidline\"></div>
            <div class=\"blankline20\"></div>


          </div>

        </div>
      </div>
    </section>";
/*
if ($export_excel == '1') {
    $string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/excel'), 'Excel', 'class=\"btn btn-primary\"'); ?>";
}
if ($export_word == '1') {
    $string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/word'), 'Word', 'class=\"btn btn-primary\"'); ?>";
}
if ($export_pdf == '1') {
    $string .= "\n\t\t<?php echo anchor(site_url('".$c_url."/pdf'), 'PDF', 'class=\"btn btn-primary\"'); ?>";
}
 * 
 */
$string .= "<script type=\"text/javascript\" src=\"<?=base_url('') ?>assets/js/jquery.min.js\"></script>
    <script type=\"text/javascript\">

    $(document).ready(function(){
            $(\"#checkall\").click(function(){ // ketika di klick all
                if($(this).is(\":checked\")) //jika cekbok all di ceklis
                    $(\".checkitem\").prop(\"checked\",true); // ceklis semua 
                else // selain itu
                    $(\".checkitem\").prop(\"checked\",false); //  jangan ceklis semua 
            });
    
});
    </script>";


$hasil_view_list = createFile($string, $target."views/" . $c_url . "/" . $v_list_file);

?>