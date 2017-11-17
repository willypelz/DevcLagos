<?php
//Check if init.php exists
if(!file_exists('core/frontinit.php')){
	header('Location: nstall/');        
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

  background: url('<?php echo $pricing_header_img; ?>') no-repeat center center fixed;
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
	       	<?php endif; ?>  <?php echo $lang['pricing']; ?></h1>
		 <p><?php echo $pricing_top_title; ?></p>
        </div><!-- /.row -->
       </div><!-- /.content -->
     </header><!--./header -->	
     
     <!-- ==============================================
	 Hello Section
	 =============================================== -->
     
	 <section class="w">
	  <div class="container">
	   <div class="row">
	     <h3 class="text-center"><?php echo $lang['freelancers']; ?></h3>
	     <hr class="mint">
	   </div>	
       <br></br>
       
		  <?php
          $query = DB::getInstance()->get("membership_freelancer", "*", ["ORDER" => "item_order ASC"]);
		 if($query->count()) {
		 	
          /*
            Start with variables to help with row creation;
          */
            $startRow = true;
            $postCounter = 0;
		    $x = 1;
			foreach($query->results() as $row) {
		    $List = '';
            $rollover = (escape($row->rollover) === '1') ? Yes : No;
            $buy = (escape($row->buy) === '1') ? Yes : No;
            $see = (escape($row->see) === '1') ? Yes : No;
            $team = (escape($row->team) === '1') ? Yes : No;
			/*
              Check whether we need to add the start of a new row.
              If true, echo a div with the "row" class and set the startRow variable to false 
              If false, do nothing. 
            */
            if ($startRow) {
              echo '<!-- START OF INTERNAL ROW --><div class="row pricing">';
              $startRow = false;
            } 
            /* Add one to the counter because a new post is being added to your page.  */ 
              $postCounter += 1; 
		              
			//Start new Freelancer object
			$freelancer = new Freelancer(); 
			if ($freelancer->isLoggedIn()) {
				$sub .='<a class="btn btn-success btn-block" href="Freelancer/">'.$lang['select'].' '.$lang['membership'].'</a>';
			}else {
				$sub .='<a class="btn btn-success btn-block" href="login.php">'.$lang['select'].' '.$lang['membership'].'</a>';
			}
				  
		    echo $List .= '
		            <div class="col-lg-6">
		             <div class="price-full">	
		              <h6>'. escape($row->name) .'</h6>
		              <div class="price">
		                <sup>'. escape($currency_symbol) .'</sup>'. escape($row->price) .'
                        <span>per month</span>
		              </div>
		              <hr>
		              <p>'.$lang['number'].' '.$lang['of'].' '.$lang['bids'].'  :- <strong>'. escape($row->bids) .'</strong></p>
		              <p>'.$lang['rollover'].' '.$lang['of'].' '.$lang['bids'].'  :- <strong>'. $rollover .'</strong></p>
		              <p>'.$lang['can'].' '.$lang['be'].' '.$lang['able'].' '.$lang['to'].' '.$lang['buy'].' '.$lang['additional'].' '.$lang['bids'].' :- <strong>'. $buy .'</strong></p>
		              <p>'.$lang['can'].' '.$lang['be'].' '.$lang['able'].' '.$lang['to'].' '.$lang['see'].' '.$lang['other'].' '.$lang['bids'].' :- <strong>'. $see .'</strong></p>
		              <p>'.$lang['can'].' '.$lang['be'].' '.$lang['able'].' '.$lang['to'].' '.$lang['add'].' '.$lang['team'].' '.$lang['members'].' :- <strong>'. $team .'</strong></p>
		              <br>
		               '. $sub .'
		             </div> 
		            </div>
					 ';
				
             unset($List);	 
             unset($sub);	
			 $x++;		
			
            /*
            Check whether the counter has hit 3 posts.  
            If true, close the "row" div.  Also reset the $startRow variable so that before the next post, a new "row" div is being created. Finally, reset the counter to track the next set of three posts.
            If false, do nothing. 
            */
            if ( 2 === $postCounter ) {
                echo '</div><br/><!-- END OF INTERNAL ROW -->';
                $startRow = true;
                $postCounter = 0;
            }  
		   }
		}else {
		 echo $List = '<p>'.$lang['no_content_found'].'</p>';
		}
       ?>        
	  </div> <!-- /.container -->
     </section><!-- End section-->
     
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
	 Hello Section
	 =============================================== -->
     
	 <section class="w">
	  <div class="container">
	   <div class="row">
	     <h3 class="text-center"><?php echo $lang['agencies']; ?></h3>
	     <hr class="mint">
	   </div>	
       <br></br>
       
		  <?php
          $query = DB::getInstance()->get("membership_agency", "*", ["ORDER" => "item_order ASC"]);
		 if($query->count()) {
		 	
          /*
            Start with variables to help with row creation;
          */
            $startRow = true;
            $postCounter = 0;
		    $x = 1;
			foreach($query->results() as $row) {
		    $List = '';
            $rollover = (escape($row->rollover) === '1') ? Yes : No;
            $buy = (escape($row->buy) === '1') ? Yes : No;
            $see = (escape($row->see) === '1') ? Yes : No;
            $team = (escape($row->team) === '1') ? Yes : No;
			/*
              Check whether we need to add the start of a new row.
              If true, echo a div with the "row" class and set the startRow variable to false 
              If false, do nothing. 
            */
            if ($startRow) {
              echo '<!-- START OF INTERNAL ROW --><div class="row pricing">';
              $startRow = false;
            } 
            /* Add one to the counter because a new post is being added to your page.  */ 
              $postCounter += 1; 
		              
			//Start new Freelancer object
			$freelancer = new Freelancer(); 
			if ($freelancer->isLoggedIn()) {
				$sub .='<a class="btn btn-success btn-block" href="Freelancer/">'.$lang['select'].' '.$lang['membership'].'</a>';
			}else {
				$sub .='<a class="btn btn-success btn-block" href="#">'.$lang['select'].' '.$lang['membership'].'</a>';
			}
				  
		    echo $List .= '
		            <div class="col-lg-6">
		             <div class="price-full">	
		              <h6>'. escape($row->name) .'</h6>
		              <div class="price">
		                <sup>'. escape($currency_symbol) .'</sup>'. escape($row->price) .'
                        <span>per month</span>
		              </div>
		              <hr>
		              <p>'.$lang['number'].' '.$lang['of'].' '.$lang['bids'].'  :- <strong>'. escape($row->bids) .'</strong></p>
		              <p>'.$lang['rollover'].' '.$lang['of'].' '.$lang['bids'].'  :- <strong>'. $rollover .'</strong></p>
		              <p>'.$lang['can'].' '.$lang['be'].' '.$lang['able'].' '.$lang['to'].' '.$lang['buy'].' '.$lang['additional'].' '.$lang['bids'].' :- <strong>'. $buy .'</strong></p>
		              <p>'.$lang['can'].' '.$lang['be'].' '.$lang['able'].' '.$lang['to'].' '.$lang['see'].' '.$lang['other'].' '.$lang['bids'].' :- <strong>'. $see .'</strong></p>
		              <p>'.$lang['can'].' '.$lang['be'].' '.$lang['able'].' '.$lang['to'].' '.$lang['add'].' '.$lang['team'].' '.$lang['members'].' :- <strong>'. $team .'</strong></p>
		              <br>
		               '. $sub .'
		             </div> 
		            </div>
					 ';
				
             unset($List);	 
             unset($sub);	
			 $x++;		
			
            /*
            Check whether the counter has hit 3 posts.  
            If true, close the "row" div.  Also reset the $startRow variable so that before the next post, a new "row" div is being created. Finally, reset the counter to track the next set of three posts.
            If false, do nothing. 
            */
            if ( 2 === $postCounter ) {
                echo '</div><br/><!-- END OF INTERNAL ROW -->';
                $startRow = true;
                $postCounter = 0;
            }  
		   }
		}else {
		 echo $List = '<p>'.$lang['no_content_found'].'</p>';
		}
       ?>        
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
