<link href="A/css/percobaan.css" rel="stylesheet" type="text/css" />
<style type="text/css">
b {color:#00F;} h3 {color:#00F;}
@media only screen and (min-width: 300px) and (max-width:750px){ b {color:#00F;}  h3 {color:#00F;} }
</style>
<?php 
include ("library/inc.connection.php");
$tampil=mysqli_query($koneksidb,"select * from produk where id=$_GET[id]");
while($z=mysqli_fetch_array($tampil))
{echo "<div class='s'>
<div class='d'> <img src='$z[file_gambar]'/></div><div class='a'></p>
 <p>Nama produk </p><p>Harga		</p><p>Stok		</p><p>Keterangan  </p>
 <b><h3> $z[kd_produk]  </h3>(kode produk)</b>
 </div><div class='f'></p>
 <p>: $z[nm_produk]</p><p>: $z[harga_jual]</p><p>: $z[stok]</p><p>: $z[keterangan]</p>
<div class='g'> <a href='index2.php?data=ranjang' class='prod_buy'>Beli</a> </div>
</div>
 </div>
 ";}  ?>