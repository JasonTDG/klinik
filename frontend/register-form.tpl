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
    <div id="preloader">
      <div id="status">
        <div class="loader-squares"><img src="{#$__R#}/{#$__V#}/images/common/logo-loading.png" /></div>
        <div class="loading-text">Loading ...</div>
      </div>
    </div>
    <!-- Container -->
    <div id="container">
      <!-- Header -->
      {#include file=$__TV|cat:'top.tpl'#}
      <!-- end Header -->
      <!-- Content -->
      <div id="content">
        <!-- Banner -->
        <div class="page-banner" style="background-color: transparent; background: url({#$__R#}/{#$__V#}/images/banner/page-banner-members.jpg) 50% 50% no-repeat; background-size: cover; background-attachment: fixed;">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>Pendaftaran anggota</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/register">Pendaftaran anggota</a></li>
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
                    <div class="register-form-cell title"><span>*</span>Email</div>
                    <div class="register-form-cell input"><input type="email" name="email" placeholder="Email (LoginNomor rekening)" title="Email (LoginNomor rekening)"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Kata sandi</div>
                    <div class="register-form-cell input"><input type="password" name="password" placeholder="Kata sandi (8 ~ 16 yard angka bahasa Inggris, tapi tidak semuanya berbahasa Inggris atau semua gambar)" title="Kata sandi (6 ~ 12 yard angka bahasa Inggris, tapi tidak semuanya berbahasa Inggris atau semua gambar)"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Konfirmasi Kata sandi</div>
                    <div class="register-form-cell input"><input type="password" name="password2" placeholder="Konfirmasi Kata sandi" title="Konfirmasi Kata sandi"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Nama</div>
                    <div class="register-form-cell input"><input type="text" name="name" placeholder="Nama" title="Nama"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Seks</div>
                    <div class="register-form-cell input">
                      <div class="radio-gender">
                        <input type="radio" id="gender-m" name="sex" value="Laki-laki" checked=""><label for="gender-m" name="gender-m" class="radiolabels" title-"Laki-laki">Laki-laki</label>
                      </div>
                      <div class="radio-gender">
                        <input type="radio" id="gender-f" name="sex" value="Perempuan"><label for="gender-f" name="gender-f" class="radiolabels" title="Perempuan">Perempuan</label>
                      </div>
                    </div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span class="blank"></span>Ulang tahun</div>
                    <div class="register-form-cell input"><input type="date" max="{#$maxdate#}" name="birth" id="datepicker" placeholder="Ulang tahun (例：1980/01/01)" title="Ulang tahun (例：1980/01/01)"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Mobile</div>
                    <div class="register-form-cell input"><input type="text" name="mobile" placeholder="Telepon" title="Mobile" maxlength="10"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span class="blank"></span>Telepon</div>
                    <div class="register-form-cell input"><input type="text" name="tel" placeholder="Telepon" title="Telepon" id="tel" maxlength="10"></div>
                  </div>
                  <div class="register-form-row">
                    <div class="register-form-cell title"><span>*</span>Alamat</div>
                    <div class="register-form-cell input selectbox city address-zone">
                    
                      <input type="text" name="address" placeholder="Alamat" title="Alamat">
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
                <div class="mmsg" style="color:#F00000"></div>
              </div>
              <div class="register-btn">
                <div class="submit-area">
                  <button id="prestep" class="btn btn-sendform btn-cancel" title="Langkah sebelumnya" onClick="location.href='register.html'"><i class="fa fa-arrow-circle-left"></i><span>Langkah sebelumnya</span></button>
                  <button id="send" class="btn btn-sendform" title="Pendaftaran anggota" type="button"><i class="fa fa-paper-plane"></i><span>Pendaftaran anggota</span></button>
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
	$('.address-zone').ajaddress({ city: "Kota Taipei", county: "Kabupaten Nangang" });
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
                             $.unblockUI();
setTimeout(" alert('Pendaftaran anggota')", 350);
setTimeout("location.href=\"{#$__C#}/login\";", 500);	
				         }
	               else{
			         $('.mmsg').html(data.msg);
				     $.unblockUI();
	               }
					 
			    }
	           , error: function (data, status, e){}
	        
	        ,url:       '{#$__C#}/process/ps/exeAddMember/'   
	        ,type:      'post'      
	        ,dataType:  'json'      

	    }; 
        $('#dataForm').ajaxSubmit(options); 
});

});
</script>
</html>