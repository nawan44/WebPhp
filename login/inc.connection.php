<?php
//konek ke web server lokal
$server = "localhost";
$username = "root";
$password = "";
$database="nawina";

//konek ke webserver lokal
$koneksidb = mysqli_connect($server, $username, $password, $database);
if ($koneksidb) 
{"ok";} 
else {"Database not Found";}
  ?>