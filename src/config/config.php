<?php

/**
 * Configuracion URL accceso servidor
 * @var string
 */
$protocol = 'http://';
if ((isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] === 'on' || $_SERVER['HTTPS'] === 1)) ||(isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https')) {
    $protocol = 'https://';
}

$GLOBALS['SERVIDOR'] = $protocol . $_SERVER['HTTP_HOST'];
