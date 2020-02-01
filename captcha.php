<?php
session_start();
$bilangan = rand(1000000, 9999999);

$_SESSION['bilangan'] = $bilangan;

$gambar = imagecreatetruecolor(85,35);
$background = imagecolorallocate($gambar, 99, 99, 99);
$foreground = imagecolorallocate($gambar, 255, 255, 255);
imagefill($gambar,0,0,$background);
imagestring($gambar,10,10,10,$bilangan,$foreground);
header("Cache-control: no-cache, must-revalidate");
header("Content-type: image/png");
imagepng($gambar);
imagedestroy($gambar);
?>
