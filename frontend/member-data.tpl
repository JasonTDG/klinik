<!DOCTYPE html>
<!-- 台北數位集團版權所有 -->
<!-- Powered by taipeiads.com -->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]--><html>
  <head>
    {#include file=$__TV|cat:'meta.tpl'#}
  </head>
  <body onLoad="setTimeout('cvv()',1000);">
    <!-- Container -->
    <div id="container">
      <!-- Header -->
      {#include file=$__TV|cat:'top.tpl'#}
      <!-- end Header -->
      <!-- Content -->
      <div id="content">
        <!-- Banner -->
        <div class="page-banner">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>Ubah informasi</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/member-center">Member Center</a></li>
<li><a href="{#$__C#}/member-data">Ubah informasi</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          <section class="page-content-section member-register-form">
  			    <div class="container">
              <h5 class="register-rules-title"><i class="fa fa-pencil-square-o"></i>Silahkan isi pendaftaran anggota informasi</h5>
              <div class="register-section">
                <h6><span>*</span>Bidang yang harus diisi</h6>
                <form class="register-form" id="dataForm">
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span class="blank"></span>Email</div>
                    <div class="register-form-cell input fill-in">{#$mmemail#}<input type="hidden" name="email" value="{#$row.subject.email#}"></div>
                  </div>
                 {#if $row.subject.fbid || $row.subject.googleplusid#}      

                     <input type="hidden" name="password" id="password" class="form-control" placeholder="Masukkan 6 sampai 12 meter pencampuran alfanumerik Kata sandi"  value="{#$row.subject.password#}">

                      <input type="hidden" name="password2" id="Confirm_Password" class="form-control" placeholder="Konfirmasi Kata sandi" value="{#$row.subject.password#}">
                       <input type="hidden" name="gplusandfbpasswordcheck" id="Confirm_Password" class="form-control" placeholder="fbpwdchk" value="on">
                 
                 {#else#}
                 
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Kata sandi</div>
                    <div class="register-form-cell input"><input type="password" name="password" placeholder="Kata sandi (6 ~ 12 yard angka bahasa Inggris, tapi tidak semuanya berbahasa Inggris atau semua gambar)" title="Kata sandi (6 ~ 12 yard angka bahasa Inggris, tapi tidak semuanya berbahasa Inggris atau semua gambar)" value="{#$row.subject.password#}"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Konfirmasi Kata sandi</div>
                    <div class="register-form-cell input"><input type="password" name="password2" placeholder="Konfirmasi Kata sandi" title="Konfirmasi Kata sandi" value="{#$row.subject.password#}"></div>
                  </div>
                     {#/if#}
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Nama</div>
                    <div class="register-form-cell input fill-in-input"><input type="text" name="name" placeholder="Nama" title="Nama" value="{#$row.subject.name#}"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span class="blank"></span>Seks</div>
                    <div class="register-form-cell input">
                      <div class="radio-gender">
                        <input type="radio" id="gender-m" name="sex" value="Laki-laki" {#if $row.subject.sex=="Laki-laki"#}checked{#/if#}>
                        <label for="gender-m" name="gender-m" class="radiolabels" title-"Laki-laki">Laki-laki</label>
                      </div>
                      <div class="radio-gender">
                        <input type="radio" id="gender-f" name="sex" value="Perempuan" {#if $row.subject.sex=="Perempuan"#}checked{#/if#}><label for="gender-f" name="gender-f" class="radiolabels" title="Perempuan">Perempuan</label>
                      </div>
                    </div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span class="blank"></span>Ulang tahun</div>
                    <div class="register-form-cell input fill-in-input"><input type="date" max="{#$maxdate#}" name="birth" id="datepicker" placeholder="Ulang tahun (例：1980/01/01)" title="Ulang tahun (例：1980/01/01)" value="{#$row.subject.birth#}"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Telepon</div>
                    <div class="register-form-cell input fill-in-input"><input type="text" name="mobile" placeholder="Telepon" title="Telepon" maxlength="10" value="{#$row.subject.mobile#}"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span class="blank"></span>Telepon</div>
                    <div class="register-form-cell input fill-in-input">
                    <!--    <input type="text" name="phonecode" placeholder="Kode area" title="Kode area" id="telarea" maxlength="3" value="{#$row.subject.phonecode#}">  -->
                        <input type="text" name="tel" placeholder="Telepon" title="Telepon" id="tel" maxlength="10" value="{#$row.subject.tel#}"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Alamat</div>
                    <div class="register-form-cell input selectbox city address-zone fill-in-input">
                     
                      <input type="text" name="address" placeholder="Alamat" title="Alamat" value="{#$row.subject.address#}">
                    </div>
                  </div>
                  
                  <div class="register-form-row">
				<div class="register-form-cell title"><span>*</span>Kode verifikasi</div>
				<div class="register-form-cell input">
					<input type="text" name="code" id="verifynumber" placeholder="Masukkan kode verifikasi" title="Masukkan kode verifikasi">
					<div class="verifynumber-area">
						<div class="verifynumber-img" id="vc"></div>
						<div class="verifynumber-txt"><a href="javascript:void(0)" id="cvc" title="Ubah peta" onClick="cvv()"><i class="fa fa-refresh"></i>Ubah peta</a></div>
					</div>
				</div>
			</div>
                </form>
              </div>
              <div class="mmsg"></div>
              <div class="register-btn">
                <div class="submit-area">
                  <button id="prestep" class="btn btn-sendform btn-back float-l" title="Member Center" onclick="location.href='{#$__C#}/member-center'"><i class="fa fa-arrow-circle-left"></i><span>Member Center</span></button>
                  <button id="prestep" class="btn btn-sendform btn-cancel" title="Batal" onClick="location.href='{#$__C#}/member-center'"><i class="fa fa-times-circle"></i><span>Batal</span></button>
                  <button id="send" type="button" class="btn btn-sendform" title="Konfirmasi dikirim"><i class="fa fa-check-square"></i><span>Konfirmasi dikirim</span></button>
                </div>
              </div>
            </div>
			    </section>
        </article>
        <!-- end Main Content -->
        <!-- Footer -->
        {#include file=$__TV|cat:'foot.tpl'#}
        <!-- end Footer -->
      </div>
      <!-- end Content -->
      <!-- Mobile Nav  -->
      {#include file=$__TV|cat:'top_m.tpl'#}
      <!-- end Mobile Nav  -->
    </div>
    <!-- end container -->
    <p id="back-top"><a href="#top" title="Kembali ke atas"><i class="fa fa-chevron-circle-up"></i></a></p>
  </body>
<!-- Java Script ================================================== -->
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.device.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.viewportchecker.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.animation.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.svgeezy.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.mmenu.min.all.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.owl.carousel.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/init.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/aj-address.js"></script>
<script src="{#$__BR#}/js/form/form.js" type="text/javascript"></script>
<script src="{#$__BR#}/js/blackUI/blackUI.js" type="text/javascript"></script>
<script>
$(function () {
	$('.address-zone').ajaddress({ city: "{#$row.subject.city#}", county: "{#$row.subject.county#}" });
}); 
function cvv(al){
	var date=new Date();
	$('#vc').html('<img src="/web/verfiyNumber.php?c='+date.getSeconds()+'" height="30" align="absmiddle" />');
			  
}

</script>
<script>
jQuery(function( $ ){
$('#send').bind('click', function(event) {
	var options = { 
	        target:        '#state' 
	        ,beforeSubmit:  function()
	        {    
	         $('.mmsg').html('');
			  //alert(123);
	         $.blockUI({ message: 'Pengolahan...'});
             }
	           , success: function (data, status)
	            {
	               if(data.state){
                            alert('Penyimpanan selesai');
			         // $('#dataForm').resetForm();
                         location.href="{#$__C#}/member-data";
				         }
	               else{
			         $('.mmsg').html(data.msg);
				     $.unblockUI();
	               }
					 
			    }
	           , error: function (data, status, e){}
	        
	        ,url:       '{#$__C#}/process/ps/exeEditMember/'   
	        ,type:      'post'      
	        ,dataType:  'json'      

	    }; 
        $('#dataForm').ajaxSubmit(options); 
});

});
</script>
</html>