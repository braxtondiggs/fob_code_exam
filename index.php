<?php
require 'vendor/autoload.php';
use Dotenv\Dotenv;
use Steampixel\Route;
use Src\DatabaseConnector;
use Src\Controller\CountryController;
use Src\Controller\ProductController;

$dotenv = new DotEnv(__DIR__);
$dotenv->load();

$dbConnection = (new DatabaseConnector())->getConnection();;

Route::add('/', function() {
    readfile("public/index.html");
});

Route::add('/api/country', function() use($dbConnection) {
    header("Content-Type: application/json; charset=UTF-8");
    $controller = new CountryController($dbConnection);
    $controller->processRequest();
});

Route::add('/api/product', function() use($dbConnection) {
    header("Content-Type: application/json; charset=UTF-8");
    $controller = new ProductController($dbConnection);
    $controller->processRequest();
});

Route::run('/');
