
<?php
include"library/inc.connection.php";

if (isset($_POST['kirim'])){
	session_start();

	$captcha = $_POST['captcha'];
	if ($captcha == $_SESSION['bilangan']){
		echo "captcha benar...";
		//proses lain yang akan dilakukan
	} else {
		echo "Captcha salah...";
	}
}
?>
<?php
if (isset($_POST['kirim'])){

$nama=$_POST['nama'];
$email=$_POST['email'];
$username=$_POST['username'];
$password=$_POST['password'];
$jeniskelamin=$_POST['jeniskelamin'];
$tempat=$_POST['tempat'];
$tanggal=$_POST['tanggal'];
$bulan=$_POST['bulan'];
$tahun=$_POST['tahun'];
$alamat=$_POST['alamat'];
$kota=$_POST['kota'];
$provinsi=$_POST['provinsi'];
$negara=$_POST['negara'];
$kodepos=$_POST['kodepos'];
$notelepon=$_POST['notelepon'];


  if (empty($nama) or empty($email) or empty($username) or empty($password) or empty($jeniskelamin) or empty($tempat) or empty($tanggal) or empty($bulan) or empty($tahun) or empty($alamat) or empty($kota) or empty($provinsi) or empty($negara) or empty($kodepos) or empty($notelepon))
	
  { echo"data tidak valid";  } 
   
  else
 { 
   $filter=mysqli_query($koneksidb,"select * from pelanggan where username='$username' or email='$email'");
	$cek=mysqli_num_rows($filter);//menjumlahkan hasil query
	if ($cek > 0)
	{
	 echo"Data sudah ada";
	 	}
    else
{	
   $input=mysqli_query($koneksidb, "insert into pelanggan value(null,'$nama','$email','$username', md5('$password'),'$jeniskelamin','$tempat','$tanggal','$bulan','$tahun','$alamat','$kota','$provinsi','$negara','$kodepos','$notelepon')");
 if ($input > 0)
   echo"Selamat anda telah terdaftar<br />
   [<a href='../../index.php'>Beranda</a>]";
   else
   echo"Proses registrasi gagal. Silahkan ulangi lagi! <br />
   [<a href='../registrasi.php'>Kembali ke form register</a>]";	
  }
}
}
?>