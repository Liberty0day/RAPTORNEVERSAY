<?php
/**
* Get the filename from a GET input
* Example - http://example.com/?file=index.php
*/
$file = $_GET['file'];

/**
* Unsafely include the file
* Example - index.php
*/
include($file);
?>
