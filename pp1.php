<?php

$phar = new Phar('0c13a469-076c-4d70-987e-d3c33d411e66.phar');
$phar->buildFromDirectory('de2a7687-39c8-4ea4-a852-ecdb319ec1fd/');
$phar->compressFiles(Phar::GZ);
$phar->setStub($phar->createDefaultStub('main.php'));