<?php

require __DIR__ . '/vendor/autoload.php';

use Heitor\CursoSON\Hello;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

// create a log channel
$log = new Logger('name');
$log->pushHandler(new StreamHandler('app.log', Logger::WARNING));

// add records to the log
$log->warning((new Hello)->say('Heitor'));