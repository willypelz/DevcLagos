<?php
//Check if init.php exists
if(!file_exists('core/frontinit.php')){
    header('Location: install/');        
    exit;
}else{
    require_once 'core/frontinit.php';	
}

//Get Client's Data
$clientid = Input::get('id');
$query = DB::getInstance()->get("client", "*", ["clientid" => $clientid, "LIMIT" => 1]);
if ($query->count() === 1) {
    foreach($query->results() as $row) {
        $name = $row->name;
        $username = $row->username;
        $client_imagelocation = $row->imagelocation;
        $client_bgimage = $row->bgimage;
    }
} else {
    Redirect::to('jobs.php');
}

$query = DB::getInstance()->get("profile", "*", ["userid" => $clientid, "LIMIT" => 1]);
if ($query->count()) {
    foreach($query->results() as $row) {
        $nid = $row->id;
        $location = $row->location;
        $city = $row->city;
        $country = $row->country;
        $about = $row->about;
    }			
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
                                                 ), url('Client/<?php echo $client_bgimage; ?>') no-repeat center center fixed;
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
                            <img src="Client/<?php echo $client_imagelocation; ?>" class="img-thumbnail img-responsive revealOnScroll" data-animation="fadeInDown" data-timeout="200" alt="">
                            <h1 class="revealOnScroll" data-animation="bounceIn" data-timeout="200"> <?php echo $name; ?></h1>
                            <p class="revealOnScroll" data-animation="fadeInUp" data-timeout="400"><i class="fa fa-map-marker"></i> <?php echo $location; ?>, <?php echo $city; ?>, <?php echo $country; ?></p>
                            <a class="kafe-btn kafe-btn-mint-small"><i class="fa fa-user-md"></i> <?php echo $lang['client']; ?></a>
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
                                    <em class="fa fa-fw fa-user-md"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['client']; ?>
                                </a>

                            </div><!-- ./.list-group -->
                        </div><!-- ./.list --> 

                        <?php $overview = (Input::get('a') == 'overview') ? ' active' : ''; ?>
                        <?php $jobs = (Input::get('a') == 'jobs') ? ' active' : ''; ?>
                        <?php $reviews = (Input::get('a') == 'reviews') ? ' active' : ''; ?>
                        <div class="list">
                            <div class="list-group">

                                <a href="client.php?a=overview&id=<?php echo $clientid; ?>" class="list-group-item <?php echo $overview; ?> cat-list">
                                    <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['overview']; ?>
                                </a>
                                <a href="client.php?a=jobs&id=<?php echo $clientid; ?>" class="list-group-item <?php echo $jobs; ?> cat-list">
                                    <em class="fa fa-fw fa-align-justify"></em>&nbsp;&nbsp;&nbsp;<?php echo $lang['jobs']; ?> <?php echo $lang['posted']; ?>
                                </a>
                                <a href="client.php?a=reviews&id=<?php echo $clientid; ?>" class="list-group-item <?php echo $reviews; ?> cat-list">
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
                                        <h5><?php echo $lang['jobs']; ?> <?php echo $lang['posted']; ?> </h5>
                                        <p>
                                            <?php	
                                            $query = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => $clientid, "invite" => 0]]);
                                            echo $query->count();
                                            ?>	
                                        </p>
                                    </div><!-- /.col-lg-2 -->
                                    <div class="col-lg-3">
                                        <h5><?php echo $lang['jobs']; ?> <?php echo $lang['invites']; ?> </h5>
                                        <p>
                                            <?php	
                                            $query = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => $clientid, "invite" => 1]]);
                                            echo $query->count();
                                            ?>	
                                        </p>
                                    </div><!-- /.col-lg-2 -->
                                    <div class="col-lg-3">
                                        <h5><?php echo $lang['jobs']; ?> <?php echo $lang['completed']; ?> </h5>
                                        <p>
                                            <?php	
                                            $query = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => $clientid, "completed" => 1]]);
                                            echo $query->count();
                                            ?>	
                                        </p>
                                    </div><!-- /.col-lg-2 -->

                                </div><!-- /.col-lg-12 -->

                                <div class="col-lg-12">

                                    <div class="col-lg-12">
                                        <hr class="small-hr">
                                    </div><!-- /.col-lg-12 --> 

                                    <div class="col-lg-4">
                                        <h5> <?php echo $lang['ratings']; ?> 
                                            (<?php	
                                            $query = DB::getInstance()->get("ratings_client", "*", ["AND" => ["clientid" => $clientid]]);
                                            $count = $query->count();
                                            echo $re = $count/7;
                                            ?>)</h5>
                                        <p><i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i></p>
                                    </div><!-- /.col-lg-4 -->
                                    <div class="col-lg-4">
                                        <h5><?php echo $lang['job']; ?> <?php echo $lang['payments']; ?> </h5>
                                        <p> <?php
                                            echo $currency_symbol.'&nbsp;';
                                            $query = DB::getInstance()->sum("transactions", "payment", ["AND" =>["freelancerid" => $clientid, "transaction_type" => 4]]);
                                            foreach($query->results()[0] as $row) {
                                                echo $row;
                                            }	?></p>
                                    </div><!-- /.col-lg-3 -->

                                </div><!-- /.col-lg-12 -->
                            </div><!-- /.col-lg-12 -->
                        </div><!-- /.about -->



                    </div><!-- /.col-lg-8 -->

                    <?php elseif (Input::get('a') == 'jobs') : ?>		 
                    <div class="col-lg-8 white-2 jobslist">
                        <?php		


                        $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
                        $limit = $job_limit;
                        $startpoint = ($page * $limit) - $limit;	  

                        $q1 = DB::getInstance()->get("job", "*", ["clientid" => $clientid]);
                        $total = $q1->count();


                        $query = DB::getInstance()->get("job", "*", ["ORDER" => "date_added DESC", "LIMIT" => [$startpoint, $limit],
                                                                     "AND" => [
                            "clientid" => $clientid,
                            "active" => 1,
                            "delete_remove" => 0
                        ]]);
                        if($query->count()) {

                            $jobList = '';
                            $x = 1;	


                            foreach($query->results() as $row) {
                                $jobList = '';

                                $q1 = DB::getInstance()->get("client", "*", ["clientid" => $clientid]);
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
                                    $sen .='
			  <p>' . $lang['assigned'] . '</p>
			  ';	
                                } else {
                                    $sen .='
			  <p>' . $lang['waiting'] . ' ' . $lang['to'] . ' ' . $lang['be'] . ' ' . $lang['assigned'] . '</p>
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
					 '.$sen.'
					</div>

				   </div><!-- /.col-lg-12 -->
				  </div><!-- /.row -->

				 </div><!-- /.job -->
					 ';

                                unset($jobList); 
                                unset($sen);		
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
                            $q = DB::getInstance()->get("job", "*", ["AND" => ["clientid" => Input::get('id'), "completed" => 1]]);
                            if ($q->count()) {
                                foreach ($q->results() as $r) {

                                    $q1 = DB::getInstance()->get("freelancer", "*", ["freelancerid" => $r->freelancerid]);
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


                                        $query = DB::getInstance()->get("ratings_client", "*", ["AND" => ["jobid" => $r->jobid, 
                                                                                                          "clientid" => Input::get('id'), 
                                                                                                          "star_type" => $value]]);
                                        if ($query->count()) {
                                            foreach($query->results() as $row) {

                                                $star = $row->star;
                                                $star_type = $value;						  

                                                if($star_type === '1'):
                                                $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['cooperation'].'</span><br/>';   
                                                elseif($star_type === '2'):
                                                $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['skills'].'</span> <br/>'; 
                                                elseif($star_type === '3'):
                                                $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['availability'].'</span> <br/>'; 
                                                elseif($star_type === '4'):
                                                $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['quality'].' '.$lang['of'].' '.$lang['requirements'].'</span> <br/>'; 
                                                elseif($star_type === '5'):
                                                $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['set'].' '.$lang['reasonable'].' '.$lang['deadlines'].'</span> <br/>'; 
                                                elseif($star_type === '6'):
                                                $titl .='&nbsp;&nbsp; <span class="rate">'.$lang['communication'].'</span> <br/>'; 
                                                endif;

                                                $arrs[] = ratings($star).$titl;

                                                $titl;
                                            }
                                        }							

                                        unset($titl); 
                                        $x++;
                                    }						 	



                            ?>
                            <? ob_start(); ?>

                            <?php

                                    $query = DB::getInstance()->get("ratings_client", "*", ["AND" => ["jobid" => $r->jobid]]);
                                    if ($query->count()) :
                            ?>
                            <div class="job">	

                                <div class="row top-sec">
                                    <div class="col-lg-12">
                                        <div class="col-lg-2 col-xs-12">
                                            <a href="freelancer.php?a=overview&id=<?php echo escape($r->freelancerid); ?>">
                                                <img class="img-responsive" src="Freelancer/<?php echo escape($imagelocation) ?>" alt="">
                                            </a>
                                        </div><!-- /.col-lg-2 -->
                                        <div class="col-lg-10 col-xs-12"> 
                                            <h4><a href="jobpost.php?title=<?php echo escape($r->slug); ?>"><?php echo escape($r->title) ?></a></h4>
                                            <h5><a href="freelancer.php?a=overview&id=<?php echo escape($r->freelancerid); ?>" 
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
                                    $query = DB::getInstance()->get("ratings_client", "*", ["AND" => ["jobid" => $r->jobid, 
                                                                                                      "clientid" => Input::get('id'), 
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

                                    $success = DB::getInstance()->sum("ratings_client", "star", ["AND" => ["star_type[!]" => 7,
                                                                                                           "jobid" => $r->jobid,
                                                                                                           "clientid" => Input::get('id')]]);
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
