<?php
date_default_timezone_set('Asia/Jakarta'); 

// Format hari dalam seminggu
$seminggu = array("Minggu",
				  "Senin",
				  "Selasa",
				  "Rabu",
				  "Kamis",
				  "Jumat",
				  "Sabtu");
$hari = date("w");
$hari_ini = $seminggu[$hari];

// Format waktu
$tgl_sekarang = date("Ymd");
$tgl_skrg     = date("d");
$bln_sekarang = date("m");
$thn_sekarang = date("Y");
$jam_sekarang = date("H:i:s");
?>
