<?php
//Check if init.php exists
if(!file_exists('core/frontinit.php')){
    header('Location: install/');        
    exit;
}else{
    require_once 'core/frontinit.php';	
}


?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en"> 
    <!--<![endif]-->

    <!-- Include header.php. Contains header content. -->
    <?php include ('includes/template/header.php'); ?> 

    <body class="greybg">

        <!-- Include navigation.php. Contains navigation content. -->
        <?php include ('includes/template/navigation.php'); ?> 

        <!-- ==============================================
Header
=============================================== -->	 
        <header class="header-about" style="

                                            background: url('<?php echo $faq_header_img; ?>') no-repeat center center fixed;
                                            background-size: cover;
                                            background-position: center center;
                                            -webkit-background-size: cover;
                                            -moz-background-size: cover;
                                            -o-background-size: cover;
                                            color: #fff;
                                            height: 65vh;
                                            width: 100%;

                                            display: flex;
                                            flex-direction: column;
                                            justify-content: center;
                                            align-items: center;
                                            text-align: center;">
            <div class="content">
                <div class="row">
                    <h1 class="revealOnScroll" data-animation="fadeInDown">
                        <?php if($use_icon === '1'): ?>
                        <i class="fa <?php echo $site_icon; ?>"></i>
                        <?php endif; ?>  <?php echo $lang['faq']; ?></h1>
                    <p><?php echo $faq_top_title; ?></p>
                </div><!-- /.row -->
            </div><!-- /.content -->
        </header><!--./header -->	

        <!-- ==============================================
Hello Section
=============================================== -->

        <section class="hello" id="hello">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <iframe width="350"  height="430" src="https://console.dialogflow.com/api-client/demo/embedded/09d47c98-917c-4827-8582-e27e8b3150f8" style="float: right; " scrolling="no"></iframe>
                        <div style="float: left; width:250px">
                            <h1>FAQ section</h1>

                        </div>
                    </div><!-- /.col-lg-12 -->
                </div><!-- /.row -->
                <?php echo $faq_hello; ?>
            </div> <!-- /.container -->
        </section><!-- End section-->

        <!-- Include footer.php. Contains footer content. -->
        <?php include ('includes/template/footer.php'); ?> 

        <a id="scrollup">Scroll</a>

        <!-- ==============================================
Scripts
=============================================== -->

        <!-- jQuery 2.1.4 -->
        <script src="assets/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
        <!-- Bootstrap 3.3.6 JS -->
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Kafe JS -->
        <script src="assets/js/kafe.js" type="text/javascript"></script>

    </body>
</html>
