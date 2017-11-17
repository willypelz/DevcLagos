<?php
error_reporting(0);
if (isset($_GET['lang'])) {
	
   $lang = $_GET['lang'];
   $sessionName = Config::get('language/session_name');	
   $cookieName = Config::get('language/cookie_name');	
   
   Session::put($sessionName, $lang);
   Cookie::put($cookieName, $lang, Config::get('language/cookie_expiry'));		
	
}elseif (Session::get('lang')) {
	$lang = Session::get('lang');
}elseif (Cookie::get('lang')) {
    $lang = Cookie::get('lang');	
}else {
	$lang = 'english';
}

	switch ($lang) {
	  case 'english':
	  $lang_file = 'english.php';
	  break;
	
	  case 'french':
	  $lang_file = 'french.php';
	  break;
	
	  case 'spanish':
	  $lang_file = 'spanish.php';
	  break;
	
	  case 'german':
	  $lang_file = 'german.php';
	  break;
	
	  case 'portuguese':
	  $lang_file = 'portuguese.php';
	  break;
	
	  case 'russian':
	  $lang_file = 'russian.php';
	  break;
	
	  case 'chinese':
	  $lang_file = 'chinese.php';
	  break;
	
	  default:
	  $lang_file = 'english.php';
	
	}
include_once '../languages/'.$lang_file;
?>