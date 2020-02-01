<link href="A/css/percobaan.css" rel="stylesheet" type="text/css" />
<?php
include "library/inc.connection.php";
$cari=$_POST['cari'];
$tampil=mysqli_query($koneksidb,"SELECT * FROM produk WHERE nm_produk like '%$cari%' or nm_kategori like '%$cari%' or keterangan like '%$cari%' ");
$filter=mysqli_num_rows($tampil);//menghitung hasil query table
if ($filter > 0)
{
 while($z=mysqli_fetch_array($tampil))
{echo"<div class='s'>
<div class='d'> <img src='$z[file_gambar]'/></div><div class='a'></p>
 <p>Nama produk </p><p>Harga		</p><p>Stok		</p><p>Keterangan  </p>
 <b><h3> $z[kd_produk]  </h3>(kode produk)</b>
 </div><div class='f'></p>
 <p>: $z[nm_produk]</p><p>: $z[harga_jual]</p><p>: $z[stok]</p><p>: $z[keterangan]</p>
<div class='g'> <a href='index2.php?data=ranjang' class='prod_buy'>Beli</a> </div>
</div> </div>";}
}
else
{   echo"<h1> Data tidak ditemukan </h1>";
	echo"<meta http-equiv='refresh' content='3;URL=index.php'>";}

?>