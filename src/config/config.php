<?php

/**
 * Configuracion URL accceso servidor
 * @var string
 */
$GLOBALS['SERVIDOR'] = 'http'.(!empty($_SERVER['HTTPS']) ? 's' : '').'://'.$_SERVER['HTTP_HOST'];

