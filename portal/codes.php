
<!-- ==============================================
Top Section
=============================================== -->
<section class="top-section">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 white-3">
                <form action="search.php" method="get" class="list-search list-s revealOnScroll" data-animation="fadeInDown" data-timeout="200">
                    <button><i class="fa fa-search"></i></button>
                    <input type="text" class="form-control" name="searchterm" placeholder="<?php echo $lang['job']; ?> <?php echo $lang['title']; ?>, <?php echo $lang['keywords']; ?> <?php echo $lang['or']; ?> <?php echo $lang['company']; ?> <?php echo $lang['name']; ?>" value=""/>   
                    <div class="clearfix"></div>
                </form>
                <div class="post-container">
                    <?php		

                    $limit = 5;

                    $query = DB::getInstance()->get("job", "*", ["ORDER" => "date_added DESC", "LIMIT" => $limit, "AND" => ["featured" => 1, "active" => 1, "delete_remove" => 0]]);
                    if($query->count()) {

                        $x = 1;	


                        foreach($query->results() as $row) {
                            $topList = '';

                            featured($row->jobid);							

                            $date_added = strftime("%b %d, %Y, %H : %M %p ", strtotime($row->date_added));

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

                            echo $topList .= '
		 <div class="post status-active">
		  <a href="jobpost.php?title='. escape($row->slug) .'">	
		  <div class="e-arrow-not-auth vote-btn tile-btn hidden-xs" title="">
		  	<div class="inner-first">
		  	 ' . $lang['budget'] . '
		  	</div>
		  	<div class="inner-second">
		  	 '. $currency_symbol .' '. escape($row->budget) .'
		  	</div>
		   </div>
		   <div class="avatar-wrapper">
		    <div class="image-icon">
		     <div class="smart-avatar avatar">
		      <span class="overlap centered">
		      	<img src="Client/'. escape($imagelocation) .'" class="img-responsive" alt="" />
		      </span>
		     </div>
		    </div>
		   </div>
		   <div class="comments-section hidden-xs">
		  	<div class="inner-first">
		   	 ' . $lang['applicants'] . ' 
		   	</div>
		   	<div class="inner-second">'. escape($job_proposals) .'</div>
		   	</div>
		   <div class="post-content">
		    <h3>
		     <div class="" >
		      <span class="hidden-post-placeholder"></span>
		      '. escape($row->title) .' <label class="label bg-danger m-left"> ' . $lang['featured'] . ' </label>
		     </div>
		    </h3>
		    <span class="time-ago">'. ago(strtotime($row->date_added)) .' </span>
		    <p> </p>
		   </div>

		  </a> 
		 </div>		';

                            unset($topList);	
                            $x++;		 
                        }
                    }else {
                        echo $topList = '<p>'.$lang['no_content_found'].'</p>';
                    }

                    ?>	
                </div>	
                <p class="text-center">
                    <a href="jobs.php" class="btn btn-success"><?php echo $lang['browse']; ?> <?php echo $lang['more']; ?> <?php echo $lang['jobs']; ?></a>	
                </p> 

            </div>

        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.section -->   