<?php
 error_reporting(0);
  session_start();	
include"library/inc.connection.php"; 
include"library/inc.library.php";
include"library/fungsi_waktu.php";
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php include"nawina_title.php"; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index, follow">
<meta name="description" content="<?php include "meta_deskripsi.php"; ?>">
<meta name="keywords" content="<?php include "metakeywords.php"; ?>">
<meta http-equiv="Copyright" content="Nawina">
<meta name="author" content="Rachmat Gunawan">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" >

<link href="A/css/akoe.css" rel="stylesheet" type="text/css" />

<link href="A/css/styles.css" rel="stylesheet" type="text/css">

<link href="A/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="A/js/jquery-latest.min.js" type="text/javascript"></script>
<script src="A/js/script.js"></script> 
<script src="A/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="A/js/jquery-func.js" type="text/javascript"></script>
</head>

<body>
<div class="main">
<div class="head"><div class="atas"><div class="atase">Wonderfull Indonesia</div>
<div class="languages">
        <div class="lang_text">Languages:</div>
        
        <a href="#" class="lang"><img src="A/images/en.gif" alt="" border="0" /></a> <a href="#" class="lang"><img src="A/images/INDONESIA.png" alt="" border="0" /></a> </div><!-- languages -->
        </div> <!-- atas --> <?php include"potongan/face/header.php" ?>
</div> <!-- head -->
        
        
        
<div class="isi">

<div class="myenu">
<?php include"potongan/face/navmenu.php" ?>
</div><!--menu-->

<div class="konten">

<div class="kiri">
<?php include"potongan/cari/kiri1.php" ?>
<?php include"potongan/face/kiri2.php" ?>
<?php include"potongan/face/kiri3.php" ?>
</div><!-- Kiri -->

<div class="tengah">
<?php include"potongan/face/hm.php" ?>
</div><!-- Tengah -->

<div class="kanan">
<?php include"potongan/face/kanan.php" ?>
</div><!-- kanan -->

</div><!-- konten -->

<div class="footer">Copyright &copy; 2015 by Nawina.com. All Rights Reserved.</div>
</div><!-- isi -->
</div>
</body>
</html>
