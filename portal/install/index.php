<?php

error_reporting(E_ALL);

session_start();


$test = $_SERVER["REQUEST_URI"];

if(!file_exists('../core/init.php')){
}else {
  header("Location: ../index.php");
}   
require_once("settings.php");      
require_once('functions/database.php');  
require_once('functions/functions.php');  
require_once '../functions/lang_install.php';   
    
	$step = 1;
	$canInstall = 'true';
	$svrErr	= 'false';
	$folderErr = 'false';

	// Check for PHP Version, MySQLi & other Core Functions
	if (version_compare(PHP_VERSION, '5.3.0', '>=')) {
		$phpversion = PHP_VERSION;
		$phpcheck = '<i class="fa fa-check text-default"></i> PASS';
	} else {
		$phpversion = 'You need to have PHP Version 5.3 or higher Installed to run Entrepreneur.';
		$phpcheck = '<i class="fa fa-times text-danger"></i> FAIL';
		$canInstall = 'false';
		$svrErr	= 'true';
	}
	if (curl_version()) {
		$curlcheck = '<i class="fa fa-check"></i> PASS';
	} else {
		$curlcheck = '<i class="fa fa-times text-danger"></i> FAIL';
		$canInstall = 'false';
		$svrErr	= 'true';
	}	
	if (class_exists('PDO')) {
		$pdo = '<i class="fa fa-check"></i> PASS';
	} else {
		$pdo = '<i class="fa fa-times"></i> FAIL';
		$canInstall = 'false';
		$svrErr	= 'true';
	}
	if (function_exists('mysqli_connect')) {
		$mysqli = '<i class="fa fa-check"></i> PASS';
	} else {
		$mysqli = '<i class="fa fa-times"></i> FAIL';
		$canInstall = 'false';
		$svrErr	= 'true';
	}
	if (version_compare(PHP_VERSION, '7.0', '<=')) {
	
		if (function_exists('mysql_connect')) {
			$mysql = '<i class="fa fa-check"></i> PASS';
		} else {
			$mysql = '<i class="fa fa-times"></i> FAIL';
			$canInstall = 'false';
			$svrErr	= 'true';
		}
	} else {
		$canInstall = 'true';
	}

	if(isset($_POST['submit']) && $_POST['submit'] == 'nextStep') {
		$step = '2';
	}

if (isset($_POST['install'])) {
	
$db = Database::GetInstance($_POST['host'], $_POST['name'], $_POST['username'], $_POST['password'], DATABASE_TYPE);
if (DATABASE_CREATE && !$db->Create()) {
    $error_mg[] = $db->Error();
} else if ($db->Open()) {
	 // Read sql dump file
    $sql_dump = file_get_contents($sql_dump_file);
	$database = db_install($sql_dump_file);
	
    $step = '2';

	if ($database == true) {
			/*frontinit.php*/
			$config_file_front = file_get_contents($config_file_default_front);
			$config_file_front = str_replace("_DB_HOST_", $_POST['host'], $config_file_front);
			$config_file_front = str_replace("_DB_NAME_", $_POST['name'], $config_file_front);
			$config_file_front = str_replace("_DB_USER_", $_POST['username'], $config_file_front);
			$config_file_front = str_replace("_DB_PASSWORD_", $_POST['password'], $config_file_front);
			
			$f = @fopen($config_file_path_front, "w+");
			fwrite($f, $config_file_front);
			
			/*backinit.php*/
			$config_file_back = file_get_contents($config_file_default_back);
			$config_file_back = str_replace("_DB_HOST_", $_POST['host'], $config_file_back);
			$config_file_back = str_replace("_DB_NAME_", $_POST['name'], $config_file_back);
			$config_file_back = str_replace("_DB_USER_", $_POST['username'], $config_file_back);
			$config_file_back = str_replace("_DB_PASSWORD_", $_POST['password'], $config_file_back);
			
			$f = @fopen($config_file_path_back, "w+");
			fwrite($f, $config_file_back);
			
			/*binit.php*/
			$config_file_b = file_get_contents($config_file_default_b);
			$config_file_b = str_replace("_DB_HOST_", $_POST['host'], $config_file_b);
			$config_file_b = str_replace("_DB_NAME_", $_POST['name'], $config_file_b);
			$config_file_b = str_replace("_DB_USER_", $_POST['username'], $config_file_b);
			$config_file_b = str_replace("_DB_PASSWORD_", $_POST['password'], $config_file_b);
			
			$f = @fopen($config_file_path_b, "w+");
			fwrite($f, $config_file_b);
			
			/*init.php*/
			$config_file = file_get_contents($config_file_default);
			$config_file = str_replace("_DB_HOST_", $_POST['host'], $config_file);
			$config_file = str_replace("_DB_NAME_", $_POST['name'], $config_file);
			$config_file = str_replace("_DB_USER_", $_POST['username'], $config_file);
			$config_file = str_replace("_DB_PASSWORD_", $_POST['password'], $config_file);
			
			$f = @fopen($config_file_path, "w+");
			fwrite($f, $config_file);		
		
	    $noError = true;	
	} else {
		$hasError = true;
	}
	
				
}
    		
			
			//$database = IMPORT_TABLES($_POST['host'], $_POST['username'], $_POST['password'], $_POST['name'], $sql_dump);
			

  	
}

