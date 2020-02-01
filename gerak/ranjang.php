<?php
include "inc.session.php";
include "library/inc.connection.php";
include "library/inc.library.php";
?>
<?php
$KodePelanggan =$_SESSION['SES_PELANGGAN'];
# MEMERIKSA DATA DALAM KERANJANG
$cekSql = "SELECT * from tmp_keranjang WHERE kd_pelanggan='$KodePelanggan'";
$cekQry = mysqli_query($cekSql, $koneksidb) or die (mysqli_error());
$cekQty = mysqli_num_rows($cekQry);
if($cekQty < 1) {
				 echo "<br><br>";
				 echo "<center>";
				 echo "<b> KERANJANG BELANJA KOSONG </b>";
				 echo "<center>";
				 //Jika keranjang kosong maka halaman refresh ke data barang
				 echo "<metta http-equiv='refresh' content='2; url=?page=Barang'>";
				 exit;
}
?>


<?php
	//Menampilkan daftar Barang yang sudah dipilih (masuk ke keranjang Belanja)
	$mysqli = "SELECT barang.nm_barang, barang.file_gambar, kategori.nm_kategori, tmp_keranjang.*
				FROM tmp_keranjang
				LEFT JOIN barang ON tmp_keranjang.kd_barang=barang.kd_barang
				LEFT JOIN kategori ON barang.kd_kategori=kategori.kd_kategori
				WHERE tmp_keranjang.kd_pelanggan='$KodePelanggan'
				ORDER BY tmp_keranjang.id";
				$myQry = mysqli_query($mysqli, $koneksidb) or die ("Gagal SQL".mysqli_error());
				$total = 0;
				$grandTotal = 0;
				$no = 0;
				while ($myData = mysqli_fetch_array($myQry)) {
					$no++;
					$total = $myData['harga'] * $myData['jumlah'];
					$grandTotal = $grandTotal + $total;
					
					//menampilkan gambar utama
					if ($myData['file_gambar']=="") {
						$fileGambar = "imgages/noimage.jpg";
					}
					else {
					$fileGambar = $myData['file_gambar'];
					}
					#Kode Barang
					$Kode = $myData['kd_barang'];
	?>
<style type="text/css">
form.form1 {background:#FFF; color:#000; width:700px; height:auto;}
border {color:#000;}
td.ranjang{background:#06F;}
</style>
<form class="form1" name="form1" method="post" action="">
  <table width="600" border="3">
    <tr>
      <td colspan="6"><center>KERANJANG BELANJA</center></td>
    </tr>
    <tr>
      <td class="ranjang" width="101"><strong>Gambar</strong></td>
      <td class="ranjang" width="189"><strong>Nama Barang</strong></td>
      <td class="ranjang" width="88"><strong>Harga (Rp)</strong></td>
      <td class="ranjang" width="54"><strong>Jumlah</strong></td>
      <td class="ranjang" width="66"><strong>Total</strong></td>
      <td class="ranjang" width="62"><strong>Tool</strong></td>
    </tr>
    
    <tr>
      <td rowspan="3"><img src="images/<?php echo $fileGambar; ?>" width="70" border="1" /></td>
      <td><a href="?data=Barang-Lihat&Kode=<?php echo $Kode; ?>" target="_blank"><strong><?php echo $myData['nm_barang']; ?></strong></a> </td>
      <td>Rp. <?php echo format_angka($mydata['harga']); ?> </td>
      <td>
        <label>
          <input name="txtJum[]" type="text" id="txtJum[]" value="<?php echo $myData['jumlah']; ?>" size="4" maxlength="2" />
          <input name="txtKodeH[]" type="hidden" id="txtKodeH[]" value="<?php echo $myData['kd_barang']; ?>" />
        </label>
      </td>
      <td>Rp.<?php echo format_angka($total); ?></a></td>
      <td><a href="?open=Keranjang-Belanja&aksi=Hapus&idHapus=<?php echo $myData['id'];?>">Delete</a></td>
    </tr>
    <tr>
      <td>Kategori : <?php echo $myData['nm_kategori']; ?></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
     <?php } ?>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="3" align="right"><strong>GRAND TOTAL : </strong></td>
      <td align="right" bgcolor="#000000"><strong><?php echo "Rp. ".format_angka($grandTotal); ?> </strong></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="button2" id="button2" value="Ubah Data" />
      </label></td>
    </tr>
    <tr>
      <td colspan="6">
      <center>
        <label>
          <a href="?open=Transaksi-Proses">
          <input type="submit" name="button" id="button" value="Lanjut" />
          </a></label>
      </center></td>
    </tr>
  </table>
</form>