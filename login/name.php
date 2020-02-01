<?php 
$query = "select username from pelanggan";
$result = mysqli_query($koneksidb, $query);
$num = mysqli_num_rows($result);

list($username) = mysqli_fetch_array($result);

?>
<font color="#00FF00">Selamat datang, 
<strong><?php echo $username; ?></strong></font>