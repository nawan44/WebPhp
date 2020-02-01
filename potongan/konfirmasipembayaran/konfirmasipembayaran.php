<link href="../../A/css/percobaan.css" rel="stylesheet" type="text/css" />
<div class="konkon_form">
<div class ="konfirm"><strong>KONFIRMASI PEMBAYARAN</strong></div>
<form action="index2.php?data=cek_konfirmasi" method="post" target="_self">

 					<div class="form_row">
                      <p><label class="konkon"><strong>No Order :</strong></label>  </p>
                      &nbsp;<br />
                      <p>
                        <input type="text" class="konkon_input" name="no_order" />
                      </p>
                      </div>

                    <div class="form_row">
                      <p><label class="konkon"><strong>No Telepon :</strong></label> </p>
                    &nbsp;<br />
                    <p>
                      <input type="text" class="konkon_input" name="no_telepon" />
                    </p>
  						</div>
                    </p>
                     <div class="form_row">
                       <p><label class="konkon"><strong>Nama Pentransfer :</strong></label>
                       </p>
                     
                       
                         <input type="text" class="konkon_input" name="nama_trans" />
                       </p>
    </div>
    </p>
					<div class="form_row">
                      <p><label class="konkon"><strong>Tanggal Transfer :</strong></label></p>
                       &nbsp;<br />
                      <p>
                        <select class="date" name="tanggal">  
                          <option value="1">01</option><option value="2">02</option>
                          <option value="3">03</option><option value="4">04</option>
                          <option value="5">05</option><option value="6">06</option>
                          <option value="7">07</option><option value="8">08</option>
                          <option value="9">09</option><option value="10">10</option>
                          <option value="11">11</option><option value="12">12</option>
                          <option value="13">13</option><option value="14">14</option>
                          <option value="15">15</option><option value="16">16</option>
                          <option value="17">17</option><option value="18">18</option>
                          <option value="19">19</option><option value="20">20</option>
                          <option value="21">21</option><option value="22">22</option>
                          <option value="23">23</option><option value="24">24</option>
                          <option value="25">25</option><option value="26">26</option>
                          <option value="27">27</option><option value="28">28</option>
                          <option value="29">29</option><option value="30">30</option>
                          <option value="31">31</option>
                        </select>
                        <select class="month" name="tanggal">  
                          <option value="1">Januari</option><option value="2">Februari</option>
                          <option value="3">Maret</option><option value="4">April</option>
                          <option value="5">Mei</option><option value="6">Juni</option>
                          <option value="7">Juli</option><option value="8">Agustus</option>
                          <option value="9">September</option><option value="10">October</option>
                          <option value="11">November</option><option value="12">December</option>
                        </select>
                        <select class="tahun" name="tanggal">  
                          <option value="1">2016</option>
                          <option value="2">2017</option>
                          <option value="3">2018</option>
                        </select>
                      </p>
                    </div>
<p>
</p>
</p>                
					<div class="form_row">
                      <p> <label class="konkon"><strong>Bank Tujuan :</strong></label>
                      </p>
                      &nbsp;<br />
                      <p>
                        <select class="bank" name="banktujuan">
                          <option value='0' name="#">-- Transfer --</option>
                          <option value="1" name="banktujuan">BNI</option>
                          <option value="2" name="banktujuan">Mandiri Syariah</option>
                        </select>
                      </p>
    </div>
    </p>                
  <div class="form_row">
    <p><label class="konkon"><strong>Jumlah transfer :</strong></label></p>
    &nbsp;<br />
    <p><input type="text" class="rupiah_input" name="jumlah" />
      Rupiah</p>
  </div>
                  
                    <div class="form_row"> 
                    <label>&nbsp; </label>   <input type="submit" class="masuk" name="kirim" value="KIRIM" id="btnLogin">
                    </div>      
                </form>
                </div>