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
<title>Untitled Document</title>
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
<?php include"potongan/face/navmenu.php" ?></div><!--menu-->
<div class="konten">
<div class="kiri">
<?php include"potongan/cari/kiri1.php" ?>
<?php include"potongan/face/kiri2.php" ?>
<?php include"potongan/face/kiri3.php" ?>
</div><!-- Kiri -->
<div class="tengah">
<?php
 if (isset($_GET['data']))
	  {
		if ($_GET['data']=="tentangkami")
		{include"potongan/profil/tentangkami.php";}
		elseif ($_GET['data']=="visimisi")
		{include"potongan/profil/visimisi.php";}

		elseif ($_GET['data']=="goregi")
		{include"registrasi/goregi.php";}
		
		elseif ($_GET['data']=="caridata")
		{include"potongan/cari/caridata.php";}
		
		elseif ($_GET['data']=="batik")
		{include"pr/batik.php";}
		elseif ($_GET['data']=="tenun")
		{include"pr/tenun.php";}
		elseif ($_GET['data']=="pintuaceh")
		{include"pr/pintuaceh.php";}		
		elseif ($_GET['data']=="tapis")
		{include"pr/tapis.php";}
		
				
		elseif ($_GET['data']=="carapemesanan")
		{include"potongan/carapemesanan.php";}
		
		elseif ($_GET['data']=="statuspesanan")
		{include"potongan/cekstatus/statuspesanan.php";}
		
		elseif ($_GET['data']=="cekstatus")
		{include"potongan/cekstatus/cekstatus.php";}
		
		
		
		elseif ($_GET['data']=="regi")
		{include"registrasi/regi.php";}
		
		elseif ($_GET['data']=="ranjang")
		{include"gerak/ranjang.php";}
		
		
		elseif ($_GET['data']=="cek_login")
		{include"login/cek_login.php";}
		
		elseif ($_GET['data']=="logout")
		{include"logout.php";}
		
		elseif ($_GET['data']=="lupa")
		{include"login/lupa.php";}
		
		elseif ($_GET['data']=="cek_lupa")
		{include"login/cek_lupa.php";}
		
		elseif ($_GET['data']=="details")
		{include"pr/details.php";}

		elseif ($_GET['data']=="det")
		{include"pr/det.php";}
		
		elseif ($_GET['data']=="detail")
		{include"pr/detail.php";}
		
		elseif ($_GET['data']=="detail2")
		{include"pr/detail2.php";}
		
		elseif ($_GET['data']=="konfirmasipembayaran")
		{include"potongan/konfirmasipembayaran/konfirmasipembayaran.php";}
		elseif ($_GET['data']=="cek_konfirmasi")
		{include"potongan/konfirmasipembayaran/cek_konfirmasi.php";}
		
		elseif ($_GET['data']=="hubungikami")
		{include"potongan/hubungikami/hubungikami.php";}
		elseif ($_GET['data']=="cekhubungi")
		{include"potongan/hubungikami/cekhubungi.php";}
		
	  }
        ?>

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
