<?php


// helpers/view.php
function view($name, $vars = []) {
    extract($vars); // convierte claves del array en variables locales
    include __DIR__ . '/../views/' . $name . '.php';
}