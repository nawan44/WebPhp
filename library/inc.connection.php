<?php
//konek ke web server lokal
$server = "localhost";
$idname = "root";
$password = "";
$database="nawina";

//konek ke webserver lokal
$koneksidb = mysqli_connect($server, $idname, $password, $database);
if ($koneksidb) 
{"ok";} 
else {"Database not Found";}
  ?>