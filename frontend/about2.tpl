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
    <!-- Container -->
    <div id="container">
      <!-- Header -->
      {#include file=$__TV|cat:'top.tpl'#}
      <!-- end Header -->
      <!-- Content -->
      <div id="content">
        <!-- Banner -->
        <div class="page-banner" style="background-color: transparent; background: url({#$__R#}/{#$__V#}/images/banner/page-banner-aboutus.jpg) 50% 50% no-repeat; background-size: cover; background-attachment: fixed;">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>{#$actionTitle#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/about">{#$actionTitle#}</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          <section class="page-content-section page-aboutus">
  <div class="container">
      <div class="row">
        <div class="col-md-9 aboutus-slogan">
          <h2>{#$row.subject.subject#}</h2>
          <p>{#$row.subject.text|nl2br#}</p>
        </div>   
     </div>
  </div>
  </section>
          <section class="page-content-section page-aboutus">
            <div class="container">
              <div class="row">
                <div class="col-md-7 aboutus-company-img"><img src="{#$__U#}/{#$row.subject.pic1#}" alt="company-img"></div>
                <div class="col-md-5 aboutus-company-intro">
                  <h4><i class="fa fa-caret-square-o-right"></i>{#$row.subject.subject1#}</h4>
                  <p>{#$row.subject.text1|nl2br#}</p>
                </div>   
              </div>
            </div>
          </section>
          <section class="page-content-section page-aboutus">
            <div class="container">
              <div class="row">
                <div class="col-md-7 aboutus-company-img"><img src="{#$__U#}/{#$row.subject.pic2#}" alt="company-img"></div>
                <div class="col-md-5 aboutus-company-intro">
                  <h4><i class="fa fa-caret-square-o-right"></i>{#$row.subject.subject2#}</h4>
                  <p>{#$row.subject.text2|nl2br#}</p>
                </div>   
              </div>
            </div>
          </section>
          <section class="page-content-section page-aboutus">
            <div class="container">
              <div class="row">
                <div class="col-md-7 aboutus-company-img"><img src="{#$__U#}/{#$row.subject.pic3#}" alt="company-img"></div>
                <div class="col-md-5 aboutus-company-intro">
                  <h4><i class="fa fa-caret-square-o-right"></i>{#$row.subject.subject3#}</h4>
                  <p>{#$row.subject.text3|nl2br#}</p>
                </div>   
              </div>
            </div>
          </section>
          <section class="page-content-section page-aboutus">
            <div class="container">
              <div class="row">
                <div class="col-md-7 aboutus-company-img"><img src="{#$__U#}/{#$row.subject.pic4#}" alt="company-img"></div>
                <div class="col-md-5 aboutus-company-intro">
                  <h4><i class="fa fa-caret-square-o-right"></i>{#$row.subject.subject4#}</h4>
                  <p>{#$row.subject.text4|nl2br#}</p>
                </div>   
              </div>
            </div>
          </section>
          <section class="page-content-section page-aboutus">
            <div class="container">
              <div class="row">
                <div class="col-md-7 aboutus-company-img"><img src="{#$__U#}/{#$row.subject.pic5#}" alt="company-img"></div>
                <div class="col-md-5 aboutus-company-intro">
                  <h4><i class="fa fa-caret-square-o-right"></i>{#$row.subject.subject5#}</h4>
                  <p>{#$row.subject.text5|nl2br#}</p>
                </div>   
              </div>
            </div>
          </section>
          <section class="page-content-section page-aboutus page-aboutus-contact">
            <div class="container">
              <p class="aboutus-contact-info"><span>Ada pertanyaan, mohon tanya langsung!</span></p>
              <a class="aboutus-contact-btn" href="{#$__C#}/contact" title="Hubungi kami"><i class="fa fa-envelope"></i>Hubungi kami</a>
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
<div id="preloader">
  <div id="status">
    <div class="loader-squares"><img src="{#$__R#}/{#$__V#}/images/common/logo-loading.png" /></div>
    <div class="loading-text">Loading ...</div>
  </div>
</div>
  </body>
<!-- Java Script ================================================== -->
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.device.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.viewportchecker.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.animation.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.svgeezy.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.mmenu.min.all.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.owl.carousel.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/init.js"></script>
</html>