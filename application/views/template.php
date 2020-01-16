<?php $perus = $this->db->get_where('tbl_perusahaan','id_perusahaan=1')->row();?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title><?=$perus->nama_perusahaan ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Commisoft" />
  <meta name="author" content="AWD Karawang" />

  <!-- css -->
<!--   <link href="https://fonts.googleapis.com/css?family=Handlee|Open+Sans:300,400,600,700,800" rel="stylesheet"> -->
  <link href="<?=base_url('') ?>assets/css/bootstrap.css" rel="stylesheet" />
  <link href="<?=base_url('') ?>assets/css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="<?=base_url('') ?>assets/css/flexslider.css" rel="stylesheet" />
  <link href="<?=base_url('') ?>assets/css/prettyPhoto.css" rel="stylesheet" />
  <link href="<?=base_url('') ?>assets/css/camera.css" rel="stylesheet" />
  <link href="<?=base_url('') ?>assets/css/jquery.bxslider.css" rel="stylesheet" />
  <link href="<?=base_url('') ?>assets/css/style.css" rel="stylesheet" />

  <!-- Theme skin -->
  <link href="<?=base_url('') ?>assets/color/default.css" rel="stylesheet" />

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="<?=base_url('') ?>assets/ico/favicon.png" />

  <!-- =======================================================
    Theme Name: Eterna
    Theme URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>

  <div id="wrapper">

    <!-- start header -->
    <header>
      <div class="container">


        <div class="row nomargin pricing-box-wrap animated-fast flyIn">
          <div class="span2">
            <div class="logo">
              <a href="<?=base_url('') ?>"><img src="<?=base_url('assets/') ?>img/logo.png" alt="ARTA WEB DESIGN KARAWANG"/></a>
            </div>
          </div>
          <div class="span10">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                      <?php
        // chek settingan tampilan menu
        $setting = $this->db->get_where('tbl_setting',array('id_setting'=>1))->row_array();
        if($setting['value']=='ya'){
            // cari level user
            $id_user_level = $this->session->userdata('id_user_level');
            $sql_menu = "SELECT * 
            FROM tbl_menu 
            WHERE id_menu in(select id_menu from tbl_hak_akses where id_user_level=$id_user_level) and is_main_menu=0 and is_aktif='y' order by id_menu asc";
        }else{
            $sql_menu = "select * from tbl_menu where is_aktif='y' and is_main_menu=0 order by id_menu asc";
        }

        $main_menu = $this->db->query($sql_menu)->result();
        
        foreach ($main_menu as $menu){
            // chek is have sub menu
            $this->db->where('is_main_menu',$menu->id_menu);
            $this->db->where('is_aktif','y');
            $this->db->order_by('id_menu', 'asc');
            $submenu = $this->db->get('tbl_menu');
            if($submenu->num_rows()>0){
                // display sub menu
                echo "<li class='dropdown'>
                        <a href='#'>
                            <i class='$menu->icon'></i> <span>".strtolower($menu->title)."</span>
                            <span class='pull-right-container'>
                                <i class='fa fa-angle-left pull-right'></i>
                            </span>
                        </a>
                        <ul class='dropdown-menu' >";
                        foreach ($submenu->result() as $sub){
                            echo "<li>".anchor($sub->url,"<i class='$sub->icon'></i> ".strtolower($sub->title))."</li>"; 
                        }
                        echo" </ul>
                    </li>";
            }else{
                // display main menu
                echo "<li>";
                echo anchor($menu->url,"<i class='".$menu->icon."'></i> ".strtolower($menu->title));
                echo "</li>";
            }
        }
        ?>
                  <li><?php echo anchor('auth/logout',"<i class='icon-share-alt'></i> Logot");?></li>  
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- end header -->

    <!-- section featured -->
   
      <?=$contents ?>
    

    <footer>
      <div class="container">
        <div class="row">

          <div class="span12">
            <div class="widget">
              <h5 class="widgetheading">COMMISOFT</h5>
              			<address>
              				
							<strong><?=$perus->nama_perusahaan;?></strong><br>
							<?=$perus->alamat;?> <br>
						</address>
              <p>
                <i class="icon-phone"></i><?=$perus->no_hp;?><br>
                <i class="icon-envelope-alt"></i><?=$perus->email;?>
              </p>
            </div>
          </div>

        </div>
      </div>
      <div id="sub-footer">
        <div class="container">
          <div class="row">
            <div class="span6">
              <div class="copyright">
                <p><span>&copy; AWD. All right reserved</span></p>
              </div>

            </div>

            <div class="span6">
              <div class="credits">
                
                Designed by <a href="<?=base_url('') ?>">ARTA WEB DESIGN Karawang</a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bglight icon-2x active"></i></a>

  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script type="text/javascript" src="<?=base_url('') ?>assets/js/jquery.js"></script>

  <script src="<?=base_url('') ?>assets/js/jquery.easing.1.3.js"></script>
  <script src="<?=base_url('') ?>assets/js/bootstrap.js"></script>

  <script src="<?=base_url('') ?>assets/js/modernizr.custom.js"></script>
  <script src="<?=base_url('') ?>assets/js/toucheffects.js"></script>
  <script src="<?=base_url('') ?>assets/js/google-code-prettify/prettify.js"></script>
  <script src="<?=base_url('') ?>assets/js/jquery.bxslider.min.js"></script>
  <script src="<?=base_url('') ?>assets/js/camera/camera.js"></script>
  <script src="<?=base_url('') ?>assets/js/camera/setting.js"></script>

  <script src="<?=base_url('') ?>assets/js/jquery.prettyPhoto.js"></script>
  <script src="<?=base_url('') ?>assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="<?=base_url('') ?>assets/js/portfolio/setting.js"></script>

  <script src="<?=base_url('') ?>assets/js/jquery.flexslider.js"></script>
  <script src="<?=base_url('') ?>assets/js/animate.js"></script>
  <script src="<?=base_url('') ?>assets/js/inview.js"></script>


  <!-- Template Custom JavaScript File -->
  <script src="<?=base_url('assets/') ?>js/custom.js"></script>
  
<!-- <script data-ad-client="ca-pub-4134251302306842" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-151914649-1"></script> -->
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-151914649-1');
</script>

</body>
</html>
