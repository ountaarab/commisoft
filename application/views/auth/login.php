<!DOCTYPE html>
<html>
   <head>
  <meta charset="utf-8">
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="login now" />
  <meta name="author" content="AWD arta web design" />

  <!-- css -->
  <!-- <link href="https://fonts.googleapis.com/css?family=Handlee|Open+Sans:300,400,600,700,800" rel="stylesheet"> -->
  <link href="<?=base_url('assets/') ?>css/bootstrap.css" rel="stylesheet" />
  <link href="<?=base_url('assets/') ?>css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="<?=base_url('assets/') ?>css/flexslider.css" rel="stylesheet" />
  <link href="<?=base_url('assets/') ?>css/prettyPhoto.css" rel="stylesheet" />
  <link href="<?=base_url('assets/') ?>css/camera.css" rel="stylesheet" />
  <link href="<?=base_url('assets/') ?>css/jquery.bxslider.css" rel="stylesheet" />
  <link href="<?=base_url('assets/') ?>css/style.css" rel="stylesheet" />

  <!-- Theme skin -->
  <link href="<?=base_url('assets/') ?>color/default.css" rel="stylesheet" />

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="<?=base_url('assets/') ?>ico/favicon.png" />
  

  <!-- =======================================================
    Theme Name: Eterna
    Theme URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>
    <body>
         <!-- slideshow start here -->

    <section id="content">
      <div class="container aligncenter">



        <div class="row">
            <div class="span4">
            </div>
            <div class="span4">
                <div class="pricing-box-wrap animated-fast flyIn">
                  <div class="aligncenter">
                    <img src="<?=base_url('assets/') ?>img/logo.png" alt="" />
                  </div>
               <?php
                $status_login = $this->session->userdata('status_login');
                if (empty($status_login)) {
                    $message = "Login Now";
                } else {
                    $message = $status_login;
                }
                ?>
   

                  <div class="pricing-content">
                    <?php echo $message; ?>
                    <?php echo form_open('auth/cheklogin'); ?>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="username">
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                <button class="btn btn-primary btn-small" type="submit">Login</button>
                <button class="btn btn-success btn-small" type="reset">Reset</button>
                <p>
                </div>
                <div class="form-group">
               &nbsp;
                <p>
                </div>
                </form>
                  </div>
                 
                </div>
            <div class="span4">
            </div>
              </div>
         
        </div>
      </div>
  </section>
 <a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bglight icon-2x active"></i></a>

  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="<?=base_url('assets/') ?>js/jquery.js"></script>
  <script src="<?=base_url('assets/') ?>js/jquery.easing.1.3.js"></script>
  <script src="<?=base_url('assets/') ?>js/bootstrap.js"></script>

  <script src="<?=base_url('assets/') ?>js/modernizr.custom.js"></script>
  <script src="<?=base_url('assets/') ?>js/toucheffects.js"></script>
  <script src="<?=base_url('assets/') ?>js/google-code-prettify/prettify.js"></script>
  <script src="<?=base_url('assets/') ?>js/jquery.bxslider.min.js"></script>
  <script src="<?=base_url('assets/') ?>js/camera/camera.js"></script>
  <script src="<?=base_url('assets/') ?>js/camera/setting.js"></script>

  <script src="<?=base_url('assets/') ?>js/jquery.prettyPhoto.js"></script>
  <script src="<?=base_url('assets/') ?>js/portfolio/jquery.quicksand.js"></script>
  <script src="<?=base_url('assets/') ?>js/portfolio/setting.js"></script>

  <script src="<?=base_url('assets/') ?>js/jquery.flexslider.js"></script>
  <script src="<?=base_url('assets/') ?>js/animate.js"></script>
  <script src="<?=base_url('assets/') ?>js/inview.js"></script>

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
