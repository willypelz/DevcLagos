<?php
//Check if init.php exists
if(!file_exists('core/frontinit.php')){
	header('Location: install/');        
    exit;
}else{
 require_once 'core/frontinit.php';	
}

//Getting Job Data
$title = Input::get('title');
$query = DB::getInstance()->get("job", "*", ["slug" => $title, "LIMIT" => 1]);
if ($query->count() === 1) {
 foreach($query->results() as $row) {
  $jobid = $row->jobid;
  $title_job = $row->title;
  $clientid = $row->clientid;
  $catid = $row->catid;
  $budget = $row->budget;
  $job_type = $row->job_type;
  $start_date = $row->start_date;
  $end_date = $row->end_date;
  $description_job = $row->description;
  $skills = $row->skills;
  $arr=explode(',',$skills);
  $date_added = ago(strtotime($row->date_added));
  $completed = $row->completed;
  $accepted = $row->accepted;
 }
} else {
  Redirect::to('jobs.php');
}

//Getting Category Name
$query = DB::getInstance()->get("category", "*", ["catid" => $catid, "LIMIT" => 1]);
if ($query->count() === 1) {
 foreach($query->results() as $row) {
  $cat_name = $row->name;
 }
}else {
  $cat_name = "Undefined"; 	
}

//Getting Client
$q1 = DB::getInstance()->get("client", "*", ["clientid" => $clientid]);
if ($q1->count()) {
	 foreach ($q1->results() as $r1) {
	  $name1 = $r1->name;	
	  $username1 = $r1->username;	
	  $imagelocation = $r1->imagelocation;	
	  $bgimage = $r1->bgimage;	
     }
}

