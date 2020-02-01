
<?php
if(isset($_POST['btnLogin'])) 
{
include"library/inc.connection.php";

$username =$_POST['username'];
$password =$_POST['password'];
$pesanError = array();
if (trim($username)=="") {$pesanError[] = "Data <b>Username</b> kosong, silahkan isi dengan benar";}
if (trim($password)=="") {$pesanError[] = "Data <b>Password</b> kosong, silahkan isi dengan benar";}
//Skrip validasi user dan password dengan data di database

$loginSql = "SELECT * FROM pelanggan WHERE username='$username' AND password=MD5('$password')";
$loginQry = mysqli_query($koneksidb, $loginSql) or die ("Gagal query password".mysqli_error());
$loginQty = mysqli_num_rows($loginQry);
if ($loginQty < 1) {$pesanError[] = "Data <b>Username dan Password</b> yang Anda masukkan belum benar";}

if (count($pesanError)>=1)
{echo "<div align='left'>"; echo "&nbsp; <b> LOGIN ANDA SALAH .............</b> <br><br>";
echo "<img src='images/attention.png'> <br><hr>"; $noPesan=0;
foreach ($pesanError as $index=>$pesan_tampil){ $noPesan++; echo"&nbsp; $noPesan. $pesan_tampil<br>";}
echo "<br>";}

else {
if ($loginQty >=1) {
session_start();
//baca data dari query Login
$loginData = mysqli_fetch_array($loginQry);
//membuat session 
$_SESSION['SES_PELANGGAN'] = $loginData['kd_pelanggan'];
$_SESSION['SES_USERNAME'] = $loginData['username'];
// Baca Data kode pelanggan yang login
$KodePelanggan = $loginData['kd_pelanggan'];
//kosongkan tabel tmp yang datanya ,milik pelanggan
$hapusSql = "DELETE FROM tmp_keranjang WHERE kd_pelanggan='$KodePelanggan'";
mysqli_query($koneksidb, $hapusSql) or die ("Gagal query hapus".mysqli_error());

?>


Selamat datang, <strong><?php echo $username; ?></strong>
<?php 
}echo "<meta http-equiv='refresh' content='0; url=login/index.php'>";

}
exit;
}
?>