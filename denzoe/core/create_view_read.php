<?php 

$string = "<section id=\"content\">
      <div class=\"container\">
        <div class=\"row\">

          <div class=\"span12\">
            <h4 class=\"title\"><strong>View</strong> ".  strtolower($c_url)."</h4>
        ";


$string.="<table class=\"table\">";
foreach ($non_pk as $row) {
    $string .= "\n\t    <tr><td>".label($row["column_name"])."</td><td><?php echo $".$row["column_name"]."; ?></td></tr>";
}
$string .= "\n\t    <tr><td></td><td><a href=\"<?php echo site_url('".$c_url."') ?>\" class=\"btn btn-default\">Cancel</a></td></tr>";
$string .= "\n\t</table>

</div>
</div>
</div>";



$hasil_view_read = createFile($string, $target."views/" . $c_url . "/" . $v_read_file);

?>