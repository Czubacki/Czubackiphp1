<?php
require_once('./../vendor/autoload.php');
$db = new mysqli("localhost", "root", "", "pub");
require("Post.class.php");
require("user.class.php");

 $loader = new Twig\Loader\FilesystemLoader('./../src/templates');
 $twig = new Twig\Environment($loader);
?>