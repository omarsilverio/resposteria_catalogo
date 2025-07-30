<?php

require_once __DIR__ . '/../config/config.php';



/**
 * retorna el url del servidor
 * 
 * @param string $path}
 * @return string
 */
function asset($path) : string {
    $servidor = $GLOBALS['SERVIDOR'] ?? '';
    return $servidor . '/' . ltrim($path, '/');
}


/**
 * retorna el url donde esta alogado los recursos
 * 
 * @param string $path}
 * @return string
 */
function resources($path_resource) : string {
    return asset("src/resources/$path_resource");
}
