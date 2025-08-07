<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/src/database/boostrap.php');
include_once($_SERVER['DOCUMENT_ROOT'].'/src/models/Rol.php');
// Obtener todos los usuarios
$usuarios = Rol::all();
echo 'hola';
foreach ($usuarios as $usuario) {
    echo "1".$usuario->rol . "<br>";
}