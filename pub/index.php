<?php

 require_once('./../src/config.php');
  
  use Steampixel\Route;
  Route::add('/', function() {
    global $twig;
    $postArray = Post::getPage();
    $twigData = array("postArray" => $postArray, "Page Title" => "Strona Glowna");
    $twig->display('index.html.twig',$twigData);
});
  
Route::add('/upload', function() {
    global $twig;
    $twig->display('upload.html.twig');
  });
  
  Route::add('/upload', function() {
    
    global $twig;
    if(isset($_POST['submit']))  {
        Post::upload($_FILES['uploadedFile']['tmp_name']);
    }
    header("Location: http://localhost/CzubackiPHP/pub");
}, 'post');
  
  
  Route::run('/CzubackiPHP/pub');
?>