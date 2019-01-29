<?php
require_once 'classes/File.class.php';
require_once 'classes/DB.class.php';
    header('Location:index.php');
    $db = new DB('localhost','root', '', 'Wiki');
    $db -> connection();
    $file = new File();
    $file -> upload();
    
    

   
 
