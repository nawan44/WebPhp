<div class="kiri2">

<div class='login_area'>
<div class="metode">Selamat Datang
</div>
        <div class="loginzone">
        <form class="login"  method="post" action="index2.php?data=cek_login" target="_self">
    <?php 
if (! isset($_SESSION['SES_PELANGGAN'])) {
	//Jika belum login maka form login akan ditampilkan?>    
<div class="silakan">Silahkan masuk terlebih dulu</div>

<br>&nbsp;<br />
<label class="usel">Username</label>
<input type="text" class="user" name="username" />
<p>
  <label class="usel">Password</label>
  <input type="text" class="pass" name="password" />
<br>&nbsp;<br />

  <input type="submit" class="masuk" name="btnLogin" value="LOGIN" id="btnLogin">
  <input type="reset" class="hapus" name="reset" value="RESET" >
  <?php 
}
else {
	//Jika belum login, maka menu pelanggan akan ditamiplkan?>

<?php } ?>           
        </form></div>
      <br>&nbsp;<br />
<div class="belumemiliki">
</p>
<div class="logout">
<a href='logout.php'><center> LOGOUT</center></a> </div>
</br>
  <div class="belum"><label class="usel"> Belum Memiliki Akun ? </label></div>
  
  <div class="daftar"><a href='index2.php?data=regi'><font color="#000000" >DAFTAR</font></a></div></div></p>
<div class="lupa">
  <br />
  <p><a href='index2.php?data=lupa'>Lupa Password</a></p>
</div> </p>
  
</div>

</div> <!-- kiri2 -->
