

<section id="content">
      <div class="container">
        <div class="row">

          <div class="span12">
            <h4 class="title"><strong>Kelola</strong> Perusahaan</h4>

             <div class="row">
            <div class="span12">
                <div class="box box-warning box-solid">      
            <form action="<?php echo site_url('perusahaan/index'); ?>" class="form-inline" method="get">
                      <table class="table table-striped">
                            <tr><td width="250">Cari Data</td><td> <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                                    
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('perusahaan'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                                </td>
                                <td><button class="btn btn-primary btn-sm" type="submit">Search</button></td></tr>
                        </table>
                </form>
 
     
        
   

        </div>
       <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?> 

       <table class="table table-striped" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
        <th>Kode</th>
        <th>Nama Perusahaan</th>
        <th>Biodata</th>
        <th>No Izin</th>
        <th>No Hp</th>
        <th>No Pajak</th>
        <th>Alamat</th>
        <th>Tgl Berdiri</th>
        <th>Action</th>
            </tr><?php
            foreach ($perusahaan_data as $perusahaan)
            {
                ?>
                <tr>
            <td width="10px"><?php echo ++$start ?></td>
            <td><?php echo $perusahaan->kode ?></td>
            <td><?php echo $perusahaan->nama_perusahaan ?></td>
            <td><?php echo $perusahaan->biodata ?></td>
            <td><?php echo $perusahaan->no_izin ?></td>
            <td><?php echo $perusahaan->no_hp ?></td>
            <td><?php echo $perusahaan->no_pajak ?></td>
            <td><?php echo $perusahaan->alamat ?></td>
            <td><?php echo $perusahaan->tgl_berdiri ?></td>
            <td style="text-align:center" width="200px">
                <?php 
                echo anchor(site_url('perusahaan/read/'.$perusahaan->id_perusahaan),'<i class="icon-file" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
                echo '  '; 
                echo anchor(site_url('perusahaan/update/'.$perusahaan->id_perusahaan),'<i class="icon-edit" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
                echo '  '; 

                ?>
            </td>
        </tr>
                <?php
            }
            ?>
        </table>
        <?php echo $pagination ?>
      
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
   