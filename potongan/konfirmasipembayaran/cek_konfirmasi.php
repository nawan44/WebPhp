<style type="text/css">
.cekonfirmasi {width:100%; margin-top:200px; font-size:16px; height:300px; color:#000; text-align:center; }
</style>
<?php 
include"library/inc.connection.php"

/*
function anti_injection($data){$filter = mysqli_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES)))); return $filter;}
*/
?>
<?php
if(isset($_POST['kirim'])) 
{
$no_order=$_POST['no_order'];
$no_telepon=$_POST['no_telepon'];
$nama_trans=$_POST['nama_trans'];
$tanggal=$_POST['tanggal'];
$banktujuan=$_POST['banktujuan'];
$jumlah=$_POST['jumlah'];

$pesanError = array();
if (trim($no_order)=="") {$pesanError[] = "Data <b>No Order</b> kosong, silahkan isi dengan benar";}
if (trim($no_telepon)=="") {$pesanError[] = "Data <b>No Telepon</b> kosong, silahkan isi dengan benar";}
if (trim($nama_trans)=="") {$pesanError[] = "Data <b>Nama Pentransfer</b> kosong, silahkan isi dengan benar";}
if (trim($tanggal)=="") {$pesanError[] = "Data <b>Tanggal Transfer</b> kosong, silahkan isi dengan benar";}
if (trim($banktujuan)=="") {$pesanError[] = "Data <b>Bank Tujuan</b> kosong, silahkan isi dengan benar";}
if (trim($jumlah)=="") {$pesanError[] = "Data <b>jumlah Transfer</b> kosong, silahkan isi dengan benar";}
   
  else
 { 
   $input=mysqli_query($koneksidb, "insert into konfirmasi value
					   (null,'$no_order','$no_telepon','$nama_trans',$tanggal,'$banktujuan','$jumlah')");
 if ($input > 0)
   echo"<div class='cekonfirmasi'>Terima kasih. Kami akan segera memprosesnya<br />
   [<a href='index.php'>Beranda</a>]</div>";
   else
   echo"<div class='cekonfirmasi'>Data tidak benar. Silahkan ulangi lagi! <br />
   [<a href='potongan/konfirmasi pembayaran.php'>Kembali ke form konfirmasi pembayaran</a>]</div>";	
  }
}

?>