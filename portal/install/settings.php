<?php
    
	//Setup Settings
    $config_file_default    = "setup.php"; 
    $config_file_default_front    = "frontsetup.php"; 
    $config_file_default_back    = "backsetup.php";    
    $config_file_default_b    = "bsetup.php";   
	//File Directory
    $config_file_directory  = "../core/";	
	//Init Setup Settings
    $config_file_name       = "init.php";  
    $config_file_name_front       = "frontinit.php"; 
    $config_file_name_back       = "backinit.php";   
    $config_file_name_b       = "binit.php";   
	//File Path Directory
    $config_file_path       = $config_file_directory.$config_file_name;
    $config_file_path_front       = $config_file_directory.$config_file_name_front;
    $config_file_path_back       = $config_file_directory.$config_file_name_back;
    $config_file_path_b       = $config_file_directory.$config_file_name_b;
    //Database SQL
    $sql_dump_file               = "database.sql";
	
	define("DATABASE_TYPE", "mysql");
	
	// Force database creation
	define("DATABASE_CREATE", false);

    // Defines using of utf-8 encoding and collation for SQL dump file
	define("USE_ENCODING", true);
	define("DUMP_FILE_ENCODING", "utf8");
	define("DUMP_FILE_COLLATION", "utf8_unicode_ci");	
    
?>
