<?php
//Check if init.php exists
if(!file_exists('core/frontinit.php')){
	header('Location: install/');        
    exit;
}else{
 require_once 'core/frontinit.php';	
}

//Get Freelancer's Data
$freelancerid = Input::get('id');
$query = DB::getInstance()->get("freelancer", "*", ["freelancerid" => $freelancerid, "LIMIT" => 1]);
if ($query->count() === 1) {
 foreach($query->results() as $row) {
  $name = $row->name;
  $username = $row->username;
  $email = $row->email;
  $phone = $row->phone;
  $freelancer_imagelocation = $row->imagelocation;
  $freelancer_bgimage = $row->bgimage;
 }
} else {
  Redirect::to('services.php');
}

$query = DB::getInstance()->get("profile", "*", ["userid" => $freelancerid, "LIMIT" => 1]);
if ($query->count()) {
 foreach($query->results() as $row) {
 	$nid = $row->id;
 	$location = $row->location;
 	$city = $row->city;
 	$country = $row->country;
 	$rate = $row->rate;
 	$website = $row->website;
 	$about = $row->about;
 	$education_profile = $row->education;
 	$work_profile = $row->work;
 	$awards_profile = $row->awards;
	$skills = $row->skills;
	$arr=explode(',',$skills);
 }			
} else {
  Redirect::to('services.php');
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
	 <header class="header-freelancer" style="

  background: linear-gradient(
      rgba(34,34,34,0.7), 
      rgba(34,34,34,0.7)
    ), url('Freelancer/<?php echo $freelancer_bgimage; ?>') no-repeat center center fixed;
  background-size: cover;
  background-position: center center;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  color: #fff;
  height: 85vh;
  width: 100%;
  
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;">
      <div class="container">
	   <div class="content">
	    <div class="row">
	     <div class="col-lg-12">
          <img src="Freelancer/<?php echo $freelancer_imagelocation; ?>" class="img-thumbnail img-responsive revealOnScroll" data-animation="fadeInDown" data-timeout="200" alt="">
	      <h1 class="revealOnScroll" data-animation="bounceIn" data-timeout="200"> <?php echo $name; ?></h1>
		  <p class="revealOnScroll" data-animation="fadeInUp" data-timeout="400"><i class="fa fa-map-marker"></i> <?php echo $location; ?>, <?php echo $city; ?>, <?php echo $country; ?></p>
		  <?php
			 //Start new Admin object
			 $admin = new Admin();
			 //Start new Client object
			 $client = new Client();
			 //Start new Freelancer object
			 $freelancer = new Freelancer(); 
			 
			 if ($admin->isLoggedIn()) { 
	         } elseif($freelancer->isLoggedIn()) {
	         	
	         } elseif($client->isLoggedIn()) {
	          echo $sen .='	 
				 <a href="Client/invite.php?id='. escape($freelancerid) .'" class="kafe-btn kafe-btn-mint-small">
				 <i class="fa fa-align-left"></i> ' . $lang['send'] . ' ' . $lang['job'] . ' ' . $lang['invitation'] . '</a>
			 ';
			} else {
	         echo $sen .='	 
				 <a href="login.php" class="kafe-btn kafe-btn-mint-small">
				 <i class="fa fa-align-left"></i> ' . $lang['send'] . ' ' . $lang['job'] . ' ' . $lang['invitation'] . '</a>
			 ';
			 }
			?> 		  
		 </div><!-- /.col-lg-12 -->
        </div><!-- /.row -->
       </div><!-- /.content -->
	  </div><!-- /.container -->
     </header><!-- /header -->
	 
	  <!-- ==============================================
	  Overview Section
	  =============================================== -->
    
      <section class="overview" id="overview">
	   <div class="container">
	    <div class="row">
		
		 <div id="sidebar" class="col-lg-4">
			<div class="list">
			 <div class="list-group">
			 
			 <a class="list-group-item active cat-list">
			  <em class="fa fa-fw fa-user"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['freelancer']; ?>
			 </a>
			 
			 </div><!-- ./.list-group -->
			</div><!-- ./.list --> 
			
          	<?php $overview = (Input::get('a') == 'overview') ? ' active' : ''; ?>
          	<?php $portfolio = (Input::get('a') == 'portfolio') ? ' active' : ''; ?>
          	<?php $services = (Input::get('a') == 'services') ? ' active' : ''; ?>
          	<?php $jobs = (Input::get('a') == 'jobs') ? ' active' : ''; ?>
          	<?php $reviews = (Input::get('a') == 'reviews') ? ' active' : ''; ?>
			<div class="list">
			 <div class="list-group">
			 
			 <a href="freelancer.php?a=overview&id=<?php echo $freelancerid ?>" class="list-group-item <?php echo $overview; ?> cat-list">
			  <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['overview']; ?>
			 </a>
			 <a href="freelancer.php?a=portfolio&id=<?php echo $freelancerid ?>" class="list-group-item <?php echo $portfolio; ?> cat-list">
			  <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['portfolio']; ?>
			 </a>
			 <a href="freelancer.php?a=services&id=<?php echo $freelancerid ?>" class="list-group-item <?php echo $services; ?> cat-list">
			  <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['services']; ?>
			 </a>
			 <a href="freelancer.php?a=jobs&id=<?php echo $freelancerid ?>" class="list-group-item <?php echo $jobs; ?> cat-list">
			  <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['jobs']; ?> 
			                                                               <?php echo $lang['completed']; ?> &
			                                                               <?php echo $lang['assigned']; ?>
			 </a>
			 <a href="freelancer.php?a=reviews&id=<?php echo $freelancerid ?>" class="list-group-item <?php echo $reviews; ?> cat-list">
			  <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['reviews']; ?>
			 </a>
			 
			 </div><!-- ./.list-group -->
			</div><!-- ./.list --> 
		 </div><!-- ./.col-lg-4 -->


		 <?php if (Input::get('a') == 'overview') : ?>		 
		 <div class="col-lg-8 white-2">
		  <div class="about">
		   <h3><?php echo $lang['about']; ?> <?php echo $lang['us']; ?></h3>
		   <div class="col-lg-12 top-sec">
		   <?php echo $about; ?>
		   
           <?php
            foreach ($arr as $key => $value) {
              echo '<label class="label label-success">'. $value .'</label> &nbsp;'; 
            }
		   ?>		   
		  </div><!-- /.col-lg-12 --> 	
		
		  <div class="row bottom-sec">
		   
		   <div class="col-lg-12">
			
			<div class="col-lg-12">
			 <hr class="small-hr">
			</div><!-- /.col-lg-12 --> 

			<div class="col-lg-3">
			 <h5> <?php echo $lang['location']; ?> </h5>
			 <p><i class="fa fa-map-marker"></i> <?php echo $country; ?></p>
			</div><!-- /.col-lg-2 -->
			<div class="col-lg-3">
			 <h5><?php echo $lang['jobs']; ?> <?php echo $lang['invites']; ?> </h5>
			 <p>
	            <?php	
	             $query = DB::getInstance()->get("job", "*", ["AND" => ["freelancerid" => $freelancerid, "invite" => 1]]);
	             echo $query->count();
	            ?>	
              </p>
			</div><!-- /.col-lg-2 -->
			<div class="col-lg-3">
			 <h5><?php echo $lang['jobs']; ?> <?php echo $lang['assigned']; ?> </h5>
			 <p>
	            <?php	
	             $query = DB::getInstance()->get("job", "*", ["AND" => ["freelancerid" => $freelancerid, "accepted" => 1]]);
	             echo $query->count();
	            ?>	
              </p>
			</div><!-- /.col-lg-2 -->
			<div class="col-lg-3">
			 <h5><?php echo $lang['jobs']; ?> <?php echo $lang['completed']; ?> </h5>
			 <p>
	            <?php	
	             $query = DB::getInstance()->get("job", "*", ["AND" => ["freelancerid" => $freelancerid, "completed" => 1]]);
	             echo $query->count();
	            ?>	
              </p>
			</div><!-- /.col-lg-2 -->
		   </div><!-- /.col-lg-12 -->
		   
		   <div class="col-lg-12">
			
			<div class="col-lg-12">
			 <hr class="small-hr">
			</div><!-- /.col-lg-12 --> 

			<div class="col-lg-6">
			 <h5> <?php echo $lang['ratings']; ?> 
	            (<?php	
	             $query = DB::getInstance()->get("ratings", "*", ["AND" => ["freelancerid" => $freelancerid]]);
	             $count = $query->count();
				 echo $re = $count/7;
	            ?>)</h5>
			 <p><i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i>
			 <i class="fa fa-star"></i></p>
			</div><!-- /.col-lg-2 -->
			<div class="col-lg-6">
			 <h5><?php echo $lang['payments']; ?> <?php echo $lang['received']; ?> </h5>
			 <p>
                <?php	
				$query = DB::getInstance()->get("job", "*", ["AND" =>["freelancerid" => $freelancerid, "invite" => "0", "delete_remove" => 0, "accepted" => 1]]);
				if ($query->count()) {
				 foreach($query->results() as $row) {
				 		

					$q1 = DB::getInstance()->get("milestone", "*", ["AND" =>["jobid" => $row->jobid]]);
					if ($q1->count()) {
					 foreach($q1->results() as $r1) {					 	
				 	
		            $query = DB::getInstance()->sum("transactions", "payment", ["AND" => ["membershipid" => $r1->id, "freelancerid" => $r1->clientid]]);
					foreach($query->results()[0] as $payy) {
						 $paj[] = $payy;
					}
					
					}
				   }		
				 
				 }
				}
				echo $currency_symbol.'&nbsp;';
				echo array_sum($paj);
                ?>	
              </p>
			</div><!-- /.col-lg-2 -->
		   </div><!-- /.col-lg-12 -->		   
		  
		   <div class="col-lg-12">
			
			<div class="col-lg-12">
			 <hr class="small-hr">
			</div><!-- /.col-lg-12 --> 
			
			<div class="col-lg-4">
			 <h5> <?php echo $lang['website']; ?> </h5>
			 <p><?php echo $website; ?></p>
			</div><!-- /.col-lg-3 -->
			<div class="col-lg-2">
			 <h5> <?php echo $lang['rate_hour']; ?> </h5>
			 <p><?php echo $currency_symbol; ?> <?php echo $rate; ?></p>
			</div><!-- /.col-lg-1 -->
			<div class="col-lg-3">
			 <h5> <?php echo $lang['phone']; ?> </h5>
			 <p><i class="fa fa-phone"></i> <?php echo $phone; ?></p>
			</div><!-- /.col-lg-3 -->
			<div class="col-lg-3">
			 <h5> <?php echo $lang['email']; ?> </h5>
			 <p> <?php echo $email; ?></p>
			</div><!-- /.col-lg-3 -->
			
		   </div><!-- /.col-lg-12 -->
		  </div><!-- /.col-lg-12 -->
		  </div><!-- /.about -->

		  <div class="education">		  
		  <h3><?php echo $lang['education']; ?></h3>
		  <div class="row">
		   <div class="col-lg-12">
			  <div class="col-md-12">
			  	<?php echo $education_profile; ?>
			  </div><!-- /.col-lg-12 -->
			</div><!-- /.col-lg-12 -->  
		  </div><!-- /.row -->
		  
		  </div><!-- Education-->
		  
		  <div class="work">		  
		  <h3><?php echo $lang['work']; ?> <?php echo $lang['experience']; ?></h3>
		  
		  <div class="row">
		   <div class="col-lg-12">
			  <div class="col-lg-12">
			  	<?php echo $work_profile; ?>
			  </div><!-- /.col-lg-12 -->
			</div> <!-- /.col-lg-12 --> 
		  </div><!-- /.row -->
		  
		  </div><!-- Work-->
		  
		  <div class="awards">		  
		  <h3><?php echo $lang['awards']; ?> <?php echo $lang['and']; ?> <?php echo $lang['achievements']; ?></h3>
		  
		  <div class="row">
		   <div class="col-lg-12">
			  <div class="col-lg-12">
			  	<?php echo $awards_profile; ?>
			  </div><!-- /.col-lg-12 -->
			</div><!-- /.col-lg-12 -->
		  </div><!-- /.row -->
		  
		  </div><!-- Awards-->
	        <?php

		$query = DB::getInstance()->get("freelancer", "*", ["freelancerid" => $freelancerid, "LIMIT" => 1]);
		if ($query->count()) {
		 foreach($query->results() as $row) {	        
	        $membershipid = $row->membershipid; 
		 
		   }
          }	
			
	        $q = DB::getInstance()->get("membership_freelancer", "*", ["membershipid" => $membershipid]);
			if ($q->count() === 1) {
	          $q1 = DB::getInstance()->get("membership_freelancer", "*", ["membershipid" => $membershipid]);
			} else {
	          $q1 = DB::getInstance()->get("membership_agency", "*", ["membershipid" => $membershipid]);
			}
			   if ($q1->count()) {
				 foreach($q1->results() as $r1) {
                   $team_membership = $r1->team;
				 }
				} 		 		 
	        ?>		
         
         <?php if($team_membership === '1'): ?>
		  
		  <div class="ourteam">		  
		  <h3><?php echo $lang['our']; ?> <?php echo $lang['team']; ?></h3>
		  
		  <div class="row">
		   <div class="col-lg-12">
		   	
				   <?php
					$query = DB::getInstance()->get("team", "*", ["userid" => $freelancerid]);
					if ($query->count()) {

				     $teamList = '';
				     $x = 1;	
					 					
					 foreach($query->results() as $row) {
					 	
				      echo $teamList .= '
				      
						<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 profile">
						  <div class="img-box">
							<img src="Freelancer/'. escape($row->imagelocation) .'" class="img-responsive" alt="">
							<ul class="text-center">
							  <li><a href="'. escape($row->facebook) .'" target="_blank"><i class="fa fa-facebook"></i></a></li>
							  <li><a href="'. escape($row->twitter) .'" target="_blank"><i class="fa fa-twitter"></i></a></li>
							  <li><a href="'. escape($row->linkedin) .'" target="_blank"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						  </div>
						  <h4>'. escape($row->name) .'</h4>
						  <h5>'. escape($row->title) .'</h5>
						  <p>'. escape($row->description) .'</p>
						</div><!-- /.col-lg-4 -->			
							 ';

			             unset($teamList);	 
						 $x++;								
					 }
					} else {
					  echo $teamList .='';
					}		   
				   
				   
				   ?>				
				
			   </div><!-- /.col-lg-12 -->  
		      </div><!-- /.row -->
		     </div><!-- Awards-->			  		    
		  <?php endif; ?>
         </div><!-- /.col-lg-8 -->
         
 		 <?php elseif (Input::get('a') == 'portfolio') : ?>
 		 	
 		 <div class="col-lg-8 white-2" id="portfolio">
		 
		 <div class="row">
		  <div class="col-lg-12">
		   <h3><?php echo $lang['portfolio']; ?></h3>
		  </div><!-- /.col-lg-12 -->
		 </div><!-- /.row -->
		 <br/> 
		 
		  <div class="row">
		   <div class="col-lg-12">
		   	
				   <?php
					$query = DB::getInstance()->get("portfolio", "*", ["userid" => $freelancerid]);
					if ($query->count()) {

				     $portfolioList = '';
				     $x = 1;	
					 					
					 foreach($query->results() as $row) {
					 		
					 	$portfolio_title = $row->title;
					 	$portfolio_date = $row->date;
					 	$portfolio_client = $row->client;	
					 	$portfolio_website = $row->website;	
					 	$portfolio_desc = $row->description;	
					 	$portfolio_imagelocation = $row->imagelocation;						
					 	
				      echo $portfolioList .= '
					  
					    <div class="col-sm-6 portfolio-item">
						 <a href="#project-modal" class="portfolio-link" data-toggle="modal">
						  <div class="caption">
						   <div class="caption-content">
						    <i class="fa fa-search-plus fa-3x"></i>
						   </div><!-- /.caption-content -->
						  </div><!-- /.caption -->
						  <img src="Freelancer/'. escape($row->imagelocation) .'" class="img-responsive" alt="" />
						 </a>
						</div><!-- /.col-lg-6 -->					  		
							 ';
							 
					  echo $modal .='						   
					   '; 		 

			             unset($portfolioList);	 
						 $x++;								
					 }
					} else {
					  echo $portfolioList .='<h3>'.$lang['no_content_found'].'</h3>';
					}		   
				   
				   
				   ?>		   	
			
		   </div><!-- ./col-lg-12--> 
		  </div><!-- Row-->		  
		  		  
		
		 </div><!-- ./col-lg-8--> 	
		 
 		 <?php elseif (Input::get('a') == 'services' && !Input::get('sid')) : ?>	
 		 	

		      <div class="col-lg-8 white-2 jobslist">
				<div class="col-lg-12"> 		 	
 		 	
 		  <?php
	             $query = DB::getInstance()->get("ratings", "*", ["AND" => ["freelancerid" => $freelancerid]]);
	             $count = $query->count();
				 $re = $count/7;
		  
		    $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
		    $limit = $service_limit;
		    $startpoint = ($page * $limit) - $limit;	  
			  
	        $q1 = DB::getInstance()->get("service", "*", ["userid" => $freelancerid]);
		    $total = $q1->count();
			
          $query = DB::getInstance()->get("service", "*", ["ORDER" => "date_added DESC", "LIMIT" => [$startpoint, $limit], "AND" => ["userid" => $freelancerid, "active" => 1, "delete_remove" => 0]]);
		  if($query->count()) {

		    $x = 1;
		    $serviceList = '';
			foreach($query->results() as $row) {
		    $serviceList = '';				
		    
            foreach ($arr as $key => $value) {
              $skills_each .=  '<label class="label label-success">'. $value .'</label> &nbsp;'; 
            }
								
			
			$q3 = DB::getInstance()->get("category", "*", ["catid" => $row->catid, "LIMIT" => 1]);
			if ($q3->count()) {
			 foreach($q3->results() as $r3) {
			 	$category_name = $r3->name;
			 }			
			}
			
			
			$blurb = truncateHtml($row->description, 400);
				
			 //Start new Admin object
			 $admin = new Admin();
			 //Start new Client object
			 $client = new Client();
			 //Start new Freelancer object
			 $freelancer = new Freelancer(); 
			 
			 if ($admin->isLoggedIn()) { 
	         } elseif($freelancer->isLoggedIn()) {
	         	
	         } elseif($client->isLoggedIn()) {
	          $senn .='	 
				 <a href="Client/invite.php?id='. escape($row->userid) .'" class="kafe-btn kafe-btn-mint-small">
				 <i class="fa fa-align-left"></i>' . $lang['send'] . ' ' . $lang['job'] . ' ' . $lang['invitation'] . '</a>
			 ';
			} else {
	          $senn .='	 
				 <a href="login.php" class="kafe-btn kafe-btn-mint-small">
				 <i class="fa fa-align-left"></i>' . $lang['send'] . ' ' . $lang['job'] . ' ' . $lang['invitation'] . '</a>
			 ';
			 }
		    echo $serviceList .= '		 
				 <div class="job">	
				  
				  <div class="row top-sec">
				   <div class="col-lg-12">
				   
					<div class="col-lg-12 col-xs-12"> 
					 <h4><a href="freelancer.php?a=services&id='. escape($row->userid) .'&sid='. escape($row->serviceid) .'">'. escape($row->title) .'</a></h4>
					</div><!-- /.col-lg-12 -->
					
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				  
				  <div class="row mid-sec">			 
				   <div class="col-lg-12">			 
				   <div class="col-lg-12">
					<hr class="small-hr">
					'. $blurb .'
					'. $skills_each .'
				   </div><!-- /.col-lg-12 -->
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				  
				  <div class="row bottom-sec">
				   <div class="col-lg-12">
					
					<div class="col-lg-12">
					 <hr class="small-hr">
					</div><!-- /.col-lg-12 --> 
					
					<div class="col-lg-3">
					 <h5> '. $lang['rate_hour'] .' </h5>
					 <p>$'. escape($row->rate) .'</p>
					</div><!-- /.col-lg-4 -->
					<div class="col-lg-3">
					 <h5> ' . $lang['category'] . ' </h5>
					 <p>'. escape($category_name) .'</p>
					</div>
					<div class="col-lg-3">
					 <h5>'. $lang['ratings'] .' ('. escape($re) .')</h5>
					 <p><i class="fa fa-star"></i>
					 <i class="fa fa-star"></i>
					 <i class="fa fa-star"></i>
					 <i class="fa fa-star"></i>
					 <i class="fa fa-star"></i></p>
					</div><!-- /.col-lg-4 -->
					<div class="col-lg-3">
					 '.$senn.'
					</div><!-- /.col-lg-4 -->
					
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				 
				 </div><!-- /.job -->
					 ';
			 $x++;		
			 
		   }
				
             unset($senn);	
             unset($serviceList);	 
             unset($skills);
		}else {
		 echo $serviceList = '<p>'.$lang['no_content_found'].'</p>';
		}
		
		//print
		echo Pagination($total,$limit,$page,'?a=services&id='.$freelancerid.'&');
       ?>		
       

				</div><!-- /.col-lg-12 -->
			   </div><!-- /.col-lg-8 -->       	 
			   
 		 <?php elseif (Input::get('a') == 'services' && Input::get('sid')) : ?>		
 		 	
 
		 <div class="col-lg-8 white-2">
		  <div class="row">
		   <div class="col-lg-12 jobpost">
		   
	 		  <?php
	          $query = DB::getInstance()->get("service", "*", ["ORDER" => "date_added DESC", "AND" => ["serviceid" => Input::get('sid'), "userid" => $freelancerid, "active" => 1, "delete_remove" => 0]]);
			  if($query->count()) {
	
			    $serviceList = '';
			    $x = 1;
			    
	            foreach ($arr as $key => $value) {
	              $skills_each .=  '<label class="label label-success">'. $value .'</label> &nbsp;'; 
	            }
				
				foreach($query->results() as $row) {
			    $serviceList = '';				
						
				$q3 = DB::getInstance()->get("category", "*", ["catid" => $row->catid, "LIMIT" => 1]);
				if ($q3->count()) {
				 foreach($q3->results() as $r3) {
				 	$category_name = $r3->name;
				 }			
				}		
				
			    echo $serviceList .= '		 
						 <h3>'. escape($row->title) .'</h3>
						 <p><strong>'. $lang['category'] .' :- </strong> '. escape($category_name) .'</p><br/>
						 <p><strong>'. $lang['rate_hour'] .' :- </strong> '. escape($row->rate) .'</p><br/>
		                 <h4>'. $lang['description'] .'</h4>
						 '. $row->description .'
						 <br/>
		                 <h4>'. $lang['skills'] .'</h4>
					     '. $skills_each .'
						 ';
					
	             unset($serviceList);	 
	             unset($skills);
				 $x++;		
				 
			   }
			}else {
			 echo $serviceList = '<p>'.$lang['no_content_found'].'</p>';
			}
	       ?>			   	
		   	
		   </div><!-- ./col-lg-12-->
		  </div><!-- ./row-->	  
		 </div><!-- ./col-lg-8--> 		 	   		 	 	
 
 

		 <?php elseif (Input::get('a') == 'jobs') : ?>		 
		 <div class="col-lg-8 white-2 jobslist">
		  <?php		
		  

		    $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
		    $limit = $job_limit;
		    $startpoint = ($page * $limit) - $limit;	  
			  
            $q1 = DB::getInstance()->get("job", "*", ["freelancerid" => $freelancerid]);
		    $total = $q1->count();
		  
		  
          $query = DB::getInstance()->get("job", "*", ["ORDER" => "date_added DESC", "LIMIT" => [$startpoint, $limit],
															"AND" => [
															    "freelancerid" => $freelancerid,
																"active" => 1,
																"delete_remove" => 0
															]]);
		  if($query->count()) {
		 	
		    $jobList = '';
		    $x = 1;	
			
			
			foreach($query->results() as $row) {
		    $jobList = '';
				
		    $q1 = DB::getInstance()->get("client", "*", ["clientid" => $row->clientid]);
			if ($q1->count()) {
				 foreach ($q1->results() as $r1) {
				  $name1 = $r1->name;	
				  $username1 = $r1->username;	
				  $imagelocation = $r1->imagelocation;	
			     }
			}	
			
			//Getting Proposals
			$q2 = DB::getInstance()->get("proposal", "*", ["jobid" => $row->jobid]);
			 if ($q2->count() === 0) {
			  $job_proposals = 0;	
			 } else {
			  $job_proposals = $q2->count();
			 }			
									
			$blurb = truncateHtml($row->description, 400);		
			if ($row->accepted === '1' ) {
			   if ($row->completed === '1') {
				  $senp .='
				  <p>' . $lang['completed'] . '</p>
				  ';	
			   } else {
				  $senp .='
				  <p>' . $lang['in_complete'] . '</p>
				  ';	
			   }
			} else {
			  $senp .='
			  <p>' . $lang['waiting'] . ' ' . $lang['freelancer'] . ' ' . $lang['to'] . ' ' . $lang['accept'] . '</p>
			  ';	
			}
							
			  
		    echo $jobList .= '
				 <div class="job">	
				  
				  <div class="row top-sec">
				   <div class="col-lg-12">
					<div class="col-lg-2 col-xs-12">
					 <a href="freelancer.html">
					  <img class="img-responsive" src="Client/'. escape($imagelocation) .'" alt="">
					 </a>
					</div><!-- /.col-lg-2 -->
					<div class="col-lg-10 col-xs-12"> 
					 <h4><a href="jobpost.php?title='. escape($row->slug) .'">'. escape($row->title) .'</a></h4>
					 <h5><a href="client.php?a=overview&id='. escape($row->clientid) .'" 
					 style="text-decoration: none !important; color: #2d6fa7 !important;">
					 '. escape($name1) .'</a> <small>@'. escape($username1) .'</small></h5>
					</div><!-- /.col-lg-10 -->
					
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				  
				  <div class="row mid-sec">			 
				   <div class="col-lg-12">			 
				   <div class="col-lg-12">
					<hr class="small-hr">
					'. $blurb .'
				   </div><!-- /.col-lg-12 -->
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				  
				  <div class="row bottom-sec">
				   <div class="col-lg-12">
					
					<div class="col-lg-12">
					 <hr class="small-hr">
					</div> 
					
					<div class="col-lg-2">
					 <h5>' . $lang['posted'] . ' </h5>
					 <p>'. ago(strtotime($row->date_added)) .'</p>
					</div>
					<div class="col-lg-2">
					 <h5>' . $lang['location'] . '</h5>
					 <p><i class="fa fa-map-marker"></i> '. escape($row->country) .'</p>
					</div>
					<div class="col-lg-2">
					 <h5> ' . $lang['budget'] . '</h5>
					 <p>$'. escape($row->budget) .'</p>
					</div>
					<div class="col-lg-2">
					 <h5>' . $lang['applicants'] . '</h5>
					 <p>'. escape($job_proposals) .'</p>
					</div>
					<div class="col-lg-4">
					<h5>' . $lang['job'] . ' ' . $lang['status'] . '</h5>
					 '.$senp.'
					</div>
					
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				 
				 </div><!-- /.job -->
					 ';
				
             unset($jobList); 
             unset($senp);		
			 $x++;		 
		   }
		}else {
		 echo $jobList = '<p>'.$lang['no_content_found'].'</p>';
		}

		//print
		echo Pagination($total,$limit,$page,'?a=jobs&id='.$clientid.'&');
        ?>
        
         </div><!-- /.col-lg-8 -->
         
 		 <?php elseif (Input::get('a') == 'reviews') : ?>		 
		 <div class="col-lg-8 white-2 jobslist">	
					<div id="star-container">
					<?php
					$q = DB::getInstance()->get("job", "*", ["AND" => ["freelancerid" => Input::get('id'), "completed" => 1]]);
					if ($q->count()) {
						 foreach ($q->results() as $r) {
							  
							    $q1 = DB::getInstance()->get("client", "*", ["clientid" => $r->clientid]);
								if ($q1->count()) {
									 foreach ($q1->results() as $r1) {
									  $name1 = $r1->name;	
									  $username1 = $r1->username;	
									  $imagelocation = $r1->imagelocation;	
								     }
								}	
						 	
	                     $jl = [
	                           '1'=>'1',
	                           '2'=>'2',
	                           '3'=>'3',
	                           '4'=>'4',
	                           '5'=>'5',
	                           '6'=>'6'
	                           ];
						
						foreach ($jl as $key => $value) {
							
								
							$query = DB::getInstance()->get("ratings", "*", ["AND" => ["jobid" => $r->jobid, 
							                                                                  "freelancerid" => Input::get('id'), 
							                                                                  "star_type" => $value]]);
							if ($query->count()) {
							 foreach($query->results() as $row) {
							 	
							  $star = $row->star;
							  $star_type = $value;						  
							  
							  if($star_type === '1'):
								 $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['skills'].'</span><br/>';   
							  elseif($star_type === '2'):
								 $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['quality'].' '.$lang['of'].' '.$lang['work'].'</span> <br/>'; 
							  elseif($star_type === '3'):
								 $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['availability'].'</span> <br/>'; 
							  elseif($star_type === '4'):
								 $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['adherence'].' '.$lang['to'].' '.$lang['schedule'].'</span> <br/>'; 
							  elseif($star_type === '5'):
								 $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['communication'].'</span> <br/>'; 
							  elseif($star_type === '6'):
								 $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['cooperation'].'</span> <br/>'; 
							  endif;
 							  
							  $arrs[] = ratings($star).$titl;
							  
							  $titl;
							 }
							}							
							
						  unset($titl); 
						  $x++;
						}						 	
							 	
							  
			
					?>
	    <?php ob_start(); ?>
	    
	    <?php
			
		$query = DB::getInstance()->get("ratings", "*", ["AND" => ["jobid" => $r->jobid]]);
		if ($query->count()) :
	    ?>
	    
				 <div class="job">	
				  
				  <div class="row top-sec">
				   <div class="col-lg-12">
					<div class="col-lg-2 col-xs-12">
					 <a href="client.php?a=overview&id=<?php echo escape($r->clientid); ?>">
					  <img class="img-responsive" src="Client/<?php echo escape($imagelocation) ?>" alt="">
					 </a>
					</div><!-- /.col-lg-2 -->
					<div class="col-lg-10 col-xs-12"> 
					 <h4><a href="jobpost.php?title=<?php echo escape($r->slug); ?>"><?php echo escape($r->title) ?></a></h4>
					 <h5><a href="client.php?a=overview&id=<?php echo escape($r->clientid); ?>" 
					 style="text-decoration: none !important; color: #2d6fa7 !important;">
					 <?php echo escape($name1) ?></a> <small>@<?php echo escape($username1) ?></small></h5>
					</div><!-- /.col-lg-10 -->
					
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				  
				  <div class="row mid-sec">			 
				   <div class="col-lg-12">			 
				   <div class="col-lg-12">
					<hr class="small-hr">
					<div class="col-lg-9">
					<?php
																							  					
					 foreach ($arrs as $value) {
						echo $value.'<br/>';
					}
					 unset($arrs);
                   echo '<h3>'.$lang['message'].'</h3>';
					$query = DB::getInstance()->get("ratings", "*", ["AND" => ["jobid" => $r->jobid, 
					                                                                  "freelancerid" => Input::get('id'), 
					                                                                  "star_type" => 7]]); 
					if ($query->count()) {
					 foreach($query->results() as $row) {
					  $message = $row->message;
					  echo '<p>'.$message.'</p>';
					 }
					}  					                                                                  
					 ?>
					</div>
					<div class="col-lg-3">
						
					<?php

                    $success = DB::getInstance()->sum("ratings", "star", ["AND" => ["star_type[!]" => 7,
                                                                                    "jobid" => $r->jobid,
                                                                                    "freelancerid" => Input::get('id')]]);
					foreach($success->results()[0] as $suc) {
						$suc_new = $suc;
					}
					
					$percentage = $suc_new/30 * 100;
			        $percentage = round($percentage, 1);
					
					echo '<h3>'. $lang['job'] .' '.$lang['success'] .' '. $lang['score'].'</h3>';
					echo '<input class="knob" data-width="75" data-linecap="round" value="'. $percentage .'" style="position:relative !important; margin: 0px !important;  padding: 0px !important; overflow-x: 0;"/>';					 
					  					                                                                  
					 ?>
					</div>
				   </div><!-- /.col-lg-12 -->
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				  
				  <div class="row bottom-sec">
				   <div class="col-lg-12">
					
					<div class="col-lg-12">
					 <hr class="small-hr">
					</div> 
					
					
				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->
				 
				 </div><!-- /.job -->
		
		<?php endif; ?>		 
				 
			 	<? echo ob_get_clean(); ?>	
			 	
			 	<?php 
                     }
				   }else {
		 echo $jobList = '<p>'.$lang['no_content_found'].'</p>';
		}	 ?>							
					</div>        		 	
         </div><!-- /.col-lg-8 -->		 	
		 <?php endif; ?>         
		</div><!-- /.row -->
		
	   </div><!-- /.container --> 
      </section><!-- End section-->	 
	  
      <!-- Include footer.php. Contains footer content. -->	
	  <?php include 'includes/template/footer.php'; ?>	
	  		  
     <!-- ==============================================
	 PROJECT PREVIEW MODAL (Do not alter this markup)
	 =============================================== -->
	 <div id="project-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog">
	   <div class="modal-content">
		<div class="modal-header">
		 <div class="container">
		  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		  <h1 id="hdr-title" class="text-center"><?php echo $portfolio_title; ?></h1>
		  <div class="row">
		   <div class="col-md-8 col-md-offset-2 text-center">
			<div class="image-wrapper">
			 <img class="img-responsive" src="Freelancer/<?php echo $portfolio_imagelocation; ?>" alt="">
			</div>
			<!--./image-wrapper -->
		   </div><!--./col-md-8 -->
		  </div><!--./row -->
		 </div><!--./container -->
		</div><!--./modal-header -->
		<div class="modal-body">
		 <div class="container">
		  <div class="row">
		   <div id="project-sidebar" class="col-md-3">
		    <h3><?php echo $portfolio_title; ?></h3>
			<p><i class="fa fa-calendar"></i><?php echo $portfolio_date; ?></p>
			<p><i class="fa fa-user"></i><?php echo $portfolio_client; ?></p>
			<p><i class="fa fa-globe"></i> <a href="http://<?php echo $portfolio_website; ?>" target="_blank"><?php echo $portfolio_website; ?></a></p>
		   </div>
		   <div id="project-content" class="col-md-9">
            <?php echo $portfolio_desc; ?>
			<p><a class="kafe-btn kafe-btn-mint-small" href="http://<?php echo $portfolio_website; ?>" target="_blank">Visit Website <i class="fa fa-arrow-right"></i></a></p>
		   </div>
		  </div>
		 </div>
	    </div><!-- End modal-body -->
	   </div><!-- End modal-content -->
	  </div><!-- End modal-dialog -->
	 </div><!-- End modal -->
	 
     <!-- ==============================================
	 Scripts
	 =============================================== -->
	 
     <!-- jQuery 2.1.4 -->
     <script src="assets/js/jQuery-2.1.4.min.js"></script>
     <!-- Bootstrap 3.3.6 JS -->
     <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <script src="assets/js/jquery.knob.js"></script>
    <script src="assets/js/knob.js"></script>
     <!-- Waypoints JS -->
     <script src="assets/js/waypoints.min.js" type="text/javascript"></script>
     <!-- Kafe JS -->
     <script src="assets/js/kafe.js" type="text/javascript"></script>

</body>
</html>