//Getting Proposals
$q2 = DB::getInstance()->get("proposal", "*", ["jobid" => $jobid]);
 if ($q2->count() === 0) {
  $job_proposals = 0;	
 } else {
  $job_proposals = $q2->count();
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
	 <header class="header-jobpost" style="

  background: linear-gradient(
      rgba(34,34,34,0.7), 
      rgba(34,34,34,0.7)
    ), url('<?php echo $jobs_header_img; ?>') no-repeat center center fixed;
  background-size: cover;
  background-position: center center;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  color: #fff;
  height: 45vh;
  width: 100%;
  ">
      <div class="container">
	   <div class="content">
	    <div class="row">
		 <div class="col-lg-4 col-lg-offset-8 col-md-4 col-md-offset-8 col-sm-6 col-xs-12 animations fade-left d2">

		 <?php
		 //Start new Admin object
		 $admin = new Admin();
		 //Start new Client object
		 $client = new Client();
		 //Start new Freelancer object
		 $freelancer = new Freelancer(); 
		 
		 if ($admin->isLoggedIn()) { ?>
		<?php } elseif($client->isLoggedIn()) { ?>
		<?php } elseif($freelancer->isLoggedIn()) { ?>
		  <a href="Freelancer/addproposal.php?id=<?php echo $jobid; ?>" class="kafe-btn kafe-btn-mint-post full-width">
		  	<i class="fa fa-star"></i> <?php echo $lang['send']; ?> <?php echo $lang['proposal']; ?>
		  </a>		
		<?php } else { ?>
		  <a href="login.php" class="kafe-btn kafe-btn-mint-post full-width">
		  	<i class="fa fa-star"></i> <?php echo $lang['send']; ?> <?php echo $lang['proposal']; ?>
		  </a>		
		 <?php } ?>		 
		 </div><!-- /.col-lg-3 -->
		 
        </div><!-- /.row -->
       </div><!-- /.content -->
	  </div><!-- /.container -->
     </header><!-- /header -->
	 
     <!-- ==============================================
	 Job Post Section
	 =============================================== -->
     <section class="jobpost">
	  <div class="container">
	   <div class="row">
	    <div class="col-lg-8 white">
		
		 <div class="row">
		  <div class="col-lg-12">
		   <h6><a href="jobs.html"><?php echo $lang['categories']; ?> / <?php echo $cat_name; ?></a></h6>
           <h4><?php echo $title_job; ?></h4>
           <hr class="small-hr">
		  </div>		
		 </div> 
		 
		 <div class="row post-top-sec">
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['posted']; ?> </h5>
		   <p><?php echo $date_added; ?></p>
		  </div><!-- /.col-lg-3 -->
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['location']; ?> </h5>
		   <p><i class="fa fa-map-marker"></i> Kenya</p>
		  </div><!-- /.col-lg-3 -->
		  <div class="col-lg-3">
		   <h5><?php echo $lang['budget']; ?> </h5>
		   <p><?php echo $budget; ?></p>
		  </div><!-- /.col-lg-3 -->
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['applicants']; ?> </h5>
		   <p><?php echo $job_proposals; ?></p>
		  </div><!-- /.col-lg-3 -->
		  
		  <div class="col-lg-12">
           <hr class="small-hr">
		  </div> <!-- /.col-lg-12 -->
		 </div><!-- /.row -->
		 
		 <div class="row post-top-sec">
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['date']; ?> <?php echo $lang['to']; ?> <?php echo $lang['start']; ?> </h5>
		   <p><?php echo $start_date; ?></p>
		  </div><!-- /.col-lg-3 -->
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['date']; ?> <?php echo $lang['to']; ?> <?php echo $lang['end']; ?> </h5>
		   <p><?php echo $end_date; ?></p>
		  </div><!-- /.col-lg-3 -->
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['job']; ?> <?php echo $lang['type']; ?></h5>
		   <p><?php echo $job_type; ?></p>
		  </div><!-- /.col-lg-3 -->
		  <div class="col-lg-3">
		   <h5> <?php echo $lang['job']; ?> <?php echo $lang['status']; ?></h5>
		   <p><?php 
		         if($accepted === 1):
					  if($completed === '1'):	 
					   echo $lang['completed'];	
					  else:
					   echo $lang['on']; echo $lang['progress'];	  
					  endif;	   
				 else:
				 echo $lang['opened'];	 
				 endif;	  
		    ?></p>
		  </div><!-- /.col-lg-3 -->
		  
		  <div class="col-lg-12">
           <hr class="small-hr">
		  </div> <!-- /.col-lg-12 -->
		 </div><!-- /.row -->		 
		  
		 <div class="post-bottom-sec"> 
		  <h4><?php echo $lang['job']; ?> <?php echo $lang['description']; ?></h4>
          <?php echo $description_job; ?>
		
		  <h4><?php echo $lang['skills']; ?></h4>
           <?php
            foreach ($arr as $key => $value) {
              echo '<label class="label label-success">'. $value .'</label> &nbsp;'; 
            }
		   ?>	
		
		 </div><!-- /.post-bottom-sec --> <br>
		 
		 <h4><?php echo $lang['proposals']; ?></h4>
		 	
		 <div id="comments-list">	
          <?php echo getFeaturedProposals($jobid) ?>
          <?php echo getProposals(null, $jobid, $proposal_limit) ?>
		 </div>
		 
		</div><!-- /.col-lg-8 -->
		
	    <div class="col-lg-4">
		
		 <div class="panel user-client revealOnScroll" data-animation="slideInUp" data-timeout="200">
		  <div class="row text-center">
		   <a href="client.php?a=overview&id=<?php echo $clientid; ?>">
		    <img src="Client/<?php echo $bgimage; ?>" class="img-responsive panel-img" alt="">
            
			<div class="col-xs-12 user-avatar">
             <img src="Client/<?php echo $imagelocation; ?>" alt="Image" class="img-thumbnail img-responsive">
             <h4><?php echo $name1; ?></h4>
             <p>@<?php echo $username1; ?></p>
            </div><!-- /.col-xs-12 -->
		   </a>
          </div><!-- /.row -->
		  
		  <div class="list-group">
           <div class="list-group-item">&nbsp;&nbsp;&nbsp;<?php echo $lang['jobs']; ?> <?php echo $lang['posted']; ?>
            <span class="badge">
            <?php	
             $query = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => $clientid, "invite" => 0]]);
             echo $query->count();
            ?>
	        </span>
		   </div><!-- /.list-group-item -->
           <div class="list-group-item">&nbsp;&nbsp;&nbsp;<?php echo $lang['jobs']; ?> <?php echo $lang['invites']; ?>
            <span class="badge">
            <?php	
             $query = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => $clientid, "invite" => 1]]);
             echo $query->count();
            ?>
	        </span>
		   </div><!-- /.list-group-item -->
           <div class="list-group-item">&nbsp;&nbsp;&nbsp;<?php echo $lang['jobs']; ?> <?php echo $lang['completed']; ?>
            <span class="badge">
            <?php	
             $query = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => $clientid, "completed" => 1]]);
             echo $query->count();
            ?>
	        </span>
		   </div><!-- /.list-group-item -->
           <div class="list-group-item">&nbsp;&nbsp;&nbsp;<?php echo $lang['job']; ?> <?php echo $lang['payments']; ?>
            <span class="badge">
        	<?php
		         echo $currency_symbol.'&nbsp;';
                    $query = DB::getInstance()->sum("transactions", "payment", ["AND" =>["freelancerid" => $clientid, "transaction_type" => 4]]);
					foreach($query->results()[0] as $row) {
						echo $row;
					}	?>
						</span>
		   </div><!-- /.list-group-item -->
           <div class="list-group-item">&nbsp;&nbsp;&nbsp;<?php echo $lang['ratings']; ?> 
	            (<?php	
	             $query = DB::getInstance()->get("ratings_client", "*", ["AND" => ["clientid" => $clientid]]);
	             $count = $query->count();
				 echo $re = $count/7;
	            ?>)
            <span class="badge">
		     <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
		    </span>
		   </div><!-- /.list-group-item -->
		  </div><!-- /.list-group -->
		 
		 </div><!-- /.list-group-item -->
	   <?php 
		 $ShareUrl = urlencode("http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]");
		 $Media = 'http://2.bp.blogspot.com/-nr1K0W-Zqi0/U_4lUoyvvVI/AAAAAAAABJE/F_C7i48sI58/s1600/new2.png';
		?>
			
		 <div class="list">
		  <div class="list-group">
           <span class="list-group-item active cat-top">
            <em class="fa fa-fw fa-coffee"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['share']; ?> <?php echo $lang['this']; ?> <?php echo $lang['job']; ?>
		   </span>
			<a class="list-group-item cat-list" onclick="shareinsocialmedia('https://www.facebook.com/sharer/sharer.php?u=<?php echo $ShareUrl;?>&title=<?php echo $title_job;?>')" href="">
			<em class="fa fa-fw fa-facebook"></em>&nbsp;&nbsp;&nbsp;Facebook
			</a>
			<a class="list-group-item cat-list" onclick="shareinsocialmedia('http://twitter.com/home?status=<?php echo $title_job; ?>+<?php echo $ShareUrl; ?>')" href="">
			<em class="fa fa-fw fa-twitter"></em>&nbsp;&nbsp;&nbsp;Twitter
			</a>
			<a class="list-group-item cat-list" onclick="shareinsocialmedia('http://www.linkedin.com/shareArticle?mini=true&url=<?php echo $ShareUrl; ?>&title=<?php echo $title_job; ?>')" href="">
			<em class="fa fa-fw fa-linkedin"></em>&nbsp;&nbsp;&nbsp;LinkedIn
			</a>						
          </div><!-- /.list-group -->
		 </div><!-- /.list --> 
		 
		</div><!-- /.col-lg-4 -->
		
	   </div><!-- /.row-->
	  </div><!-- /.container -->  	 
	 </section><!-- /section --> 	 
	  
      <!-- Include footer.php. Contains footer content. -->	
	  <?php include 'includes/template/footer.php'; ?>	
	 
     <!-- ==============================================
	 Scripts
	 =============================================== -->
	 
     <!-- jQuery 2.1.4 -->
     <script src="assets/js/jQuery-2.1.4.min.js"></script>
     <!-- Bootstrap 3.3.6 JS -->
     <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
     <!-- Waypoints JS -->
     <script src="assets/js/waypoints.min.js" type="text/javascript"></script>
     <!-- Kafe JS -->
     <script src="assets/js/kafe.js" type="text/javascript"></script>
    <script type="text/javascript">
	function loadProposals(id, jobid, limit) {
		$('#more_comments_'+id).html('<div class="preloader-retina preloader-center"></div>');
		$.ajax({
			type: "POST",
			url: "includes/template/requests/load_proposals.php",
			data: "id="+id+"&jobid="+jobid+"&limit="+limit, 
			cache: false,
			success: function(html) {
				// Remove the loader animation
				$('#more_comments_'+id).remove();
				
				// Append the new comment to the div id
				$('#comments-list').append(html);
			
			}
		});
	}	
	</script>  
	<script type="text/javascript" async >
	    function shareinsocialmedia(url){
	    window.open(url,'sharein','toolbar=0,status=0,width=648,height=395');
	    return true;
	    }
	</script>	    

</body>
</html>
