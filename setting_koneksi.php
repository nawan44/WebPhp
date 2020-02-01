<?php
//konek ke web server lokal
$server = "localhost";
$idname = "nawinahg_nawina";
$password = "t0y0t4";
$database="nawinahg_nawina";

//konek ke webserver lokal
$koneksidb = mysqli_connect($server, $idname, $password, $database);
if ($koneksidb) 
{"ok";} 
else {"Database not Found";}
  ?>