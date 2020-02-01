 <?php
//konek ke web server lokal
$server = "localhost";
$idname = "root";
$password = "";
$database="provkabkotkec";

//konek ke webserver lokal
$konek = mysqli_connect($server, $idname, $password, $database);
if ($konek) 
{"ok";} 
else {"Database not Found";}
  ?>