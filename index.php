<?php
require_once 'lib/Twig/Autoloader.php';
require_once 'classes/DB.class.php';
require_once 'classes/File.class.php';
Twig_Autoloader::register();

  
try {
    
    $db = new DB('localhost','root', '', 'Wiki');
    $db -> connection();
    
    $file = new File();
    
    
    // all templates are situated there
    $loader = new Twig_Loader_Filesystem('templates');
    
    // Twig Initializing 
    $twig = new Twig_Environment($loader);
    $template = $twig ->loadTemplate('main.html');
    echo $template -> render(
      ['data' => $data]
    );
    
       
} catch (Exception $e) {
    die ('ERROR: ' . $e->getMessage());
}