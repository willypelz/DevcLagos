<?php
error_reporting(E_ALL);

session_start();

$GLOBALS['config'] = array(
  'mysql' => array(
    'host' => '_DB_HOST_',
    'username' => '_DB_USER_',
    'password' => '_DB_PASSWORD_',
    'db' => '_DB_NAME_'
  ),
  'remember' => array(
    'cookie_name' => 'hash',
    'cookie_expiry' => 604800
  ),
  'language' => array(
    'cookie_name' => 'lang',
    'session_name' => 'lang',
    'cookie_expiry' => 604800
  ),
  'session' => array(
    'session_admin' => 'admin',
    'session_client' => 'client',
    'session_name' => 'freelancer',
    'token_name' => 'token'
  )
);

spl_autoload_register(function($class){
  require_once 'classes/' .$class. '.php';	
});


require_once 'functions/sanitize.php';
require_once 'functions/Mail.php';
require_once 'functions/lang_front.php';
require_once 'functions/TruncateHTML.php';
require_once 'functions/Pagination.php';
require_once 'functions/Functions.php';
require_once 'functions/Uniqueid.php';
require_once 'functions/Slug.php';
require_once 'functions/auto_copyright.php';


if (Cookie::exists(Config::get('remember/cookie_name')) && !Session::exists(Config::get('session/session_name')) && !Session::exists(Config::get('session/session_client'))) {
  $hash = Cookie::get(Config::get('remember/cookie_name'));
  $hashCheck = DB::getInstance()->get("users_session", "*", ["hash" => $hash]);	

  if ($hashCheck->count()) {
  	$freelancer = new Freelancer($hashCheck->first()->user_id);
  	$client = new Client($hashCheck->first()->user_id);
	
	if ($freelancer) {
	$freelancer->login();  
	}else {
	$client->login(); 
	}
	
  }

}
?>