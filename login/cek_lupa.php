<style type="text/css">
.ceklupa{width:100%; margin-top:50px; margin-bottom:50px; text-align:center; height:300px; color:#000;}
</style>
<?php include "library/inc.connection.php" ?>
<?php 
if (isset($_POST['cr']))
{  
$tampil=mysqli_query($koneksidb,"select * from pelanggan");
if($z=mysqli_fetch_array($tampil))
 { echo"<div class='ceklupa'> 
 <h3>Password Anda adalah : $z[password] <br \> </h3> </div>";
 }else{  
   	echo "<center><div class='ceklupa'>Email yang anda masukkan belum pernah terdaftar!<br/> 
	Silahkan hubungi admin untuk informasi lebih lanjut!<br/>
	[<a href='index2.php?data=hubungikami'>Hubungi Kami</a>]<div class='ceklupa'></center>";
}
}
?>