<link href="../A/css/percobaan.css" rel="stylesheet" type="text/css" />
<div class='metode3'>Pintu Aceh</div>
<div class='center_content'>

<?php
include ("library/inc.connection.php");
$tampil=mysqli_query($koneksidb,"select * from produk where produk.kd_kategori=4");

while($z=mysqli_fetch_array($tampil)){
	
echo"      <div class='prod_box'>
        <div class='center_prod_box'>
          <div class='product_title'><a href='index2.php?data=details&id=$z[id]'> $z[nm_produk] </a></div>
          <div class='product_img'><a href='index2.php?data=details&id=$z[id]'> <img src='$z[file_gambar]'/> </a></div>
 <div class='prod_price'><span class='price'> $z[harga_jual] </span></div>
      
        <div class='prod_details_tab'> <a href='index2.php?data=ranjang' class='prod_buy'>Beli</a> <a href='index2.php?data=det&id=$z[id]' class='prod_details'>Details</a> </div>
      </div>

      </div>
   "; }  ?>
	</div>	
