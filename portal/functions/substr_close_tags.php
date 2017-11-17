<?php

/*Subtracting Close Tags */ 
	function substr_close_tags($code, $limit = 400)
	{
	    if ( strlen($code) <= $limit )
	    {
	        return $code;
	    }
	
	    $html = substr($code, 0, $limit);
	    preg_match_all ( "#<([a-zA-Z]+)#", $html, $result );
	
	    foreach($result[1] AS $key => $value)
	    {
	        if ( strtolower($value) == 'br' )
	        {
	            unset($result[1][$key]);
	        }
	    }
	    $openedtags = $result[1];
	
	    preg_match_all ( "#</([a-zA-Z]+)>#iU", $html, $result );
	    $closedtags = $result[1];
	
	    foreach($closedtags AS $key => $value)
	    {
	        if ( ($k = array_search($value, $openedtags)) === FALSE )
	        {
	            continue;
	        }
	        else
	        {
	            unset($openedtags[$k]);
	        }
	    }
	
	    if ( empty($openedtags) )
	    {
	        if ( strpos($code, ' ', $limit) == $limit )
	        {
	            return $html."...";
	        }
	        else
	        {
	            return substr($code, 0, strpos($code, ' ', $limit))."...";
	        }
	    }
	
	    $position = 0;
	    $close_tag = '';
	    foreach($openedtags AS $key => $value)
	    {   
	        $p = strpos($code, ('</'.$value.'>'), $limit);
	
	        if ( $p === FALSE )
	        {
	            $code .= ('</'.$value.'>');
	        }
	        else if ( $p > $position )
	        {
	            $close_tag = '</'.$value.'>';
	            $position = $p;
	        }
	    }
	
	    if ( $position == 0 )
	    {
	        return $code;
	    }
	
	    return substr($code, 0, $position).$close_tag."...";
	} 


?>