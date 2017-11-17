<?php
header('Cache-control: private'); // IE 6 FIX

	if(isSet($_GET['lang']))
	{
	  $lang = $_GET['lang'];
	
	  // register the session and set the cookie
	  $_SESSION['lang'] = $lang;
	
	  setcookie("lang", $lang, time() + (3600 * 24 * 30));
	}
	else if(isSet($_SESSION['lang']))
	{
	  $lang = $_SESSION['lang'];
	}
	else if(isSet($_COOKIE['lang']))
	{
	  $lang = $_COOKIE['lang'];
	}
	else
	{
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