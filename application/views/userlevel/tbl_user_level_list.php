 


 <section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Kelola</strong> User Level</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid">
        
        
            <form action="<?php echo site_url('userlevel/index'); ?>" class="form-inline" method="get">
                      <table class="table table-striped">
                            <tr><td width="250">Cari Data</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('userlevel'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                                </td>
                                <td><button class="btn btn-primary btn-sm" type="submit">Search</button></td></tr>
                        </table>
                </form>
 
     
        
   

        </div>
       <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?> 

        <form action="<?php echo site_url('userlevel/delete_select'); ?>" class="form-inline" method="post">
        <button class="btn btn-small btn-theme" type="submit"><i class="icon-trash"></i>Hapus Terpilih </button>   
        <a href="<?php echo site_url('userlevel/create'); ?>" class="btn btn-small btn-theme"><i class="icon-chevron-down"></i> Tambah Data</a> 
        <?php echo anchor(site_url('userlevel/excel'), '<i class="icon-file" aria-hidden="true"></i> Export Ms Excel', 'class="btn btn-small btn-theme"'); ?>
        <?php echo anchor(site_url('userlevel/word'), '<i class="icon-file" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-small btn-theme"'); ?>
        
        <table class="table table-striped" style="margin-bottom: 10px">
            <tr>
            <th><input type="checkbox" id="checkall"></th>
            <th>No</th>
            <th>Nama Level</th>
            <th>Bagian</th>
            <th>Action</th>
            </tr><?php
            foreach ($userlevel_data as $userlevel)
            {
                ?>
                <tr>
            <td width="10px"><input type="checkbox" class="checkitem" name="pilih[]" value="<?=$userlevel->id_user_level?>"></td>
            <td width="10px"><?php echo ++$start ?></td>
            <td><?php echo $userlevel->nama_level ?></td>
            <td><?php echo $userlevel->bagian ?></td>
            <td>
                <?php 
                echo anchor(site_url('userlevel/akses/'.$userlevel->id_user_level),'<i class="icon-desktop" ></i>','class="btn btn-danger btn-sm"'); 
                echo '  '; 
                // echo anchor(site_url('userlevel/read/'.$userlevel->id_user_level),'<i class="icon-file" ></i>','class="btn btn-danger btn-sm"'); 
                // echo '  '; 
                echo anchor(site_url('userlevel/update/'.$userlevel->id_user_level),'<i class="icon-edit" ></i>','class="btn btn-danger btn-sm"'); 
                echo '  ';
                 echo anchor(site_url('userlevel/delete/'.$userlevel->id_user_level),'<i class="icon-trash" ></i>','class="btn btn-danger btn-sm"'); 
                echo '  ';  

                ?>
            </td>
        </tr>
                <?php
            }
            ?>
        </table> 
        <?php echo $pagination ?></form>
      
            </div>
            </div>
            </div>

            <div class="blankline30"></div>
            <div class="solidline"></div>
            <div class="blankline20"></div>


          </div>

        </div>
      </div>
    </section>
      <script type="text/javascript" src="<?=base_url('') ?>assets/js/jquery.min.js"></script>
    <script type="text/javascript">

    $(document).ready(function(){
            $("#checkall").click(function(){ // ketika di klick all
                if($(this).is(":checked")) //jika cekbok all di ceklis
                    $(".checkitem").prop("checked",true); // ceklis semua 
                else // selain itu
                    $(".checkitem").prop("checked",false); //  jangan ceklis semua 
            });
    
});
    </script>

