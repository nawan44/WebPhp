<style type="text/css"> 
.statusi{width:750px; height:300px; margin-top:100px; margin-bottom:50px; border-radius:2px; text-align:center; color:#000;}
.stat{width:300px; height:30px; color:#00F; font-size:24px; left:0; right:0; margin:auto;}
.cekstatus{color:#000; font-size:11px; background-color:#fff;}
</style>

<?php include "library/inc.connection.php" ?>
<?php
if (isset($_POST['log']))
{ 
$status=mysqli_query($koneksidb, "select * from pemesanan");
if($a=mysqli_fetch_array($status))
{ echo "<div class='statusi'> <div class='stat'><b>STATUS PESANAN</b></p></div>
<p></p>
<table class='cekstatus' width='740' border='1'>
  <tr>  
  		<td class='no' width='60'>No Order</td>
    	<td class='no' width='115'>Nama</td>
    	<td class='no' width='210'>Alamat </td>
    	<td class='no' width='55'>Kota </td>
    	<td class='no' width='95'>No Telepon</td>
    	<td class='no' width='55'>Status Bayar</td>
    	<td class='no' width='50'>Kurir</td>
    	<td class='no' width='90'>Status Kirim</td> 
		</tr>
  <tr>  
  		<td class='o'> $a[no_order] </td>
   	 	<td class='o'> $a[nm_penerima] </td>
    	<td class='o'> $a[alamat] </td>
    	<td class='o'> $a[kota] </td>
    	<td class='o'> $a[no_telepon] </td>
    	<td class='o'> $a[status_byr] </td>
    	<td class='o'> $a[kurir] </td>
    	<td class='o'> $a[status_kirim] </td> 
		</tr>
</table>
</div>"; 
} else { 
echo "<div class='status'>No order salah</div>"; 
}
}
?>