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
	 <header class="header" style="
	 <?php if ($header_img !== 'assets/img/header/1.jpg') { ?>
    background: linear-gradient(
      rgba(34,34,34,0.5), 
      rgba(34,34,34,0.5)
    ), url('<?php echo $header_img; ?>') no-repeat center center fixed;
   background-size: cover;
  background-position: center center;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  color: #fff;
  height: 100vh;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
 <?php }else{ ?>
  background: url('<?php echo $header_img; ?>') repeat 50% 0;
  color: #fff;
  height: 100vh;
  width: 100%;  
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;"
	 <?php } ?>>
      <div class="container">
        <div class="row">
		<div class="banner-content">
		<h2 class="banner-title"><?php echo $top_title; ?></h2>
       	<?php if($show_downtitle === '1'): ?>
		<h3 class="banner-description"><?php echo $down_title; ?></h3>
       	<?php endif; ?> 
		 <form action="searchpage.php" method="get" class="list-s">
		  <button><?php echo $lang['search']; ?></button>
		  <input type="text" class="form-control" name="searchterm" placeholder="<?php echo $searchterm; ?>" value=""/>   
		  <div class="clearfix"></div>
		 </form>
		<p><?php echo $lang['trending']; ?> <?php echo $lang['services']; ?>:
        <?php
	        $dbc = mysqli_connect(Config::get('mysql/host'), Config::get('mysql/username'), Config::get('mysql/password'), Config::get('mysql/db')) OR die('Could not connect because:' .mysqli_connect_error());
			$q5 = "SELECT catid, count(catid) AS cnt FROM job GROUP BY catid ORDER BY cnt DESC LIMIT 3";
			$r5 = mysqli_query($dbc, $q5);
			while ($row5 = mysqli_fetch_assoc($r5)) {
				$catid = $row5['catid'];
          $query = DB::getInstance()->get("category", "*", ["catid" => $catid]);
		 if($query->count()) {
		    $x = 1;
		    $out = array();
			foreach($query->results() as $row) {
			     $List .= '
			           <a href="searchcat.php?searchterm='. escape($row->name) .'" style="color: #fff !important;">
                        '. escape($row->name) .'
					   </a>
						 ';
				 $lists[] = $List;		 
                 array_push($out, $List);
	             unset($List);	 
				 $x++;		
			}			
				}
			 }	
             echo $string = implode(',', $lists);
        ?>			</p>
        
		</div>
        </div><!--./row -->
        
	  </div><!--./container -->
     </header><!--./header -->	
      <!-- ==============================================
	 Categories Section
	 =============================================== -->
	 <section class="categories">
	  <div class="container">
       <div class="row">
       	
       	<div class="text-center">
		 <h3><?php echo $lang['popular']; ?> <?php echo $lang['categories']; ?></h3>
		 <hr class="mint">
		 <p class="top-p"><?php echo $cattagline; ?></p>
		</div> 
       </div><!-- /.row -->
       <br />
       
		  <?php
          $query = DB::getInstance()->get("category", "*", ["ORDER" => "item_order ASC"]);
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
			        <div class="col-lg-4">
					 <a href="searchcat.php?searchterm='. escape($row->name) .'" style="height: 295.4px;">
			          <i class="fa '. $row->icon .'"></i>
			          <h6>'. escape($row->name) .'</h6>
			          <p>'. escape($row->sub_category) .'</p>
			         </a>	
					</div>  
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
     </section><!-- /.section -->     
	 
	 <!-- ==============================================
	 Stats Section
	 =============================================== -->
	 <section class="stats">
	  <div class="container">
       <div class="row">
       	
       	<div class="text-center">
		 <h3><?php echo $lang['site']; ?> <?php echo $lang['stats']; ?></h3>
		 <hr class="mint">
		 <p class="top-p"><?php echo $statstagline; ?></p>
		</div> 
       </div><!-- /.row -->
        <br />
       <?php
       $query = DB::getInstance()->get("job", "*", ["AND"=>["active" => 1, "delete_remove" => 0]]); 
	   if ($query->count() === '') {
		   $jobsposted = 0;
	   } else {
		   $jobsposted = $query->count();
	   }
	    
       $q1 = DB::getInstance()->get("job", "*", ["AND"=>["active" => 1, "delete_remove" => 0, "completed" => 1]]);  
	   if ($q1->count() === '') {
		   $jobscompleted = 0;
	   } else {
		   $jobscompleted = $q1->count();
	   }  
	   
       $q2 = DB::getInstance()->get("freelancer", "*", ["AND"=>["active" => 1, "delete_remove" => 0]]);  
	   if ($q2->count() === '') {
		   $freelancercount = 0;
	   } else {
		   $freelancercount = $q2->count();
	   }	
	   
       $q3 = DB::getInstance()->get("client", "*", ["AND"=>["active" => 1, "delete_remove" => 0]]);  
	   if ($q3->count() === '') {
		   $clientcount = 0;
	   } else {
		   $clientcount = $q3->count();
	   }	         
       
       ?> 
       <div class="row"> 
		 <ul class="job-stats row showing-4">
          <li class="job-stat col-md-3 col-sm-6 col-xs-12">
		   <strong><?php echo $jobsposted; ?></strong><?php echo $lang['jobs']; ?> <?php echo $lang['posted']; ?>				
		  </li>
		  <li class="job-stat col-md-3 col-sm-6 col-xs-12">
		   <strong><?php echo $jobscompleted; ?></strong><?php echo $lang['jobs']; ?> <?php echo $lang['completed']; ?>				
		  </li>
		  <li class="job-stat col-md-3 col-sm-6 col-xs-12">
		   <strong><?php echo $clientcount; ?></strong> <?php echo $lang['clients']; ?>				
		  </li>
		  <li class="job-stat col-md-3 col-sm-6 col-xs-12">
		   <strong><?php echo $freelancercount; ?></strong><?php echo $lang['freelancers']; ?>				
		  </li>
		 </ul>
		 
		</div>  
		</div>
		</section>	 
	 
	 <!-- ==============================================
	 Testimonies Section
	 =============================================== -->		  
	 <section class="testimonies">
	  <div class="container">
       <div class="row">
       	
       	<div class="text-center">
		 <h3><?php echo $lang['testimonies']; ?></h3>
		 <hr class="mint-white">
		 <p class="top-p"><?php echo $testtagline; ?></p>
		</div> 
       </div><!-- /.row -->
       <br />

		  <?php
          $query = DB::getInstance()->get("team", "*", ["testimony" => 1]);
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
				  	<div class="col-lg-4">
				  	 <div class="feedback-box">
					  <div class="message">
		               '. escape($row->description) .'
					  </div>
					  <div class="client">
					   <div class="quote red-text">
						<i class="fa fa-quote-left"></i>
					   </div>
					   <div class="client-info">
					    <span class="client-name" href="">'. escape($row->name) .'</span>
						<div class="client-company">
						 '. escape($row->title) .'
						</div>
					   </div>
					   <div class="client-image hidden-xs">
						<img src="Admin/'. escape($row->imagelocation) .'" class="img-responsive" alt="">
					   </div>
					  </div> 
					 </div>
					</div> 
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
  
	  </div><!-- /container -->
	 </section><!-- /w -->		   	 
	 
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
