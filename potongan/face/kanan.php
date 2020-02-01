<div class="kanan">
<div class="kanan1">
<div class='metode'>Shopping cart</div>
        <div class='cart_details'> <?php 
				if(isset($_SESSION["products"])){
				echo count($_SESSION["products"]); 
				}else{
				echo 0; 
				}
				?> items <br />
          <span class='border_cart'></span> Total: <span class='price'>Rp. 0</span> </div>
        <div class='cart_icon'><a href='../A/index2.php?data=ranjang'><img src='A/images/shoppingcart.png' alt='' width='35' height='35' border='0' /></a></div>
      </div><!-- kanan1 -->

<div class="kanan2">
<div class="metode">Metode Pembayaran</div>
  <p>
<center><img src="A/images/mandiri syariah.jpg" width="70" height="70"></center></br>

No Rekening : 564674765878<br />
Atas Nama	: Rachmat Gunawan<br />
Cabang	: Harapan Indah<p>
<br class="br"><center><img src="A/images/paypal.png" width="70" height="70" class="facebook"></center></br>
</div><!-- kanan2 -->

<div class="kanan3">
<div class="metode">Metode Pengiriman</div>
      <p>
      <center>
      <p><a href="http://www.jne.co.id"><img src="A/images/jne.jpg" width="70" height="70"></a></p>
       <p><a href="http://www.pos.co.id"><img src="A/images/pos.jpg" width="70" height="70"></a></p></center>
</div><!-- kanan3 -->
<div class="kanan4">
<div class="metode">Hubungi Kami</div>
      <center>
      <p><p><a href="https://www.facebook.com"><img src="A/images/facebook-logo.png"></a></p>
       <p><a href="http://www.instagram.com"><img src="A/images/instagram.jpg"></a></p>
       <p><img src="A/images/whatsapp-logo.png" /><font color="#000000" size="+1" face="Palatino Linotype, Book Antiqua, Palatino, serif"><b>085200009xxx</b></font></p>
       <p>SMS 0852xxx</p></center>
</div><!-- kanan4 -->
</div> <!-- Kanan -->