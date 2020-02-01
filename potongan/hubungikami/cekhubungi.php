<style type="text/css">
.cekhubungi {width:100%; margin-top:200px; font-size:16px; height:10px; color:#00F; text-align:center; }
.cekhubungi0 {width:100%; margin-top:200px; font-size:16px; height:10px; color:#F00; text-align:center; }

.cekhubungi1 {width:100%; margin-top:10px; font-size:16px; height:300px; color:#000; text-align:center; }
.cekhubungi2 {width:100%; margin-top:100px; font-size:16px; height:300px; color:#000; text-align:center; }

</style>

<?php
if (isset($_POST['hubungi'])){
	$captcha = $_POST['captcha'];
	if ($captcha == $_SESSION['bilangan']){
		echo "<div class='cekhubungi'>captcha benar...</div>";
		//proses lain yang akan dilakukan
	} else {
		echo "<div class='cekhubungi0'>Captcha salah...>/div>";
	}
}
?>
<?php

if (isset($_POST['hubungi']))
{  
 include "library/inc.connection.php";
 $nama=$_POST['nama'];		
 $email=$_POST['email'];	
 $no_telp=$_POST['no_telp'];
 $pesan=$_POST['pesan'];	
 
if (empty($nama) or empty($email) or empty($no_telp) or empty($pesan))
  { echo"<div class='cekhubungi2'>data tidak valid<br /></div>";  }
  else
{ $filter=mysqli_query($koneksidb,"select * from hubungikami where email='$email'");
	$cek=mysqli_num_rows($filter);//menjumlahkan hasil query
	if ($cek > 0)
	{ echo"<div class='cekhubungi2'>Data sudah ada<br /></div>";	}
    else
{ $input=mysqli_query($koneksidb,"insert into hubungikami value (null,'$nama','$email','$no_telp','$pesan')");
 if ($input > 0)
   echo"<div class='cekhubungi1'>Terima kasih telah menghubungi kami.<br />
   [<a href='index.php'>Kembali ke Beranda</a>]</div>";
   else
   echo"<div class='cekhubungi'>Data tidak valid. <br />
   [<a href='hubungikami.php'>Kembali ke form</a>]</div>"; }
}
}

?>
