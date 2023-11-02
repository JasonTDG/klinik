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
              <h1>{#$actionTitle#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/contact">{#$actionTitle#}</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
        	<section class="page-content-section contactus">
  			    <div class="container">
			        <div class="section-title-group">
                <h1><span><i class="fa fa-comments-o"></i>Hubungi kami</span></span></h1>
                <p>Jika Anda memiliki pertanyaan yang berkaitan dengan produk, Anda dapat menghubungi kami dengan mengisi formulir di bawah ini <br /> Setelah kami menerima pesan Anda, kami akan membalas pertanyaan Anda sesegera mungkin.</p>
              </div>
  			    </div>
  			  </section>
          <section class="page-content-section contactus contactus-form">
            <div class="container">
              <form id="contact-form" class="col-md-8" action="{#$__C#}/process/ps/exeSendContactUs/">
                <div class="text-fields">
                {#foreach item=c from=$rows#}
                  <div class="float-input">
                    <label>
                         
                    {#if $c.subject.type=="text"#}
                    {#if $c.subject.name=="tel" or $c.subject.name=="mobile"#}
                    <input type="tel" name="{#$c.subject.name#}" placeholder="{#$c.subject.subject#}{#if $c.subject.required=="on"#}(Dibutuhkan){#/if#}">
                    {#else#}
                    <input type="{#$c.subject.type#}" name="{#$c.subject.name#}" placeholder="{#$c.subject.subject#}{#if $c.subject.required=="on"#}(Dibutuhkan){#/if#}">
                    {#/if#}
                    {#else if $c.subject.type=="textarea"#}
                    <textarea name="{#$c.subject.name#}" placeholder="{#$c.subject.subject#}{#if $c.subject.required=="on"#}(Dibutuhkan){#/if#}"></textarea>
                    {#/if#}
                        <span><i class="{#$c.subject.icon#}" title="{#$c.subject.subject#}"></i></span>
                    </label>
                  </div>
                 {#/foreach#} 
                  <div class="float-input">
                    <label>
                      <input type="text" name="code" id="verifynumber" placeholder="Nomor identitas">
                      <span><i class="fa fa-font" title="Nomor identitas"></i></span>
                    </label>
                    <div class="verifynumber-img" id="vc"></div>
                    <div class="verifynumber-txt"><input type="button" value="Ubah peta" id="cvc" class="changenumber" title="Ubah peta" onClick="cvv()"></div>
                  </div>
                  <div class="mmsg"></div>
                </div>
                <div class="submit-area"> 
                  <button type="button" id="send" class="btn-sendform" title="Kirimkan formulirnya"><i class="fa fa-paper-plane"></i><span>Kirimkan formulirnya</span></button>
                  
                </div>
              </form>
            </div>
          </section>
          <section class="page-content-section contactus">
            <div class="container">
              <div class="section-title-group">
                <h1><span><i class="fa fa-globe"></i>Informasi kontak</span></span></h1>
                <p>Anda bisa menghubungi cara lain di bawah ini</p>
              </div>
            </div>
          </section>
          <section class="page-content-section contactus contact-info">
            <div class="container">
              <div class="contact-info-datalist col-md-5">
                <ul class="data-links">
                {#if $company.subject.address#}
                  <li><span class="info-title"><i class="fa fa-map-marker" title="Alamat"></i>Alamat：</span><span class="info-details"><a href="{#$company.subject.maplink#}" target="_blank">{#$company.subject.address#}</a></span></li>
                {#/if#}  
                {#if $company.subject.phone#}
                  <li><span class="info-title"><i class="fa fa-phone" title="Telepon"></i>Telepon：</span><span class="info-details"><a href="tel:{#$company.subject.phone#}">{#$company.subject.phone#}</a></span></li>
                 {#/if#}  
                {#if $company.subject.fax#} 
                  <li><span class="info-title"><i class="fa fa-fax" title="Faks"></i>Faks：</span><span class="info-details"><a href="tel:{#$company.subject.fax#}">{#$company.subject.fax#}</a></span></li>
                 {#/if#}  
                {#if $company.subject.mobile#} 
                  <li><span class="info-title"><i class="fa fa-mobile" title="Telepon"></i>Telepon：</span><span class="info-details"><a href="tel:{#$company.subject.mobile#}">{#$company.subject.mobile#}</a></span></li>
                 {#/if#}  
                {#if $company.subject.email#} 
                  <li><span class="info-title"><i class="fa fa-envelope" title="Email"></i>E-mail：</span><span class="info-details"><a href="mailto:{#$company.subject.email#}" target="_blank">{#$company.subject.email#}</a></span></li>
                {#/if#}    
                </ul>
                <ul class="social-links">
                  {#if $company.subject.fb#}
                    <li><a href="{#$company.subject.fb#}" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                  {#/if#}  
                  {#if $company.subject.googleplus#}  
                    <li><a href="{#$company.subject.googleplus#}" target="_blank" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
                  {#/if#}     
                  {#if $company.subject.youtube#}
                    <li><a href="{#$company.subject.youtube#}" target="_blank" title="YouTube"><i class="fa fa-youtube-play"></i></a></li>
                    {#/if#}  
                  {#if $company.subject.twitter#}  
                    <li><a href="{#$company.subject.twitter#}" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                  {#/if#} 
                   {#if $company.subject.flickr#}    
                    <li><a href="{#$company.subject.flickr#}" target="_blank" title="Flickr"><i class="fa fa-flickr"></i></a></li>
                     {#/if#} 
                  </ul>
              </div>
              <div class="contact-info-map col-md-7">
                {#$company.subject.map#}
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
<script src="/web/res/lib_b/js/form/form.js" type="text/javascript"></script>
<script src="/web/res/lib_b/js/blackUI/blackUI.js" type="text/javascript"></script>
<script>

function cvv(al){
	var date=new Date();
	$('#vc').html('<img src="/web/verfiyNumber.php?c='+date.getSeconds()+'" height="50" align="absmiddle" />');
			  
}

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
			            $('#contact-form').resetForm();
                         $.unblockUI();
                           setTimeout("alert('Kirim selesai')", 350);
                       setTimeout("window.location.reload();", 500);	
				         }
	               else{
			         $('.mmsg').html(data.msg);
				     $.unblockUI();
	               }
					 
			    }
	           , error: function (data, status, e){
                                       $.unblockUI();
						 window.location.reload();
                    }
	        
	        ,url:       '{#$__C#}/process/ps/exeSendContactUs/'   
	        ,type:      'post'      
	        ,dataType:  'json'      

	    }; 
        $('#contact-form').ajaxSubmit(options); 
});

});
</script>
</html>