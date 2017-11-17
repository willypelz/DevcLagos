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
	 <header class="header-how" style="

  background: url('<?php echo $how_header_img; ?>') no-repeat center center fixed;
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
	       	<?php endif; ?>  <?php echo $lang['how']; ?> <?php echo $lang['it']; ?> <?php echo $lang['works']; ?></h1>
		 <p><?php echo $how_top_title; ?></p>
        </div><!-- /.row -->
       </div><!-- /.content -->
     </header><!--./header -->	

	 <!-- ==============================================
	 White Section 1
	 =============================================== -->		  
     <section class="w">
	  <div class="container">
	   <div class="row">
	     <h3 class="text-center"><?php echo $lang['clients']; ?></h3>
	     <hr class="mint">
	   </div>	
       <br></br>
		  <?php
          $query = DB::getInstance()->get("section_client", "*", ["ORDER" => "item_order ASC"]);
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
		            <div class="col-lg-8">
		             <h3>'. escape($row->title) .'</h3>
		             <p>'. escape($row->description) .'</p>
		            </div>
		            <div class="col-lg-4 text-center">
			          <img src="Admin/'. escape($row->imagelocation) .'" class="img-responsive" alt="" width="300" height="250"> 
		            </div>
					 ';
				
             unset($List);	 
			 $x++;		
			
            /*
            Check whether the counter has hit 3 posts.  
            If true, close the "row" div.  Also reset the $startRow variable so that before the next post, a new "row" div is being created. Finally, reset the counter to track the next set of three posts.
            If false, do nothing. 
            */
            if ( 1 === $postCounter ) {
                echo '</div><br/><!-- END OF INTERNAL ROW -->';
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
	 
	 <!-- ==============================================
	 White Section 1
	 =============================================== -->		  
     <section class="w-grey">
	  <div class="container">
	   <div class="row">
	   </div>
	  </div>
	 </section>  
	 
	 <!-- ==============================================
	 White Section 1
	 =============================================== -->		  
     <section class="w">
	  <div class="container">
	   <div class="row">
	     <h3 class="text-center"><?php echo $lang['freelancers']; ?></h3>
	     <hr class="mint">
	   </div>	
       <br></br>
		  <?php
          $query = DB::getInstance()->get("section_freelancer", "*", ["ORDER" => "item_order ASC"]);
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
		            <div class="col-lg-8">
		             <h3>'. escape($row->title) .'</h3>
		             <p>'. escape($row->description) .'</p>
		            </div>
		            <div class="col-lg-4 text-center">
			          <img src="Admin/'. escape($row->imagelocation) .'" class="img-responsive" alt="" width="300" height="250"> 
		            </div>
					 ';
				
             unset($List);	 
			 $x++;		
			
            /*
            Check whether the counter has hit 3 posts.  
            If true, close the "row" div.  Also reset the $startRow variable so that before the next post, a new "row" div is being created. Finally, reset the counter to track the next set of three posts.
            If false, do nothing. 
            */
            if ( 1 === $postCounter ) {
                echo '</div><br/><!-- END OF INTERNAL ROW -->';
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
