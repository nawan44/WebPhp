<?php
$sql = mysql_query("select nama_produk from produk where id_produk='$_GET[id]'");
$j   = mysql_fetch_array($sql);

if (ISSET($_GET[id])){
		echo "$j[nama_produk]";
}
else{
		echo "nawina adalah toko online dari kerajinan tangan atau dari Handscraft Indonesia yang sangat beragam.";
}
?>
