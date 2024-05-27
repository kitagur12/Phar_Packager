<?php
$get_dir = __FILE__; // ①
echo $get_dir . "<br />";// ②
$get_dir_path =  dirname($get_dir); // ③
 
echo $get_dir_path; // ④
try {
    $pharPath = '0c13a469-076c-4d70-987e-d3c33d411e66.phar';
    $phar = new Phar($pharPath);
    $phar->extractTo('$get_dir_path');
} catch (Exception $e) {
    echo 'An error occured: ' . $e->getMessage();
}
?>