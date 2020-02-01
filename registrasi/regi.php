<link href="A/css/percobaan.css" rel="stylesheet" type="text/css" />

<div class="contact_form">
<form action="index2.php?data=goregi" id="anu" method="post">
      
        <h1>Pendaftaran</h1>
          <p>
            <label for="name">Nama *</label>
            <input type="text" class="kamu" name="nama" />
            <label for="mail">Email *</label>
            <input type="email" class="kamu" name="email">
            <label for="username">Username *</label>
            <input type="text" class="kamu" name="username" />
            <label for="password">Password *</label>
            <input type="password" class="kamu" name="password">
           
            
            <label>Jenis Kelamin</label>
            <input type="radio" id="pria" value="pria" name="jeniskelamin">
            <label for="under_13" class="light">Pria</label>
            <br>
            <input type="radio" id="wanita" value="wanita" name="jeniskelamin">
            <label for="over_13" class="light">Wanita</label>
          </p>
            <label>Tempat Tanggal Lahir  </label>
            <input type="tempat" class="kamu" name="tempat">
            </p>
  
            <select class="date" name="tanggal">  
              <option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option>
              <option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option>
              <option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
              <option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option>
              <option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option>
              <option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option>
              <option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option>
              <option value="29">29</option><option value="30">30</option>
              <option value="31">31</option>
            </select>
            <select class="month" name="bulan">  
              <option value="1">Januari</option><option value="2">Februari</option><option value="3">Maret</option>
              <option value="4">April</option><option value="5">Mei</option><option value="6">Juni</option>
              <option value="7">Juli</option><option value="8">Agustus</option><option value="9">September</option>
              <option value="10">October</option><option value="11">November</option><option value="12">December</option>
            </select>
            <select class="tahun" name="tahun">  
              <option value="1">1931</option><option value="2">1932</option><option value="3">1933</option><option value="4">1934</option>
              <option value="5">1935</option><option value="6">1936</option><option value="7">1937</option><option value="8">1938</option>
              <option value="9">1939</option><option value="10">1940</option><option value="11">1941</option><option value="12">1942</option>
              <option value="13">1943</option><option value="14">1944</option><option value="15">1945</option><option value="16">1946</option>
              <option value="17">1947</option><option value="18">1948</option><option value="19">1949</option><option value="20">1950</option>
              <option value="21">1951</option><option value="22">1952</option><option value="23">1953</option><option value="24">1954</option>
              <option value="25">1955</option><option value="26">1956</option><option value="27">1957</option><option value="28">1958</option>
              <option value="29">1959</option><option value="30">1960</option><option value="31">1961</option><option value="32">1962</option>
              <option value="33">1963</option><option value="34">1964</option><option value="35">1965</option><option value="36">1966</option>
              <option value="37">1967</option><option value="38">1968</option><option value="39">1969</option><option value="40">1970</option>
              <option value="41">1971</option><option value="42">1972</option><option value="43">1973</option><option value="44">1974</option>
              <option value="45">1975</option><option value="46">1976</option><option value="47">1977</option><option value="48">1978</option>
              <option value="49">1979</option><option value="50">1980</option><option value="51">1981</option><option value="52">1982</option>
              <option value="53">1983</option><option value="54">1984</option><option value="55">1985</option><option value="56">1986</option>
              <option value="57">1987</option><option value="58">1988</option><option value="59">1989</option><option value="60">1990</option>
              <option value="61">1991</option><option value="62">1992</option><option value="63">1993</option><option value="64">1994</option>
              <option value="65">1995</option><option value="66">1996</option><option value="67">1997</option><option value="68">1998</option>
              <option value="69">1999</option><option value="70">2000</option><option value="71">2001</option><option value="72">2002</option>
              <option value="73">2003</option><option value="74">2004</option><option value="75">2005</option><option value="76">2006</option>
              <option value="77">2007</option><option value="78">2008</option><option value="79">2009</option><option value="80">2010</option>
            </select>
            
          </p>
            </p>
            <label for="bio"><br />
          Alamat:</label>
            <textarea class="kamu" name="alamat"></textarea>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
var htmlobjek;
$(document).ready(function(){
  //apabila terjadi event onchange terhadap object <select id=propinsi>
  $("#propinsi").change(function(){
    var propinsi = $("#propinsi").val();
    $.ajax({
        url: "ambilkota.php",
        data: "propinsi="+propinsi,
        cache: false,
        success: function(msg){
            //jika data sukses diambil dari server kita tampilkan
            //di <select id=kota>
            $("#kota").html(msg);
        }
    });
  });
  $("#kota").change(function(){
    var kota = $("#kota").val();
    $.ajax({
        url: "ambilkecamatan.php",
        data: "kota="+kota,
        cache: false,
        success: function(msg){
            $("#kec").html(msg);
        }
    });
  });
});

</script>            
<?php
include"inc.connection2.php";

?>

Pilih Provinsi :<br>
<select name="provinsi" id="propinsi" class="kamu">
<option>--Pilih Provinsi--</option>
<?php
//mengambil nama-nama propinsi yang ada di database
$propinsi = mysqli_query($konek, "SELECT * FROM prov ORDER BY nama_prov");
while($p=mysqli_fetch_array($propinsi)){
echo "<option value=\"$p[id_prov]\">$p[nama_prov]</option>\n";
}
?>
</select>
<br>Pilih Kabupaten/Kota :<br>
<select name="kota" id="kota">
<option>--Pilih Kabupaten/Kota--</option>
<?php
//mengambil nama-nama propinsi yang ada di database
$kota = mysqli_query("SELECT * FROM kabkot ORDER BY nama_kabkot");
while($p=mysqli_fetch_array($propinsi)){
echo "<option value=\"$p[id_kabkot]\">$p[nama_kabkot]</option>\n";
}
?>
</select>

<br>Pilih Kecamatan :<br>
<select name="kec" id="kec">
<option>--Pilih Kecamatan--</option>

</select>            
            <label for="negara">Negara:</label>
            <input type="text" class="kamu" name="negara">
            
            <label for="negara">Kode Pos:</label>
            <input type="text" class="kamu" name="kodepos">
            
            <label for="no_telepon">No Telepon:</label>
            <input type="text" class="kamu" name="notelepon">
            <br /><br /><br />
            
            <label for="negara">Masukkan bilangan yang tampil pada gambar dibawah ini:</label> <br />
            <img src="captcha.php" /><br /><br />
            <input type="text"  name="captcha"><br /><br />
            
          </p>
        <button class="submit" name="kirim" type="submit" id=name="kirim">Sign Up</button>
      </form>
      </div>