?>

<!DOCTYPE html>
<html>
  <head>
  	<title>The Kafe - Ultimate Freelance Marketplace</title>    
  
	    <!-- ==============================================
		CSS
		=============================================== --> 
		<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="../assets/css/hoopler.css">
		<link rel="stylesheet" href="../assets/css/login.css">
		
	
  </head>	
<body>
     <!-- ==============================================
     Navigation Section
     =============================================== -->
	<header id="header" headroom="" role="banner" tolerance="5" offset="700" class="navbar navbar-fixed-top navbar--white ng-isolate-scope headroom headroom--top">
	  <nav role="navigation">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle header-nav__button" data-toggle="collapse" data-target=".navbar-main">
	        <span class="icon-bar header-nav__button-line"></span>
	        <span class="icon-bar header-nav__button-line"></span>
	        <span class="icon-bar header-nav__button-line"></span>
	      </button>
	      <div class="header-nav__logo">
	        <a class="header-nav__logo-link navbar-brand" href="index.php">
	       		<i class="fa fa-coffee"></i>
	       	The Kafe</a>
	      </div>
	    </div>
	    <div class="collapse navbar-collapse navbar-main navbar-right">
	      <ul class="nav navbar-nav header-nav__navigation">            
              <li class="dropdown user user-menu">
                <!-- Menu Toggle Button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  	<?php echo $lang['languages']; ?>
                </a>
                <ul class="dropdown-menu">
					<li class="m_2"><a href="<?php echo $test; ?>?lang=english">English</a></li>
					<li class="m_2"><a href="<?php echo $test; ?>?lang=french">French</a></li>
					<li class="m_2"><a href="<?php echo $test; ?>?lang=german">German</a></li>	
					<li class="m_2"><a href="<?php echo $test; ?>?lang=portuguese">Portuguese</a></li>
					<li class="m_2"><a href="<?php echo $test; ?>?lang=spanish">Spanish</a></li>
					<li class="m_2"><a href="<?php echo $test; ?>?lang=russian">Russian</a></li>	
					<li class="m_2"><a href="<?php echo $test; ?>?lang=chinese">Chinese</a></li>	
        		</ul>
              </li>


              	        
	      </ul>
	    </div>
	  </nav>
	</header>     
	
     <!-- ==============================================
	 Header
	=============================================== --> 
	 
	 <header id="top" class="header-install">
        <div class="text-vertical-center">
            <h1><i class="fa fa fa-coffee"></i> Install The TechJobPortal</h1>
            
            <div class="container">
             	
		        <?php if(isset($hasError)) { //If errors are found ?>
		        <div class="alert alert-danger fade in">
		         <a href="#" class="close" data-dismiss="alert">&times;</a>
		         <strong><?php echo $lang['hasError']; ?></strong> <?php echo $lang['connect_error']; ?>
			    </div>
		        <?php } ?>
		        
		        <?php if(isset($noError)) { //If errors are found ?>
		        <div class="alert alert-success fade in">
		         <a href="#" class="close" data-dismiss="alert">&times;</a>
		         <strong><?php echo $lang['noError']; ?></strong> <?php echo $lang['install_success']; ?>
			    </div>
		        <?php } ?>
		        
				 <?php if (isset($error_mg)) {
				 	foreach ($error_mg as $mg) {
					  echo $mg;
					 }
				 } ?>
		        
		        <?php if($step == 2) { if(!isset($noError) && !isset($error) && !isset($hasError)) {?>
		        <div class="alert alert-success fade in">
		         <a href="#" class="close" data-dismiss="alert">&times;</a>
		         <strong><?php echo $lang['note']; ?></strong> <?php echo $lang['database_note']; ?>
			    </div>
		        <?php } } ?>
		        
		    <?php if ($step == 1) : ?>
		    <br/>	
		    <div class="col-lg-4 col-lg-offset-4">	
		      <div class="list-group">
			    <div class="list-group-item text-muted">
			      PHP Version	
		          <span><?php echo $phpversion; ?></span>
		          <span class="badge"><?php echo $phpcheck; ?></span>
                </div>
			    <div class="list-group-item text-muted">
			     PDO Extension	
			     <span class="badge"><?php echo $pdo; ?></span> 
			    </div>  
			    <div class="list-group-item text-muted">
			     Mysqli Extension	
			     <span class="badge"><?php echo $mysqli; ?></span> 
			    </div>  
			    <div class="list-group-item text-muted">
			     Mysql Extension	
			     <span class="badge"><?php echo $mysql; ?></span> 
			    </div>
			    <div class="list-group-item text-muted">
			      CURL Extension	
		          <span class="badge"><?php echo $curlcheck; ?></span>
                </div>   
			  </div>	
		      <?php if ($canInstall == 'true') { ?>	
		      	<form method="post">
		        <button class="form-btn" type="submit" name="submit" value="nextStep"><?php echo $lang['next_step']; ?></button>
		        </form>
		      <?php } ?>
	        </div> 
		    <?php else: ?>    
		      <?php if(isset($noError)) { ?>
		      	<br />	
		      	<div class="form-sign">
		          <a href="../index.php" class="form-btn"><?php echo $lang['go_home_page']; ?></a>
		        </div>
		      <?php } else { ?> 

	     <div class="col-lg-6 col-lg-offset-3 text-center">		      	
		  <div class="form-sign">
		   <form method="post">
		    <div class="form-head">
			</div><!-- /.form-head -->
            <div class="form-body">
			
			 <div class="form-row">
			  <div class="form-controls">
			   <input name="host" placeholder="<?php echo $lang['database_host']; ?>" class="field" type="text">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			   <input name="name" placeholder="<?php echo $lang['database_name']; ?>" class="field" type="text">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			   <input name="username" placeholder="<?php echo $lang['database_username']; ?>" class="field" type="text">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			   <input name="password" placeholder="<?php echo $lang['database_password']; ?>" class="field" type="password">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->
			 
		    </div><!-- /.form-body -->

			<div class="form-foot">
			 <div class="form-actions">					
			  <input value="<?php echo $lang['install']; ?>" class="form-btn" type="submit" name="install">
			 </div><!-- /.form-actions -->
             <div class="form-head">
			  <a href="index.php" class="more-link"><?php echo $lang['go_back']; ?></a>
			 </div>
			</div><!-- /.form-foot -->
		   </form>
		   </div>
		  </div>
		      
		      <?php } ?>
		         
		     <?php endif; ?>     
		         
            </div>
            
        </div>
    </header>
	
	
	<!-- ==============================================
	 Scripts
	 =============================================== -->
	 
    <!-- jQuery 2.1.4 -->
    <script src="../assets/js/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.6 JS -->
    <script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>