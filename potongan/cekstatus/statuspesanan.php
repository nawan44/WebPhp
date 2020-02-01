<style type="text/css">
.pesanan {width:600px; height:300px; padding-top:70px; margin:0; left:0px; right:0px; top:0px; bottom:0px;}
input.go {width:60px; height:30px; background-color:#09F; border-radius:3px; color:#0F0; font-size:14px;}
h4 {color:#06F;}
td.no {background:#06F; text-align:center; font-size:10px;}
td.o {background:#FFF; color:#000; text-align:center; font-size:9px;}
@media only screen and (min-width: 300px) and (max-width:750px){
.pesanan {width:100%; height:300px; padding-top:70px; clear:both; margin:0; left:0px; right:0px; top:0px; bottom:0px;}

}
</style>

<div class="pesanan">
<center>
<form action='index2.php?data=cekstatus' method="post" >
<label><h4>Masukkan No Order</h4></label>
<input type="text" name="cari" required="required"
placeholder="No Order" /> 

</p>
<input class="go" type="submit" name="log" value="CHECK" />
</form>
</center>
</div>