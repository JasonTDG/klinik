<!DOCTYPE html>
<!-- 台北數位集團版權所有 -->
<!-- Powered by taipeiads.com -->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]--><html>
  <head>
   {#include file=$__TV|cat:'meta.tpl'#}
   <script>
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
	 
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      getDataAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('fblogin').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('fblogin').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '398442326912402',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.2' // use version 2.2
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function getDataAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('fblogin').innerHTML =
        'Thanks for logging in, ' + response.email + '!';
		//alert(response.name);
    });
  }
</script>

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
              <h1>Login</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/login">Login</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          <section class="page-content-section member-login">
  			    <div class="container">
			        <div class="login-form col-md-5 col-md-offset-1">
                <h3><span><i class="fa fa-sign-in"></i>Login</span></h3>
                <!--<div id="fblogin"></div>-->
                <form id="dataForm">
                  <input type="text" placeholder="Nomor rekening" title="Nomor rekening" name="email">
                  <input type="password" placeholder="Kata sandi" title="Kata sandi" name="password">
                  <a class="sub-login-btn" href="{#$__C#}/register" title="Daftar"><i class="fa fa-pencil"></i>Daftar</a>
                  <a id="btn-pw" class="sub-login-btn_pw" href="#Password" title="Lupa kata sandi anda"><i class="fa fa-question"></i>Lupa kata sandi anda?</a>
                  <div class="submit-area">
                    <button type="button" class="btn btn-sendform" title="Login" id="send"><i class="fa fa-arrow-circle-right"></i><span>Login</span></button>
                    <br><br>
        
                    <!--  <button id="login-fb" class="btn btn-sendform fb" title="Facebook Nomor rekeningLogin" onClick="location.href='#'"><i class="fa fa-facebook"></i><span>Login</span></button>
                    <button id="login-gp" class="btn btn-sendform gp" title="Google+ Nomor rekeningLogin" onClick="location.href='#'"><i class="fa fa-google-plus"></i><span>Login</span></button>  
                    <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"> -->

                  </div>
                  <div class="mmsg"></div>
                  
                </form>
              </div>
              <div id="Password" class="login-form forgot-password col-md-5 col-md-offset-1">
                <h3><span><i class="fa fa-question-circle"></i>Lupa kata sandi anda</span></h3>
                <form id="dataForm2">
                  <input type="text" placeholder="Email" title="Email" name="email">
                  <input type="text" name="code" id="verifynumber" placeholder="Masukkan kode verifikasi" title="Masukkan kode verifikasi">
                  <div id="vc" class="verifynumber-img"></div>
                  <div class="verifynumber-txt"><a id="cvc" class="sub-login-btn" href="javascript:void(0)" title="Ubah peta" onClick="cvv()"><i class="fa fa-refresh"></i>Ubah peta</a></div>
                  <div class="submit-area"> 
                    <button id="send2" type="button" class="btn btn-sendform" title="Kirim"><i class="fa fa-paper-plane"></i><span>Kirim</span></button>
                  </div>
                  
                  <div class="mmsg2"></div>
                </form>
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
<script src="{#$__BR#}/js/form/form.js" type="text/javascript"></script>
<script src="{#$__BR#}/js/blackUI/blackUI.js" type="text/javascript"></script>
<script>

function cvv(al){
	var date=new Date();
	$('#vc').html('<img src="/web/verfiyNumber.php?c='+date.getSeconds()+'" height="30" align="absmiddle" />');
			  
}

</script>
<script>
  jQuery(document).ready(function(){
    var TopPosition = jQuery('#Password').offset().top;
    jQuery('#btn-pw').click(function(){
      jQuery('html, body').animate({scrollTop:TopPosition}, 'slow');
      return false;
    });
  });
</script>
<script>
jQuery(function( $ ){
$('#send').bind('click', function(event) {
	var options = { 
	        target:        '#state' 
	        ,beforeSubmit:  function()
	        {    
	       //<img src="/web/res/img/ajax-loader.gif"/>
	         $.blockUI({ message: 'Pengolahan...'});
             }
	           , success: function (data, status)
	            {
	               if(data.state){
					   $('.mmsg').html(data.msg);
			            $('#dataForm').resetForm();
                         $.unblockUI();
						 location.href="{#$gourl#}";
				         }
	               else{
			         $('.mmsg').html(data.msg);
				     $.unblockUI();
	               }
					 
			    }
	           , error: function (data, status, e){}
	        
	        ,url:       '{#$__C#}/process/ps/exeMemberLogin/'   
	        ,type:      'post'      
	        ,dataType:  'json'      

	    }; 
        $('#dataForm').ajaxSubmit(options); 
});
$('#send2').bind('click', function(event) {
	var options = { 
	        target:        '#state' 
	        ,beforeSubmit:  function()
	        {    
	       //<img src="/web/res/img/ajax-loader.gif"/>
	         $.blockUI({ message: 'Pengolahan...'});
             }
	           , success: function (data, status)
	            {
	               if(data.state){
					   $('.mmsg2').html(data.msg);
			            $('#dataForm2').resetForm();
                         $.unblockUI();
						// location.href="{#$__C#}/member-center";
				         }
	               else{
			         $('.mmsg2').html(data.msg);
				     $.unblockUI();
	               }
					 
			    }
	           , error: function (data, status, e){}
	        
	        ,url:       '{#$__C#}/process/ps/exeForget/'   
	        ,type:      'post'      
	        ,dataType:  'json'      

	    }; 
        $('#dataForm2').ajaxSubmit(options); 
});
});
</script>
</html>