<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/src/vendor/autoload.php');

use Dotenv\Dotenv;
use Illuminate\Database\Capsule\Manager as Capsule;

$dotenv = Dotenv::createImmutable(__DIR__. '/../');
$dotenv->load();

$capsule = new Capsule();

$capsule->addConnection([
    'driver'    => 'mysql',
    'host'      => $_ENV['DB_HOST'],       // servidor MySQL
    'database'  => $_ENV['DB_NAME'],// nombre de tu base
    'username'  => $_ENV['DB_USER'],            // usuario MySQL
    'password'  => $_ENV['DB_PASSWORD'],     // contraseña MySQL
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix'    => '',                // prefijo en las tablas (si usas)
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();
