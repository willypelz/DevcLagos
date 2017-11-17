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

                                            background: url('<?php echo $about_header_img; ?>') no-repeat center center fixed;
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
                        <?php endif; ?>  <?php echo $lang['about']; ?> <?php echo $lang['us']; ?></h1>
                    <p><?php echo $about_top_title; ?></p>
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
                        <?php echo $about_hello; ?>
                    </div><!-- /.col-lg-12 -->
                </div><!-- /.row -->
            </div> <!-- /.container -->
        </section><!-- End section-->

        <!-- ==============================================
Timeline Section
=============================================== -->	  
        <section class="time">
            <div class="container">

                <h3><?php echo $lang['our']; ?> <?php echo $lang['timeline']; ?></h3>
                <hr class="mint">
                <p class="top-p"><?php echo $timelinetagline; ?></p>

                <ul class="timeline">

                    <?php
                    $query = DB::getInstance()->get("timeline", "*", ["ORDER" => "item_order ASC"]);
                    if($query->count()) {

                        $x = 1;
                        foreach($query->results() as $row) {
                            $List = '';
                            $additionalClass = ($x % 2) == 0 ? "timeline-inverted" : "";

                            echo $List .= '

			        <li class="'. $additionalClass .'">
			         <div class="timeline-badge mint"><i class="fa '. escape($row->icon) .'"></i></div>
			         <div class="timeline-panel revealOnScroll" data-animation="slideInLeft" data-timeout="200">
			          <div class="timeline-heading">
			           <h4 class="timeline-title">'. escape($row->title) .'</h4>
			          </div>
			          <div class="timeline-body">
			           <p>'. escape($row->description) .'</p>
			          </div>
			         </div>
			        </li>	
					 ';

                            unset($List);	 
                            $x++;		

                        }
                    }else {
                        echo $List = '<p>'.$lang['no_content_found'].'</p>';
                    }
                    ?>       	

                </ul>
                <!-- /ul.timeline -->
            </div><!-- /.container -->
        </section><!-- /section -->

        <!-- ==============================================
White Section
=============================================== -->		  
        <section class="whitebg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h3><?php echo $about_whitebg; ?></h3>
                    </div><!-- /.col-lg-8 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /w -->

        <!-- ==============================================
Team Section
=============================================== -->	
        <section id="team" class="team">
            <div class="container">
                <!-- Title Page -->
                <div class="row text-center">
                    <div class="col-lg-12">	   
                        <h3><?php echo $lang['our']; ?> <?php echo $lang['team']; ?></h3>
                        <hr class="mint">
                        <p class="top-p"><?php echo $teamtagline; ?></p>
                    </div><!-- /.col-lg-12 -->
                </div><!-- /.row -->
                <!-- End Title Page -->

                <?php
                $query = DB::getInstance()->get("team", "*", ["testimony" => 2]);
                if($query->count()) {

                    /*
            Start with variables to help with row creation;
          */
                    $startRow = true;
                    $postCounter = 0;
                    $x = 1;
                    foreach($query->results() as $row) {
                        $List = '';
                        /*
              Check whether we need to add the start of a new row.
              If true, echo a div with the "row" class and set the startRow variable to false 
              If false, do nothing. 
            */
                        if ($startRow) {
                            echo '<!-- START OF INTERNAL ROW --><div class="row">';
                            $startRow = false;
                        } 
                        /* Add one to the counter because a new post is being added to your page.  */ 
                        $postCounter += 1; 

                        echo $List .= '
			        <div class="col-lg-4 profile">
			         <div class="image-wrap">
			          <div class="hover-wrap">
			           <span class="overlay-img"></span>
			           <span class="overlay-text-thumb">'. escape($row->title) .'</span>          
			           </div>
			          <img src="Admin/'. escape($row->imagelocation) .'" alt="'. escape($row->name) .'">         
			          </div>
			         <h5 class="profile-name">'. escape($row->name) .'</h5>
			         <p class="profile-description">'. escape($row->description) .'</p>

					 <div class="social">
					  <ul class="social-icons">
					   <li><a href="'. escape($row->facebook) .'" target="_blank"><i class="fa fa-facebook"></i></a></li>
					   <li><a href="'. escape($row->twitter) .'" target="_blank"><i class="fa fa-twitter"></i></a></li>
					   <li><a href="'. escape($row->linkedin) .'" target="_blank"><i class="fa fa-linkedin"></i></a></li>
				      </ul>
					 </div><!-- /.social -->
			        </div><!-- /.col-lg-4 -->
					 ';

                        unset($List);	 
                        $x++;		

                        /*
            Check whether the counter has hit 3 posts.  
            If true, close the "row" div.  Also reset the $startRow variable so that before the next post, a new "row" div is being created. Finally, reset the counter to track the next set of three posts.
            If false, do nothing. 
            */
                        if ( 3 === $postCounter ) {
                            echo '</div><!-- END OF INTERNAL ROW -->';
                            $startRow = true;
                            $postCounter = 0;
                        }  
                    }
                }else {
                    echo $List = '<p>'.$lang['no_content_found'].'</p>';
                }
                ?>       

            </div><!-- /.container -->
        </section>
        <!-- End About Section -->        	 

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
