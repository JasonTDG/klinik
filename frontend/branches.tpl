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
  <body>
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
        <div class="page-banner" style="background-color: transparent; background: url({#$__R#}/{#$__V#}/images/banner/page-banner-branches.jpg) 50% 50% no-repeat; background-size: cover; background-attachment: fixed;">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>{#$actionTitle#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/branches">{#$actionTitle#}</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
        	<section class="page-content-section page-branches">
  			    <div class="container">
			        <div class="row">
                <div class="col-md-9 aboutus-slogan">
                  <h2>Temukan basis layanan kami</h2>
                  <p>Didedikasikan untuk layanan pelanggan di seluruh Taiwan</p>
                </div>   
              </div>
  			    </div>
            <div class="container">
              <div class="row">
                <div class="branches-list">
                {#foreach item=b from=$rows#}
                  <div class="branches-item">
                    <div class="col-sm-7 branches-item-text">
                      <h5 class="branches-name">{#$b.subject.subject#}</h5>
                      <ul class="branches-info">
                      {#if $b.subject.address#}
                        <li><span class="info-title"><i class="fa fa-map-marker" title="Alamat"></i>Alamat: </span><span class="info-details"><a href="{#$b.subject.addresslink#}" target="_blank">{#$b.subject.address#}</a></span></li>
                      {#/if#} 
                      {#if $b.subject.tel#} 
                        <li><span class="info-title"><i class="fa fa-phone" title="Telepon"></i>Telepon: </span><span class="info-details"><a href="tel:{#$b.subject.tel#}">{#$b.subject.tel#}</a></span></li>
                        {#/if#} 
                      {#if $b.subject.fax#} 
                        <li><span class="info-title"><i class="fa fa-fax" title="Faks"></i>Faks: </span><span class="info-details"><a href="tel:{#$b.subject.fax#}">{#$b.subject.fax#}</a></span></li>
                        {#/if#} 
                      {#if $b.subject.mobile#} 
                        <li><span class="info-title"><i class="fa fa-mobile" title="Telepon"></i>Telepon: </span><span class="info-details"><a href="tel:{#$b.subject.mobile#}">{#$b.subject.mobile#}</a></span></li>
                        {#/if#} 
                      {#if $b.subject.email#} 
                        <li><span class="info-title"><i class="fa fa-envelope" title="Email"></i>E-mail：</span><span class="info-details"><a href="mailto:{#$b.subject.email#}" target="_blank">{#$b.subject.email#}</a></span></li>
                        {#/if#} 
                      {#if $b.content.time#} 
                        <li><span class="info-title"><i class="fa fa-clock-o" title="Jam kerja"></i>Jam kerja: </span><span class="info-details">{#$b.content.time|nl2br#}</span></li>
                        {#/if#} 
                      {#if $b.content.traffic#} 
                        <li><span class="info-title"><i class="fa fa-subway" title="Mode lalu lintas"></i>Mode lalu lintas: </span><span class="info-details">{#$b.content.traffic|nl2br#}</span></li>
                        {#/if#} 
                      {#if $b.content.parking#} 
                        <li><span class="info-title"><i class="fa fa-car"></i>Informasi parkir: </span><span class="info-details">{#$b.content.parking|nl2br#}</span></li>
                        {#/if#} 
                      {#if $b.content.note#} 
                      <li><span class="info-title"><i class="fa fa-car"></i>Keterangan: </span><span class="info-details">{#$b.content.note|nl2br#}</span></li>
                        {#/if#}
                      </ul>
                    </div>
                    <div class="col-sm-5 branches-item-map">
                      {#$b.content.map#}
                    </div>
                  </div>
                {#/foreach#}  
                  <nav class="news-pagination">
				      <ul class="pagination">
				        {#$links3#}
				     </ul>
				   </nav>
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
</html>