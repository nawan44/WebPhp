<form action="index2.php" method="post">
      
        <h1>Pendaftaran</h1>
        
        <fieldset>
          
          <label for="name">Nama:</label>
          <input type="text" id="name" name="user_name">
          
          <label for="mail">Email:</label>
          <input type="email" id="mail" name="user_email">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="user_password">
          
          <label>Jenis Kelamin</label>
          <input type="radio" id="under_13" value="under_13" name="user_age"><label for="under_13" class="light">Pria</label><br>
          <input type="radio" id="over_13" value="over_13" name="user_age"><label for="over_13" class="light">Wanita</label>
           <p>
                    <label>Birthdate 
                    </label>
                    <select class="date">
                        <option value="1">01
                        </option>
                        <option value="2">02
                        </option>
                        <option value="3">03
                        </option>
                        <option value="4">04
                        </option>
                        <option value="5">05
                        </option>
                        <option value="6">06
                        </option>
                        <option value="7">07
                        </option>
                        <option value="8">08
                        </option>
                        <option value="9">09
                        </option>
                        <option value="10">10
                        </option>
                        <option value="11">11
                        </option>
                        <option value="12">12
                        </option>
                        <option value="13">13
                        </option>
                        <option value="14">14
                        </option>
                        <option value="15">15
                        </option>
                        <option value="16">16
                        </option>
                        <option value="17">17
                        </option>
                        <option value="18">18
                        </option>
                        <option value="19">19
                        </option>
                        <option value="20">20
                        </option>
                        <option value="21">21
                        </option>
                        <option value="22">22
                        </option>
                        <option value="23">23
                        </option>
                        <option value="24">24
                        </option>
                        <option value="25">25
                        </option>
                        <option value="26">26
                        </option>
                        <option value="27">27
                        </option>
                        <option value="28">28
                        </option>
                        <option value="29">29
                        </option>
                        <option value="30">30
                        </option>
                        <option value="31">31
                        </option>
                    </select>
                    <select class="month">
                        <option value="1">January
                        </option>
                        <option value="2">February
                        </option>
                        <option value="3">March
                        </option>
                        <option value="4">April
                        </option>
                        <option value="5">May
                        </option>
                        <option value="6">June
                        </option>
                        <option value="7">July
                        </option>
                        <option value="8">August
                        </option>
                        <option value="9">September
                        </option>
                        <option value="10">October
                        </option>
                        <option value="11">November
                        </option>
                        <option value="12">December
                        </option>
                    </select>
                    <input id="year" type="text" size="4" maxlength="4"/>e.g 1976
                </p>
        
          <legend>Alamat</legend>
          <label for="bio">Jalan:</label>
          <textarea id="bio" name="user_bio"></textarea>
          <label for="bio">Kota</label>
          <textarea id="bio" name="user_bio"></textarea>
          <label for="bio">Provinsi:</label>
          <textarea id="bio" name="user_bio"></textarea>
           <label for="bio">Negara:</label>
          <textarea id="bio" name="user_bio"></textarea>
           <label for="bio">No Telepon / Hp:</label>
          <textarea id="bio" name="user_bio"></textarea>
        </fieldset>
        
        <button type="submit">Sign Up</button>
      </form>